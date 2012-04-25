<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/base.jsp" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
	<title>凯盛项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
<body class="body">

	<%@ include file="include/top.jsp" %>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">Kaishengit PMS</a>
			</div>
		</div>
	</div>
	
	
	<div class="container">
	  <div class="row">
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">Googel Party</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li class="active"><a href="#"><i class="icon-white icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="document.jspx"><i class="icon-folder-open"></i>资料</a>
				</li>
				<li class="pull-right"><i class="icon-plus"></i><a href="new_document.jspx" class="link-black">分享新资料</a></li>
			</ul>
			
			
			<div class="wall" style="margin-bottom:20px;">
			
			
			
			<c:forEach items="${documentList }" var="document">
			    <ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
					<li class="active">
						<a href="document.jspx?id=${document.id }"><i class="icon-th"></i>${document.name }</a>
					</li>
				</ul>
				<div class="wall">
					<p>${document.desc }</p>
				</div>
			</c:forEach>
				
				<--!
				<blockquote>
				  <h4><a href="show_document.jspx">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">从那个时候起，当再次遇到身陷那个兵荒马乱之中，觉得再也坚持不下来的时刻，只要一低头，便可以看见这句温暖的话。它是那样安之若素地等待在那里，等待着我想起它来，等待着我被无原由的伤感所捕获的时刻，等待着我低头——不是为了哭泣，而是为了注视它——借以予取予地安抚那些无处循形的、落水一般的无力和悲伤。</p>
				  <small>tom发布于 1个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">在我们的生命之河短暂相遇然后别离之后那些孑然独立的岁月，因为知道人情淡薄，由奉守着那句老生常谈的话——安慰捉襟见肘，唯有冷暖自知——所以我们都并不关心他人，亦疲惫到不常愿做没有回报之事。可是为何，我仍时时怀念，过去我们曾经是被彼此那般毫无保留地盛情关怀过，以至于让我在日后看多了人情淡薄的年岁，在这炎凉的时间某个角落寂寞起来的时刻，想起你来便会微笑。 </p>
				  <small>mary盛发布于 1个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">人应当忍于希望的诱惑，活得像河流一般绵延而深情。静静穿过悲伤的茫茫平野，欣悦的深深山谷，穿过生命中那些漫无止境的孤独和寒冷。 </p>
				  <small>lucy发布于 2个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">因为我们都如此轻易地走到了别人的光环和阴影的笼罩下，愚蠢地聒噪，还坚信这就是自己的优点和价值所在。而我淡然地坚持以苍白的语言尽我所能刻画出理想与现实之间的敌对，以及内心深处库存已久的冷漠与希望，决绝与妥协。真实真实再真实。青春，我可爱的青春。  </p>
				  <small>lucy发布于 2个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">这个世界，有着无数的洞穴。  一个入口连着一个出口，他们重叠、相连。  当你走出去、踏进来，就会看到一个全新的世界。  却再也不是从前的那一个。  有些人不小心踏入，不知去往何处，也没有归途。</p>
				  <small>tom发布于2个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">所以如果有不幸你要自己承担，安慰有时候捉襟见肘，自己不坚强也要打得坚强。还没有衣不蔽体食不果腹举目无亲，我们没有资格难过，我们还能把快乐写得源远流长。 </p>
				  <small>mary发布于 3个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">可它只是在我想你的狭小空间顶天立地，那之外它是个不具意义的简单修辞，哪怕只是让我找到你，它都不能。即使“喂”得再大声，它也不可以越洋过海，在你清醒的时候，牵扯到哪边的神经。 </p>
				  <small>马茵发布于 3个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">无数暖湿气流随着车辆经过，卷起风低速搅动着逆光的颜色，让人看不见眼前，看不见身后，看不见别人的表情，看不见远方的灯火，看不见一秒秒之后的光经是否与这一瞬有什么不同。 </p>
				  <small>mary发布于 3个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">从来没有人宁愿相信常理，或者用三段论严格解释自己的遭遇。因为很美的事情本身就是一场证明，证明你曾进这样无遮拦的遇见过美好。 </p>
				  <small>lucy发布于 3个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				<blockquote>
				  <h4><a href="">资料标题</a></h4>
				  <p style="font-size:14px;line-height:1.5;">内心里未表达的话，都哽塞在喉间，想找到一个人倾吐诉说，然而被光明驱散了每一处黑暗，都是荒芜。 </p>
				  <small>tom发布于 3个月前</small>
				  <a href="" title="编辑"><i class="icon-pencil"></i></a>
				  <a href="" title="删除"><i class="icon-trash"></i></a>
				</blockquote>
				-->
				
				
				
				<div class="clear"></div>
			</div>
		</div>
	  </div>
	</div>
  </body>
</html>
