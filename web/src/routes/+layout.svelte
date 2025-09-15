<script lang="ts">
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<main>
	{@render children?.()}
</main>

<style>
	@import 'lineicons/assets/icon-fonts/lineicons.css';

	:root {
		--box-background: white;
		--box-border: black;
		--box-shadow: gray;
	}

	main {
		display: grid;
		grid-auto-rows: min-content;
		grid-column-gap: 1rem;
		grid-row-gap: 1rem;
		grid-template-areas: 'grid-left' 'grid-right';
		grid-template-columns: 1fr;
		max-width: 1200px;
		margin: auto;
	}

	@media only screen and (min-width: 768px) {
		main {
			grid-template-columns: 1fr 1fr;
		}
	}
</style>
