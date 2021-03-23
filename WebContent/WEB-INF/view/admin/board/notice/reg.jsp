<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <title>�ڵ� �������� ����� ���� �¶��� ���� �ý���</title>
    <meta charset="UTF-8">
    <title>�������׸��</title>

    <link href="/css/customer/layout.css" type="text/css" rel="stylesheet" />
    <style>
        #visual .content-container {
            height: inherit;
            display: flex;
            align-items: center;

            background: url("/images/mypage/visual.png") no-repeat center;
        }
    </style>
</head>

<body>
    <!-- header �κ� -->

    <header id="header">

        <div class="content-container">
            <!-- ---------------------------<header>--------------------------------------- -->

            <h1 id="logo">
                <a href="/index.html">
                    <img src="/images/logo.png" alt="����ó �¶���" />

                </a>
            </h1>

            <section>
                <h1 class="hidden">���</h1>

                <nav id="main-menu">
                    <h1>���θ޴�</h1>
                    <ul>
                        <li><a href="/guide">�н����̵�</a></li>

                        <li><a href="/course">���¼���</a></li>
                        <li><a href="/answeris/index">AnswerIs</a></li>
                    </ul>
                </nav>

                <div class="sub-menu">

                    <section id="search-form">
                        <h1>���°˻� ��</h1>
                        <form action="/course">
                            <fieldset>
                                <legend>�����˻��ʵ�</legend>
                                <label>�����˻�</label>
                                <input type="text" name="q" value="" />
                                <input type="submit" value="�˻�" />
                            </fieldset>
                        </form>
                    </section>

                    <nav id="acount-menu">
                        <h1 class="hidden">ȸ���޴�</h1>
                        <ul>
                            <li><a href="/index.html">HOME</a></li>



                            <li>
                                <form action="/logout" method="post">
                                    <input type="hidden" name="" value="" />
                                    <input type="submit" value="�α׾ƿ�"
                                        style="border:none;background: none;vertical-align: middle;font-size: 10px;color:#979797;font-weight: bold;" />

                                </form>
                            </li>

                            <li><a href="/member/agree">ȸ������</a></li>
                        </ul>
                    </nav>

                    <nav id="member-menu" class="linear-layout">
                        <h1 class="hidden">���޴�</h1>
                        <ul class="linear-layout">
                            <li><a href="/member/home"><img src="/images/txt-mypage.png" alt="����������" /></a></li>
                            <li><a href="/notice/list.html"><img src="/images/txt-customer.png" alt="������" /></a></li>
                        </ul>
                    </nav>

                </div>
            </section>

        </div>

    </header>

    <!-- --------------------------- <visual> --------------------------------------- -->
    <!-- visual �κ� -->

    <div id="visual">
        <div class="content-container"></div>
    </div>
    <!-- --------------------------- <body> --------------------------------------- -->
    <div id="body">
        <div class="content-container clearfix">

            <!-- --------------------------- aside --------------------------------------- -->
            <!-- aside �κ� -->


            <aside class="aside">
                <h1>ADMIN PAGE</h1>

                <nav class="menu text-menu first margin-top">
                    <h1>����������</h1>
                    <ul>
                        <li><a href="/admin/index.html">������Ȩ</a></li>
                        <li><a href="/teacher/index.html">������������</a></li>
                        <li><a href="/student/index.html">������������</a></li>
                    </ul>
                </nav>

                <nav class="menu text-menu">
                    <h1>�˸�����</h1>
                    <ul>
                        <li><a href="/admin/board/notice/list.html">��������</a></li>
                    </ul>
                </nav>

            </aside>
            <!-- --------------------------- main --------------------------------------- -->




            <main>
                <h2 class="main title">�������� ���</h2>

                <div class="breadcrumb">
                    <h3 class="hidden">breadlet</h3>
                    <ul>
                        <li>home</li>
                        <li>�Խñ� ����</li>
                        <li>��������</li>
                    </ul>
                </div>

				<form method="post" action="reg" enctype="multipart/form-data">
					<div class="margin-top first">
						<h3 class="hidden">�������� �Է�</h3>
						<table class="table">
							<tbody>
								<tr>
									<th>����</th>
									<td class="text-align-left text-indent text-strong text-orange"
										colspan="3"><input type="text" name="title" /></td>
								</tr>
								<tr>
									<th>÷������</th>
									<td colspan="3" class="text-align-left text-indent"><input
										type="file" name="file" /></td>
								</tr>
								<tr class="content">
									<td colspan="4"><textarea class="content" name="content"></textarea></td>
								</tr>
								<tr>
									<td colspan="4" class="text-align-right"><input
										class="vertical-align" type="checkbox" id="open" name="open"
										value="true"><label for="open" class="margin-left">�ٷΰ���</label>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="margin-top text-align-center">
						<input class="btn-text btn-default" type="submit" value="���" /> <a
							class="btn-text btn-cancel" href="list.html">���</a>
					</div>
				</form>

			</main>
        </div>
    </div>

    <!-- ------------------- <footer> --------------------------------------- -->



    <footer id="footer">
        <div class="content-container">
            <h2 id="footer-logo"><img src="/images/logo-footer.png" alt="ȸ������"></h2>

            <div id="company-info">
                <dl>
                    <dt>�ּ�:</dt>
                    <dd>����Ư���� </dd>
                    <dt>�����ڸ���:</dt>
                    <dd>admin@newlecture.com</dd>
                </dl>
                <dl>
                    <dt>����� ��Ϲ�ȣ:</dt>
                    <dd>111-11-11111</dd>
                    <dt>��� �Ǹž�:</dt>
                    <dd>�Ű��� 1111 ȣ</dd>
                </dl>
                <dl>
                    <dt>��ȣ:</dt>
                    <dd>����ó</dd>
                    <dt>��ǥ:</dt>
                    <dd>ȫ�浿</dd>
                    <dt>��ȭ��ȣ:</dt>
                    <dd>111-1111-1111</dd>
                </dl>
                <div id="copyright" class="margin-top">Copyright �� newlecture.com 2012-2014 All Right Reserved.
                    Contact admin@newlecture.com for more information</div>
            </div>
        </div>
    </footer>
</body>

</html>