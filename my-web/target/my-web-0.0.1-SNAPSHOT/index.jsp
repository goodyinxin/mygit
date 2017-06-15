<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resource/css/home.css?v=2" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resource/js/jquery-1.7.2.js"></script>
<jsp:include page="WEB-INF/views/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="WEB-INF/views/nav.jsp"></jsp:include>  


<div class="wrap">
	<div class="banner-show" id="js_ban_content">
		<div class="cell bns-01">
			<div class="con">
			</div>
		</div>
		<div class="cell bns-02" style="display:none;">

			<div class="con">
				<a href="#" target="_blank" class="banner-link">
				<i>圈子</i></a> </div>
		</div>
		<div class="cell bns-03" style="display:none;">
			<div class="con">
				<a href="#" target="_blank" class="banner-link">
				<i>企业云</i></a> </div>
		</div>
	</div>
	<div class="banner-control" id="js_ban_button_box">
		<a href="javascript:;" class="left">左</a>
		<a href="javascript:;" class="right">右</a> </div>
	<script type="text/javascript">
                ;(function(){
                    
                    var defaultInd = 0;
                    var list = $('#js_ban_content').children();
                    var count = 0;
                    var change = function(newInd, callback){
                        if(count) return;
                        count = 2;
                        $(list[defaultInd]).fadeOut(400, function(){
                            count--;
                            if(count <= 0){
                                if(start.timer) window.clearTimeout(start.timer);
                                callback && callback();
                            }
                        });
                        $(list[newInd]).fadeIn(400, function(){
                            defaultInd = newInd;
                            count--;
                            if(count <= 0){
                                if(start.timer) window.clearTimeout(start.timer);
                                callback && callback();
                            }
                        });
                    }
                    
                    var next = function(callback){
                        var newInd = defaultInd + 1;
                        if(newInd >= list.length){
                            newInd = 0;
                        }
                        change(newInd, callback);
                    }
                    
                    var start = function(){
                        if(start.timer) window.clearTimeout(start.timer);
                        start.timer = window.setTimeout(function(){
                            next(function(){
                                start();
                            });
                        }, 8000);
                    }
                    
                    start();
                    
                    $('#js_ban_button_box').on('click', 'a', function(){
                        var btn = $(this);
                        if(btn.hasClass('right')){
                            //next
                            next(function(){
                                start();
                            });
                        }
                        else{
                            //prev
                            var newInd = defaultInd - 1;
                            if(newInd < 0){
                                newInd = list.length - 1;
                            }
                            change(newInd, function(){
                                start();
                            });
                        }
                        return false;
                    });
                    
                })();
            </script>
<jsp:include page="WEB-INF/views/left.jsp"></jsp:include>
	<div class="container">
		<div class="register-box">
			<div class="reg-slogan">
				新用户注册</div>
			<div class="reg-form" id="js-form-mobile">
				<br>
				<br>
				<div class="cell">
					<label for="js-mobile_ipt"></label>
					<input type="text" name="mobile" id="js-mobile_ipt" class="text" maxlength="11" placeholder="填写手机号"/>
				</div>
				<div class="cell">
					<label for="js-mobile_pwd_ipt"></label>
					<input type="password" name="passwd" id="js-mobile_pwd_ipt" class="text"  placeholder="设置密码"/>
					<input type="text" name="passwd" id="js-mobile_pwd_ipt_txt" class="text" maxlength="20" style="display:none;"  />
					<b class="icon-form ifm-view js-view-pwd" title="查看密码" style="display: none">
					查看密码</b> </div>
				<!-- !短信验证码 -->
				<div class="cell vcode">
					<label for="js-mobile_vcode_ipt"></label>
					<input type="text" name="code" id="js-mobile_vcode_ipt" class="text" maxlength="6"  placeholder="输入验证码"/>
					<a href="javascript:;" id="js-get_mobile_vcode" class="button btn-disabled">
					免费获取验证码</a> </div>
				<div class="bottom">
					<a id="js-mobile_btn" href="javascript:;" class="button btn-green">
					立即注册</a></div>
			</div>
			<div class="reg-form" id="js-form-mail" style="display: none;">
				<div class="cell">
					<label for="js-mail_ipt"></label>
					<input type="text" name="email" id="js-mail_ipt" class="text" placeholder="输入你的常用邮箱"/>
				</div>
				<div class="cell">
					<label for="js-mail_pwd_ipt">设置密码</label>
					<input type="password" name="passwd" id="js-mail_pwd_ipt" class="text" />
					<input type="text" name="passwd" id="js-mail_pwd_ipt_txt" class="text" maxlength="20" style="display:none;" />
					<b class="icon-form ifm-view js-view-pwd" title="查看密码" style="display: none">
					查看密码</b> </div>
				<!-- !短信验证码 -->
				<div class="cell vcode">
					<label for="js-mail_vcode_ipt">输入验证码</label>
					<input type="text" name="code" id="js-mail_vcode_ipt" class="text" maxlength="4" />
					<img id="js-mail_vcode_img" src="http://passport.115.com/?ct=securimage&ac=email" alt="code" />
					<span>
					<a id="js-mail_vcode_a" href="javascript:;" code_src="http://passport.115.com/?ct=securimage&amp;ac=email">
					换一张</a></span> </div>
				<div class="user-agreement">
					<input type="checkbox" id="js-mail_chk" checked="true" />
					<label for="js-mail_chk">同意<a href="http://115.com/agreement.html" target="_blank">《115网盘用户服务协议》</a></label>
				</div>
				<div class="bottom">
					<a id="js-mail_btn" href="javascript:;" class="button btn-green">
					立即注册</a></div>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="con">
		<div class="copy-right">
			<div class="cell">
				
			</div>
		</div>
	</div>
</div>
<div align="center">
<p class="paybot_wrap_p">        京ICP证：xxxxxx号© 2004-2099 Perfect World Co.,Ltd. All rights reserved.</span>个人网站（北京）网络技术有限公司版权所有</p>
</div>
</body>
</html>