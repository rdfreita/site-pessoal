<%@ attribute name="quantidade" %>
<%@ attribute name="conhecimento" %>

<div class="progress">
	<div class="progress-bar progress-bar-label" role="progressbar" aria-valuenow="${quantidade}" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: ${quantidade}%;">${conhecimento} - ${quantidade}%</div>
</div>