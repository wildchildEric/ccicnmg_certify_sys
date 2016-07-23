<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/15
  Time: 下午5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav>
    <!-- NOTE: Notice the gaps after each icon usage <i></i>..
    Please note that these links work a bit different than
    traditional hre="" links. See documentation for details.
    -->
    <ul class="nav nav-sidebar">
        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-certificate"></i> <span class="menu-item-parent">认证管理</span></a>
            <ul>
                <li><a href="/contracts"><i class="fa fa-2x fa-fw fa-briefcase"></i> 合同管理</a></li>
                <li><a href="/batch_payment_receivings"><i class="fa fa-2x fa-fw fa-money"></i> 收款管理</a></li>
                <li><a href="/invoices"><i class="fa fa-2x fa-fw fa-ticket"></i> 发票管理</a></li>
            </ul>
        </li>

        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-check-square-o"></i>
                <span class="menu-item-parent">审核管理</span></a>
            <ul>
                <li><a href="/batch_plans"><i class="fa fa-2x fa-fw fa-legal"></i> 审核/监审安排</a></li>
                <li><a href="/batch_confirmations"><i class="fa fa-2x fa-fw fa-comments"></i> 监审确认</a></li>
                <li><a href="/certificates"><i class="fa fa-2x fa-fw fa-certificate"></i> 证书登记</a></li>
                <li><a href="/qualified_notices"><i class="fa fa-2x fa-fw fa-trophy"></i> 合格通知</a></li>
                <li><a href="/schedules"><i class="fa fa-2x fa-fw fa-calendar"></i> 排期管理</a></li>

            </ul>
        </li>

        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-files-o"></i> <span class="menu-item-parent">资料管理</span></a>
            <ul>
                <li><a href="/archives"><i class="fa fa-2x fa-fw fa-archive"></i> 归档管理</a></li>
                <li><a href="/mailings"><i class="fa fa-2x fa-fw fa-envelope-o"></i> 邮寄管理</a></li>
            </ul>
        </li>

        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-pencil"></i> <span class="menu-item-parent">基础信息</span></a>
            <ul>
                <li><a href="/customers"><i class="fa fa-2x fa-fw fa-building"></i> 客户档案</a></li>
                <li><a href="/auditor_profiles"><i class="fa fa-2x fa-fw fa-group"></i> 审核员档案</a></li>
                <li><a href="/cert_systems"><i class="fa fa-2x fa-fw fa-sitemap"></i> 体系管理</a></li>
                <li><a href="/cert_scopes"><i class="fa fa-2x fa-fw fa-asterisk"></i> 认证范围</a></li>
                <li><a href="/auditing_bases"><i class="fa fa-2x fa-fw fa fa-anchor"></i> 审核依据</a></li>
                <li>
                    <a href="#"><i class="fa fa-2x fa-fw fa-book"></i> 辅助信息</a>
                    <ul>
                        <li><a href="/cnas_infos">CNAS</a></li>
                        <li><a href="/cert_marks">认证标志</a></li>
                        <li><a href="/cert_types">认证类型</a></li>
                        <li><a href="/educational_backgrounds">学历</a></li>
                        <li><a href="/job_titles">职称</a></li>
                        <li><a href="/job_duties">职务</a></li>
                        <li><a href="/majors">专业</a></li>
                        <li><a href="/auditor_grades">审核员级别</a></li>
                        <li><a href="/auditor_types">审核员分类</a></li>
                        <li><a href="/auditing_types">审核类型</a></li>
                        <li><a href="/cert_fee_types">认证费类型</a></li>
                        <li><a href="/payment_modes">结算方式</a></li>
                        <li><a href="/express_ways">邮寄方式</a></li>
                        <li><a href="/cert_authorities">认证机构</a></li>
                        <li><a href="/invoice_types">发票类型</a></li>
                    </ul>
                </li>
            </ul>
        </li>

        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-exclamation-triangle"></i> <span
                    class="menu-item-parent">预警信息</span></a>
            <ul>
                <li>
                    <a href="#"><i class="fa fa-2x fa-fw fa-legal"></i> 审核安排预警</a>
                    <ul>
                        <li><a href="/second_auditing_warnings">初审二阶段预警</a></li>
                        <li><a href="/first_supervision_warnings">一监预警</a></li>
                        <li><a href="/second_supervision_warnings">二监预警</a></li>
                        <li><a href="/again_certifying_warnings">再认证预警</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-2x fa-fw fa-certificate"></i> 证书预警</a>
                    <ul>
                        <li><a href="/cert_input_warnings">证书录入预警</a></li>
                        <li><a href="/cert_pause_again_certifying_warnings">再认证暂停预警</a></li>
                        <li><a href="/cert_pause_supervision_warnings">监督暂停预警</a></li>
                        <li><a href="/cert_cancel_first_warnings">撤销第一次预警</a></li>
                        <li><a href="/cert_cancel_second_warnings">撤销第二次预警</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-2x fa-fw fa-group"></i> 审核员预警</a>
                    <ul>
                        <li><a href="/auditor_qualification_expire_warnings">审核员注册证书到期预警</a></li>
                        <li><a href="/auditor_qualification_yearly_verify_warnings">审核员年度确认预警</a></li>
                    </ul>
                </li>
                <li><a href="/payment_receiving_overdue_warnings"><i class="fa fa-2x fa-fw fa-money"></i> 欠款预警</a></li>
                <li><a href="/contract_renew_warnings"><i class="fa fa-2x fa-fw fa-briefcase"></i> 续签合同预警</a></li>
                <li><a href="/archive_overdue_warnings"><i class="fa fa-2x fa-fw fa-archive"></i> 归档超期预警</a></li>
            </ul>
        </li>
        <li>
            <a href="#"><i class="fa fa-lg fa-fw fa-dashboard"></i> <span class="menu-item-parent">系统管理</span></a>
            <ul>
                <li><a href="/users"><i class="fa fa-2x fa-fw fa-user"></i> 用户管理</a></li>
                <li><a href="/roles"><i class="fa fa-2x fa-fw fa-unlock-alt"></i> 权限管理</a></li>
            </ul>
        </li>
    </ul>
</nav>
