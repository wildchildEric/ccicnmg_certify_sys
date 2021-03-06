<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/15
  Time: 下午5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div role="tabpanel">
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active">
            <a href="#home" aria-controls="home" role="tab" data-toggle="tab">认证业务流程</a>
        </li>
        <li role="presentation">
            <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">预警信息</a>
        </li>
    </ul>
    <br>

    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="home">
            <table class="table">
                <thead>
                <tr>
                    <th>时间</th>
                    <th>认证业务流程</th>
                    <th>认证系统操作</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td><b>第1年</b></td>
                    <td>
                        <ol>
                            <li>与客户签订认证合同（初审）</li>
                            <li>安排初次审核（初审） -&gt; 产生审核任务书</li>
                            <li>初次审核（一、二阶段）（审核员老师现场审核）</li>
                            <li>审核结束，审核组长提交审核材料</li>
                            <li>工作人员上传审核材料</li>
                            <li>总部颁发认证证书（大证书）</li>
                        </ol>
                    </td>
                    <td>
                        <ol>
                            <li><a href="/contracts">合同管理（新增）</a>、<a href="/customers">客户管理</a></li>
                            <li><a href="/auditing_plans">审核安排（一二阶段录入）</a>、
                                <del>任务书管理</del>
                            </li>
                            <li>-</li>
                            <li><a href="/archives">归档管理</a></li>
                            <li>-</li>
                            <li><a href="/certificates">证书管理</a>、<a href="/mailings">邮寄管理</a></li>
                        </ol>
                    </td>
                </tr>

                <tr>
                    <td colspan="3"></td>
                </tr>

                <tr>
                    <td><b>第2年</b></td>
                    <td>
                        <ol>
                            <li> 一监审联系（确认一监审时间）</li>
                            <li>安排一监审核 -&gt; 产生审核任务书</li>
                            <li>第一次监督审核（审核员老师现场审核）</li>
                            <li>审核结束，审核组长提交审核材料</li>
                            <li>工作人员审核材料</li>
                            <li>工作人员打印第一次监督审核合格通知书</li>
                        </ol>
                    </td>
                    <td>
                        <ol>
                            <li><a href="/batch_confirmations">监审确认（ 确认类型：一监确认）</a></li>
                            <li><a href="/auditing_plans">监审安排（新增 一监）</a>、
                                <del>任务书管理</del>
                            </li>
                            <li>-</li>
                            <li><a href="/archives">归档管理</a></li>
                            <li>-</li>
                            <li><a href="/qualified_notices">合格通知 （打印第一次监督审核合格通知书）</a></li>
                        </ol>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>

                <tr>
                    <td><b>第3年</b></td>
                    <td>
                        <ol>
                            <li>二监审联系（确认二监审时间）</li>
                            <li>安排二监审核 -&gt; 产生审核任务书</li>
                            <li>第二次监督审核 （审核员老师现场审核）</li>
                            <li>审核结束，审核组长提交审核材料</li>
                            <li>工作人员审核材料</li>
                            <li>工作人员打印第二次监督审核合格通知书</li>
                        </ol>
                    </td>

                    <td>
                        <ol>
                            <li><a href="/batch_confirmations">监审确认（ 确认类型：二监确认）</a></li>
                            <li><a href="/auditing_plans">监审安排 （新增二监）</a>、
                                <del>任务书管理</del>
                            </li>
                            <li>-</li>
                            <li><a href="/archives">归档管理</a></li>
                            <li>-</li>
                            <li><a href="/qualified_notices">合格通知（打印第二次监督审核合格通知书）</a></li>
                        </ol>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>

                <tr class="active">
                    <td colspan="3">个别认证体系需要此项，无此项时，N为3</td>
                </tr>
                <tr class="active">
                    <td>
                        <b>第N[4,?]年</b>
                        <br>
                    </td>
                    <td>
                        <ol>
                            <li>(N-1)监审联系（确认二监审时间）</li>
                            <li>安排(N-1)监审核 -&gt; 产生审核任务书</li>
                            <li>第(N-1)次监督审核 （审核员老师现场审核）</li>
                            <li>审核结束，审核组长提交审核材料</li>
                            <li>工作人员审核材料</li>
                            <li>工作人员打印第(N-1)次监督审核合格通知书</li>
                        </ol>
                    </td>
                    <td>
                        <ol>
                            <li><a href="/batch_confirmations">监审确认（ 确认类型：(N-1)监确认）</a></li>
                            <li><a href="/auditing_plans">监审安排 （新增(N-1)监）</a>、
                                <del>任务书管理</del>
                            </li>
                            <li>-</li>
                            <li><a href="/archives">归档管理</a></li>
                            <li>-</li>
                            <li><a href="/qualified_notices">合格通知（打印第(N-1)次监督审核合格通知书）</a></li>
                        </ol>
                    </td>
                </tr>


                <tr>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><b>第N+1年</b></td>
                    <td>
                        <ol>
                            <li>大证书有效期到期</li>
                            <li>与客户签订认证合同（再认证）</li>
                            <li>安排再认证审核（复评，不分阶段）-&gt; 产生审核任务书</li>
                            <li>循环操作</li>
                        </ol>
                    </td>

                    <td>
                        <ol>
                            <li>-</li>
                            <li><a href="/contracts">合同管理（新增）</a></li>
                            <li><a href="/auditing_plans">审核管理（再认证录入）任务书管理</a></li>
                            <li>-</li>
                        </ol>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="profile">
            <table class="table">
                <thead>
                <tr>
                    <th>分类</th>
                    <th>预警项目</th>
                    <th>描述</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td rowspan="4">一、审核安排预警</td>
                    <td>1.初审二阶段预警</td>
                    <td>一阶段审核日期结束后5个月，如未进行二阶段审核安排，系统要预警，提示尽快安排。<br>
                        （因为初审一阶段与二阶段时隔不能超过6个月）---曲景荣、尹晓云
                    </td>
                </tr>
                <tr>
                    <td>2.一监预警</td>
                    <td>在每月一日都给全部的预警。预警范围是当月的前一年提前两个月内所有的二阶段审核的企业。<br>
                        例如：<br>
                        2012年3月1日到2012年3月31日二阶段审核的所有企业，都在2013年1月1日预警一监。<br>
                        只要没有经过后续监督确认，一直都要在预警列表中。除非证书状态变为撤销、或者失效。<br>
                        当证书状态为撤销或者失效时，此条预警信息在预警列表里取消。依次类推。---辛榕、尹晓云
                    </td>
                </tr>
                <tr>
                    <td>3.二监预警</td>
                    <td>在每月一日都给全部的预警。预警范围是当月的前一年提前两个月内所有的第一次监督审核的企业。<br>
                        例如：<br>
                        2012年5月1日到2012年5月31日第一次监督审核的所有企业，都在2013年3月1日预警二监。<br>
                        只要没有经过后续监督确认，一直都要在预警列表中。<br>
                        当证书状态为撤销或者失效时，此条预警信息在预警列表里取消。依次类推。---辛榕、尹晓云<br>
                        注：<br>
                        监督预警列表为等待监审确认列表，且双击一家企业打开后，即可进行监审确认。<br>
                        确认（大致监审时间）后取消预警，即可进入监审安排流程，或者确认暂时不接受监督审核后进入证书暂停预警列表。<br></td>
                </tr>
                <tr>
                    <td>4.再认证预警</td>
                    <td>参数设置数据按照以下规则来取：“上次审核日期后12个月”和“证书到期日期”相比较的较早日期前N天（60天）。<br>
                        例如：<br>
                        A证书上次审核时间为2013年10月30日，A证书到期日期为2014年12月30日，<br>
                        则参数设置取上次审核时间后12个月（2014年10月30日）之前N天（60天）预警。---曲景荣、尹晓云<br>
                        注：<br>
                        ①新增复评合同后，预警消失；<br>
                        ②如“上次审核日期后12个月”早于“证书到期日期”，上次审核日期后12个月的第1天数据转入
                        <del>待办暂停</del>
                        <b>再认证暂停?</b>列表，预警取消；<br>
                        ③如“证书到期日期”早于“上次审核日期后12个月”，证书到期日期当天证书自动失效，状态自动变更为“失效”，预警取消。<br></td>
                </tr>

                <tr>
                    <td rowspan="4">二、证书预警</td>
                    <td>1.再认证暂停预警</td>
                    <td>二监审核日期后12个月，如果未到证书有效期限，并且未安排复评，系统提示暂停预警。<br>
                        注：<br>
                        需要信息包括合同提供者、客户名称、最后一次审核时间、组长名字、体系类型、证书状态、证书有效期。
                    </td>
                </tr>

                <tr>
                    <td>2.监督暂停预警</td>
                    <td>①监审预警列表中，若一直未进行监审确认，要在上次审核日期最后一天12月后（今年的同一天）进行暂停预警提示。证书暂停状态后仍可进行监审确认。<br>
                        例如：<br>
                        2012年5月9日上午到2012年5月10下午第一次监督审核的企业，应该在2013年3月1日进行第二次监审预警，若一直没有进行监审确认，<br>
                        则在2013年5月10日进行证书暂停预警，提醒证书暂停。<br>
                        ②监审确认后的企业，若一直未进行下一步的审核安排，也要在上次审核日期最后一天12月后（今年的同一天）进行暂停预警提示。<br>
                        例如：<br>
                        2012年5月9日上午到2012年5月10下午第一次监督审核的企业，应该在2013年3月1日进行第二次监审预警，<br>
                        但是在进行监督确认之后，2013年5月10日之前一直没进行审核安排，则在2013年5月10日进行证书暂停预警，提醒证书暂停。
                    </td>
                </tr>

                <tr>
                    <td>3.撤销第一次预警</td>
                    <td>证书暂停（包括监督暂停和复评暂停，即所有处于暂停状态的证书）后4个月开始预警，提示联系企业是否恢复审核。<br>
                        此表应可进行打印和导出。此表应按暂停日期的先后顺序排列。
                    </td>
                </tr>

                <tr>
                    <td>4.撤销第二次预警</td>
                    <td>证书暂停（解释同上）后6个月，提示办理证书撤销。</td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>三、续签合同预警<br>（全年复评预警）</td>
                    <td></td>
                    <td>参数设置按照以下规则来取：“二监日期后12个月”、“一监日期后24个月”和“证书到期日期”相比较的较早日期前90天，在较早日期前90天那年1月体现。<br>
                        需要信息包括合同提供者、客户信息、初审费用、监督费用、最后一次审核时间、组长名字、体系类型、证书状态、证书有效期、是否到款。---曲景荣、尹晓云
                    </td>
                </tr>

                <tr>
                    <td>四、归档超期预警</td>
                    <td></td>
                    <td>如果审核日期结束后一定时期内（监督:审核结束后30天、初审:结束后90天、复评:证书到期前15天）材料仍未提交，系统应做出预警或提示。</td>
                </tr>

                <tr>
                    <td rowspan="2">五、人员预警</td>
                    <td>1.审核员注册证书到期预警</td>
                    <td>审核员的体系证书周期为三年，证书到期前三个月开始预警，直至新证书录入为止。<br>
                        如李**QMS证书起始时间为2013-4-3，证书有效期至2016-4-2.证书预警开始时间为2016-1-2，预警时间直至新证书录入截止。
                    </td>
                </tr>

                <tr>
                    <td>2.审核员年度确认预警</td>
                    <td>审核员的年度确认规定注册证书有效期三年内完成两次，从注册日期后的次年开始，每年一次。<br>
                        第一次年度确认预警时间为注册证书起始日期的12月后开始，第二次年度确认注册日期后的24个月，预警结束可以以录入相关信息为准<br>
                        （目前协会的确认结果的方式未公告，待定）。<br>
                        如李**的QMS证书起始时间为2013-4-3，证书有效期至2016-4-2.第一次年度确认预警时间为2014-4-3开始，第二次年度确认预警时间为2015-4-3开始。<br></td>
                </tr>

                <tr>
                    <td>六、欠款预警</td>
                    <td></td>
                    <td>审核结束后一个月未付款，提示欠款。<br>
                        对欠款企业做下次审核安排时（监督确认或再认证），要有提醒。----曲景荣、辛榕、尹晓云、张竹梅<br></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>