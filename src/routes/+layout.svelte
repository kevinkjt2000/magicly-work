<main>
	<slot />
</main>

<style>
	@import 'lineicons/web-font/lineicons.css';

	:root {
		--box-background: white;
		--box-border: black;
		--box-shadow: gray;
	}

	main {
		display: grid;
		grid-column-gap: 1rem;
		grid-auto-rows: min-content;
		grid-template-columns: 1fr 1fr;
		grid-template-areas: 'grid-left' 'grid-right';
		max-width: 1200px;
	}
</style>
