package com.roncoo.education.common.pay.util;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 支付宝支付配置
 *
 * @author LYQ
 */
@Data
@Accessors(chain = true)
public class AliPayConfig implements Serializable {

    private static final long serialVersionUID = 5134756139632063346L;

    /**
     * 应用ID（服务商模式时：为服务商配置）
     */
    private String aliPayAppId = "9021000129695950";

    /**
     * 应用私钥（服务商模式时：为服务商配置）
     */
    private String aliPayAppPrivateKey = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCZpMsUESmaJOc0pDI3s8zRhbz1dtq3skUohZglDHj8e6TC600MO438NaLBETWHxFEFbb9uRIbRruAUz+ddT7fBYNrx06DMK41VT/nXzDjnGn/sym2Cintsjyn4Ms5bT/KTK2ISBoXXZ5T/ClJseqQh/1q+BlCMirusXdvMg4fhP33DQStouu5u4wVu960phuKJjS1WSISvuc8txYEGrcAupX5PuJYYrYr5H1iTwEEwMmsiT//jfc03Jk7iCC/435LVP9yJEH5ngXBlv7OL4InYytzvDBHoJrUo+Xfa5KyMz/YM+Iik01yvRVOUogsnE6P3ygRpIZyNBxJic9Vl1XmZAgMBAAECggEAJ4KGKonjTd1Ri2rx8vsMn5Cpr+G5iuWP/USlhFl5v0u4aduCe7PQ5luQl99qCZjFUQUQ5jU/CirTOubf01INqe/TPb6zKe3FMXwYfpLoyx04alb/5ELiTF9gZpACGt8rPQc59/Kvdl4Ppaos2fKLxKZa2mTbT9jZPBEC1cu5JIX8BLJbYEcCEsvDGF0JHG5OnOF6SXrFgxSZ6Zb9Dcul/ynaGkrJf3+CWpCtejjGcq+oJsl+Ov/Df4Rf2ugBwJkxjSy7xOE1Csdh5fjychxCIUBP4UmGIEN+YhJ8lmOTERDA98+SrtdCvLKeYpzYhDMhCHRm6GAYdVL/wCs6TJklAQKBgQD0Mk1RuY0CN8QiOR7X5eLlC+50+WJ4qdLOAAnLYRnmpA9IkqWk6FvOOsx8XlzUxIfR85gRmtYCE64Pd/gkQFFz0GsBBdduUHHlo4GwhubNp+7OKGNks91vw30KErMe2nbA5J5lAChEBbh1qet/IXucZLtaI7keGDSCOiUtHN4+4QKBgQChEfzEDx1cL2BMTyrC+704bPxCOsPx9X7I8RST1jSvvaiOO/1UaBj1ardrIml5ZrKXQwSYaAIPqDvYjrAzcwALkeIS4vtsHMQJXQwyZY8kW3n86x/WU8f+LSHqbzjmDFZ5EHcGADxOPRoqIztxnuIfrCExDpJUik9F91G73igpuQKBgDA8540nTDWN8o6YHgGkBcgdLUOqJ8uSMHRFCapFSiqHagV6AoKq68e3UcGXmlrlX7cXmYiQv4m1fYLMvhXbJrvsBdcz4jSGa5ljTTEj1N/3NnM/AzNXXHzBbyfYPc3wddjw0GE/QLT/NEr5/+0jHhnsxB2wRNcvDOBUwBdDRpvBAoGAVhS34sw1I7xKGd5Bez1wzgQo+PhRGjHalWeKWMwlEjspJwLWi9KqbBahegdFGVWSYpa1kQIc/+MoQL9ZWdW/E2/ew7s9JXVmK57n0tNGIecllc7PEAtsmeHi+1h/ryqu2Dq9cZ6UnDe5kQWNUlbYgJbMklw4Rig436qiquW6zzkCgYBhqwiSUPfr8474b0boQxpHHMKoK+8HYjHoH3pNXfdYhOv441S8u8cb8CcRy/C7aCq1ecgaVdJhpmnBR88ky1dRxFjB7otWA23jwwfAjM14XxOCMTExApCBy/klBUUnhNvkh/856QKA6fUhnxjFVsEFJBbFOUconFQe2yayr1YUUA==";

    /**
     * 支付宝公钥（服务商模式时：为服务商配置）
     */
    private String aliPayPublicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgc4tYtktjuDQXMJcyxQsghOS8l+xamVL3cXR/f37WeeEO8wpvfmd7dcUtfDocSH25cp/gDmBUwSWy0J3HVX8+Ei7TaO1NPO3njLQ13Rgl+P/Rk61Ytpts735Kh0IQwtllyBUCsQjGFL6flRyKRusw21ETTPClPQrCfZAB5rmVRya6K2F7+UHJiEOpKW9IZwOqKMaMLB/evuge8AxYk6pg4bNTm/qJAbfY3ZHehLnuT2h2b08U6soYrddrhsF9qctlOpKEU9HrH8d01b7jsLUygSRus6As4sDGtkfM11G/SMWBKKKXCJbXNMfzD4ZUXfD3XkBpaSnMixiDeNlD55NsQIDAQAB";

    /**
     * 签名类型；目前支持RSA2和RSA，推荐使用RSA2（服务商模式时：为服务商配置）
     */
    private String signType = "RSA2";

    /**
     * 子商户-卖家支付宝用户ID（服务商模式时：必填）
     */
    private String subSellerId = "2088721018056408";
}
