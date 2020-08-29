<#import "parts/common.ftl" as c>

<@c.page>
    List od users
    <table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#if users??>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <#if user??>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">edit</a></td>
                </#if>
                <td></td>
            </tr>
        </#list>
        </tbody>
        </table>
    </#if>
</@c.page>