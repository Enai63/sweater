<#import "parts/common.ftl" as c>

<@c.page>

    User editor

    <form action="/user" method="post">
        <label>
            <input type="text" name="username" value="${user.username}">
        </label>
        <#if roles??>
            <#list roles as role>
                <div>
                    <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                </div>
            </#list>
        </#if>
        <input type="hidden" value="${user.id}" name="user_id">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>

</@c.page>