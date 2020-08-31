<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <h6>Hello, <#if name !="unknown"> ${name}<#else> guest</#if></h6>
    <div>
        This is simple clone Twitter
    </div>
</@c.page>