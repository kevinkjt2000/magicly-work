<script>
	/** @type {string} */
	export let title;
</script>

<div class="box">
	<h2 class="box-title">{title}</h2>
	<slot />
</div>

<style>
	.box {
		background-color: var(--box-background);
		border: 2px solid var(--box-border);
		box-shadow: 8px 10px 0 var(--box-shadow);
		height: min-content;
		padding: 0 1.2rem 0.9rem 1.2rem;
	}

	.box-title {
		text-align: center;
	}
</style>
