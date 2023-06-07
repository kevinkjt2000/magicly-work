<svelte:head>
	<meta name="title" property="og:title" content="Kevin's Website" />
	<meta property="og:type" content="website" />
	<meta name="image" property="og:image" content="selfie.png" />
	<meta
		name="description"
		property="og:description"
		content="My website contains information about me and links to things that interest me."
	/>
</svelte:head>

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
		margin: auto;
	}
</style>
