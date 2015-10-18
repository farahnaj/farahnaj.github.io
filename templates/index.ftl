<#include "header.ftl">
	
	<#include "menu.ftl">
<a href="http://github.com/farahnaj"><img style="position: absolute; top: 40px; right: 0; border: 0;" src="https://camo.githubusercontent.com/e7bbb0521b397edbd5fe43e7f760759336b5e05f/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677265656e5f3030373230302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png"></a>

<#function summary content marker=(config.summary_marker)!"<!--more-->">
    <#assign idx = content?index_of(marker) />
    <#if idx gt 0>
        <#return content?substring(0,idx)>
    <#else>
        <#return content>
    </#if>
</#function>

	<div class="page-header">
		<h1>Farah's Tech Blogs</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  		</p>
                      <p>${summary(post.body)}</p>
  		        <a class="btn btn-custom" href="${post.uri}">Read More</a>
                </#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
