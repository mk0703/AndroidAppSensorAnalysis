<%@ page pageEncoding="UTF-8"%>
<div class="pure-menu pure-menu-horizontal">
	<style scoped>
.pure-menu-item {
	color: white;
	border-radius: 10px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
}

.pure-menu-item {
	background: rgb(180, 180, 180); /* この背景色を紺色に。 */
}
</style>
	<a href="#" class="pure-menu-heading pure-menu-link"><I><U>Sensor_Analysis</U></I></a>
	<ul class="pure-menu-list">
		<li class="pure-menu-item"><a href="InputDateServlet"
			class="pure-menu-link">2点間距離測定(2次元)</a></li>
		<li class="pure-menu-item"><a href="InputDate2Servlet"
			class="pure-menu-link">2点間距離測定(3次元)</a></li>
	</ul>
</div>