<template>
  <div v-show="isShowMessageBox" class="message-box">
    <div class="mask" @click="cancel" />
    <div class="message-content">
      <h3 class="title">{{ title }}</h3>
      <p class="content">{{ content }}</p>
      <div>
        <!-- eslint-disable-next-line  -->
        <input v-if="isShowInput" ref="input" v-model="inputValue" type="text">
      </div>
      <div class="btn-group">
        <button v-show="isShowCancelBtn" class="btn-default solid_btn" @click="cancel">{{ cancelBtnText }}</button>
        <button v-show="isShowConfimrBtn" class="btn-primary btn-confirm solid_btn" @click="confirm">{{ confirmBtnText }}</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: '提示'
    },
    content: {
      type: String,
      default: '内容'
    },
    isShowInput: {
      type: Boolean,
      default: false
    },
    inputValue: {
      type: String,
      default: ''
    },
    isShowCancelBtn: {
      type: Boolean,
      default: true
    },
    isShowConfimrBtn: {
      type: Boolean,
      default: true
    },
    cancelBtnText: {
      type: String,
      default: '取消'
    },
    confirmBtnText: {
      type: String,
      default: '确定'
    }
  },
  data() {
    return {
      isShowMessageBox: false,
      resolve: '',
      reject: '',
      promise: '' // 保存promise对象
    }
  },
  methods: {
    // 确定,将promise断定为resolve状态
    confirm: function() {
      this.isShowMessageBox = false
      if (this.isShowInput) {
        this.resolve(this.inputValue)
      } else {
        this.resolve('confirm')
      }
      this.remove()
    },
    // 取消,将promise断定为reject状态
    cancel: function() {
      this.isShowMessageBox = false
      this.reject('cancel')
      this.remove()
    },
    // 弹出messageBox,并创建promise对象
    showMsgBox: function() {
      this.isShowMessageBox = true
      this.promise = new Promise((resolve, reject) => {
        this.resolve = resolve
        this.reject = reject
      })
      // 返回promise对象
      return this.promise
    },
    remove: function() {
      setTimeout(() => {
        this.destroy()
      }, 300)
    },
    destroy: function() {
      this.$destroy()
      document.body.removeChild(this.$el)
    }
  }
}
</script>
<style lang="scss" scoped>
.message-box {
  position: relative;
  top: 50%;
  left: 50%;
  z-index: 10009;
}

.message-content {
  position: fixed;
  top: 50%;
  left: 50%;
  z-index: 999;
  width: 470px;
  margin-left: -235px;
  margin-top: -140px;
  background-color: #fff;
  border-radius: 8px;
  overflow: hidden;

  .title {
    line-height: 45px;
    padding: 0 20px;
    background-color: #f9f9f9;
    font-size: 16px;

    .close {
      float: right;
    }
  }

  .content {
    text-align: center;
    padding: 40px 0;
    font-size: 16px;
  }
}

.btn-group {
  padding: 12px;
  text-align: center;

  .btn-default {
    background-color: #eee;
    border-color: #ddd;
    color: #666;
  }
}
</style>
