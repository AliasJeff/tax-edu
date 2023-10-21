package com.roncoo.education.common.pay.impl.alipay;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.alipay.api.domain.AlipayTradePrecreateModel;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.roncoo.education.common.core.tools.JSUtil;
import com.roncoo.education.common.pay.PayFace;
import com.roncoo.education.common.pay.biz.AliPayCommonBiz;
import com.roncoo.education.common.pay.req.*;
import com.roncoo.education.common.pay.resp.*;
import com.roncoo.education.common.pay.util.AliPayConfig;
import com.roncoo.education.common.pay.util.AlipayUtil;
import com.roncoo.education.common.pay.util.PayModelEnum;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.validation.constraints.NotNull;
import java.text.DecimalFormat;

/**
 * 支付宝扫码支付
 *
 * @author LYQ
 */
@Slf4j
@Component(value = "aliScanPay")
@RequiredArgsConstructor
public class AliScanPayImpl implements PayFace {

    private static final DecimalFormat DF = new DecimalFormat("#.##");

    @NotNull
    private final AliPayCommonBiz aliPayCommonBiz;

    /**
     * 交易下单
     *
     * @param req 下单请求参数
     * @return 响应结果
     */
    @Override
    public TradeOrderResp tradeOrder(TradeOrderReq req) {
        log.info("支付宝扫码支付--交易下单，请求参数：{}", JSUtil.toJsonString(req));
        AliPayConfig aliPayConfig = req.getAliPayConfig();

        // step1：创建交易返回对象
        TradeOrderResp resp = new TradeOrderResp();
        resp.setSuccess(false);

        // step2：处理请求参数
        AlipayTradePrecreateModel model = new AlipayTradePrecreateModel();
        model.setOutTradeNo(req.getTradeSerialNo());
        model.setTotalAmount(DF.format(req.getAmount()));
        model.setSubject(req.getGoodsName());
        model.setBody(req.getAttach());
        if (ObjectUtil.isNotNull(req.getTimeExpire())) {
            model.setTimeExpire(DateUtil.format(req.getTimeExpire(), DatePattern.NORM_DATETIME_PATTERN));
        }
        // 服务商模式
        if (PayModelEnum.SERVICE_PROVIDER.getCode().equals(req.getPayModel())) {
            model.setSellerId(aliPayConfig.getSubSellerId());
        }

        aliPayConfig.setAliPayAppId("9021000129695950");
        aliPayConfig.setAliPayPublicKey("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgc4tYtktjuDQXMJcyxQsghOS8l+xamVL3cXR/f37WeeEO8wpvfmd7dcUtfDocSH25cp/gDmBUwSWy0J3HVX8+Ei7TaO1NPO3njLQ13Rgl+P/Rk61Ytpts735Kh0IQwtllyBUCsQjGFL6flRyKRusw21ETTPClPQrCfZAB5rmVRya6K2F7+UHJiEOpKW9IZwOqKMaMLB/evuge8AxYk6pg4bNTm/qJAbfY3ZHehLnuT2h2b08U6soYrddrhsF9qctlOpKEU9HrH8d01b7jsLUygSRus6As4sDGtkfM11G/SMWBKKKXCJbXNMfzD4ZUXfD3XkBpaSnMixiDeNlD55NsQIDAQAB");
        aliPayConfig.setAliPayAppPrivateKey("MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCZpMsUESmaJOc0pDI3s8zRhbz1dtq3skUohZglDHj8e6TC600MO438NaLBETWHxFEFbb9uRIbRruAUz+ddT7fBYNrx06DMK41VT/nXzDjnGn/sym2Cintsjyn4Ms5bT/KTK2ISBoXXZ5T/ClJseqQh/1q+BlCMirusXdvMg4fhP33DQStouu5u4wVu960phuKJjS1WSISvuc8txYEGrcAupX5PuJYYrYr5H1iTwEEwMmsiT//jfc03Jk7iCC/435LVP9yJEH5ngXBlv7OL4InYytzvDBHoJrUo+Xfa5KyMz/YM+Iik01yvRVOUogsnE6P3ygRpIZyNBxJic9Vl1XmZAgMBAAECggEAJ4KGKonjTd1Ri2rx8vsMn5Cpr+G5iuWP/USlhFl5v0u4aduCe7PQ5luQl99qCZjFUQUQ5jU/CirTOubf01INqe/TPb6zKe3FMXwYfpLoyx04alb/5ELiTF9gZpACGt8rPQc59/Kvdl4Ppaos2fKLxKZa2mTbT9jZPBEC1cu5JIX8BLJbYEcCEsvDGF0JHG5OnOF6SXrFgxSZ6Zb9Dcul/ynaGkrJf3+CWpCtejjGcq+oJsl+Ov/Df4Rf2ugBwJkxjSy7xOE1Csdh5fjychxCIUBP4UmGIEN+YhJ8lmOTERDA98+SrtdCvLKeYpzYhDMhCHRm6GAYdVL/wCs6TJklAQKBgQD0Mk1RuY0CN8QiOR7X5eLlC+50+WJ4qdLOAAnLYRnmpA9IkqWk6FvOOsx8XlzUxIfR85gRmtYCE64Pd/gkQFFz0GsBBdduUHHlo4GwhubNp+7OKGNks91vw30KErMe2nbA5J5lAChEBbh1qet/IXucZLtaI7keGDSCOiUtHN4+4QKBgQChEfzEDx1cL2BMTyrC+704bPxCOsPx9X7I8RST1jSvvaiOO/1UaBj1ardrIml5ZrKXQwSYaAIPqDvYjrAzcwALkeIS4vtsHMQJXQwyZY8kW3n86x/WU8f+LSHqbzjmDFZ5EHcGADxOPRoqIztxnuIfrCExDpJUik9F91G73igpuQKBgDA8540nTDWN8o6YHgGkBcgdLUOqJ8uSMHRFCapFSiqHagV6AoKq68e3UcGXmlrlX7cXmYiQv4m1fYLMvhXbJrvsBdcz4jSGa5ljTTEj1N/3NnM/AzNXXHzBbyfYPc3wddjw0GE/QLT/NEr5/+0jHhnsxB2wRNcvDOBUwBdDRpvBAoGAVhS34sw1I7xKGd5Bez1wzgQo+PhRGjHalWeKWMwlEjspJwLWi9KqbBahegdFGVWSYpa1kQIc/+MoQL9ZWdW/E2/ew7s9JXVmK57n0tNGIecllc7PEAtsmeHi+1h/ryqu2Dq9cZ6UnDe5kQWNUlbYgJbMklw4Rig436qiquW6zzkCgYBhqwiSUPfr8474b0boQxpHHMKoK+8HYjHoH3pNXfdYhOv441S8u8cb8CcRy/C7aCq1ecgaVdJhpmnBR88ky1dRxFjB7otWA23jwwfAjM14XxOCMTExApCBy/klBUUnhNvkh/856QKA6fUhnxjFVsEFJBbFOUconFQe2yayr1YUUA==");

        // step3：发起下单请求
        AlipayTradePrecreateResponse response = AlipayUtil.preCreate(aliPayConfig, model, req.getNotifyUrl());

        // step4：处理响应信息
        if (response == null) {
            resp.setMsg("支付下单失败，响应结果为空！");
            return resp;
        }
        if (!response.isSuccess()) {
            log.info("支付宝扫码支付--交易下单，响应失败：{}", response);
            resp.setMsg(response.getMsg());
            return resp;
        }

        // 下单成功，返回支付信息
        resp.setSuccess(true);
        resp.setPayMessage(response.getQrCode());
        return resp;
    }

    /**
     * 交易查询
     *
     * @param req 交易查询参数
     * @return 响应结果
     */
    @Override
    public TradeQueryResp tradeQuery(TradeQueryReq req) {
        log.info("支付宝扫码支付--交易查询，请求参数：{}", JSUtil.toJsonString(req));
        return aliPayCommonBiz.tradeQuery(req);
    }

    /**
     * 交易关闭
     *
     * @param req 交易关闭
     * @return 响应结果
     */
    @Override
    public Boolean tradeClose(TradeCloseReq req) {
        log.info("支付宝扫码支付--交易关闭，请求参数：{}", JSUtil.toJsonString(req));
        return aliPayCommonBiz.tradeClose(req);
    }

    /**
     * 交易通知
     *
     * @param req 交易通知参数
     * @return 通知处理结果
     */
    @Override
    public TradeNotifyResp tradeNotify(TradeNotifyReq req) {
        log.info("支付宝扫码支付--交易回调通知，请求参数：{}", JSUtil.toJsonString(req));
        return aliPayCommonBiz.tradeNotify(req);
    }

    /**
     * 交易退款
     *
     * @param req 退款请求参数
     * @return 响应结果
     */
    @Override
    public RefundResp refund(RefundReq req) {
        log.info("支付宝扫码支付--申请退款，请求参数：{}", JSUtil.toJsonString(req));
        return aliPayCommonBiz.refund(req);
    }

    /**
     * 交易退款查询
     *
     * @param req 退款查询请求参数
     * @return 响应结果
     */
    @Override
    public RefundQueryResp refundQuery(RefundQueryReq req) {
        log.info("支付宝扫码支付--退款查询，请求参数：{}", JSUtil.toJsonString(req));
        return aliPayCommonBiz.refundQuery(req);
    }
}
