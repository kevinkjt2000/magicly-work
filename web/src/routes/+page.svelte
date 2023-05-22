<script>
	import Box from '$lib/Box.svelte';
</script>

<div class="grid-left">
	<Box title="Hi, I'm Kevin!">
		I stare at lights and press buttons, and I'm good at it! Of course, I discuss necessary
		requirements beforehand so that I can press buttons in a way that solves what is asked for.
	</Box>

	<Box title="Stuff I do for fun">
		When I'm not working, I like to solve <a href="https://en.wikipedia.org/wiki/Combination_puzzle"
			>combination puzzles</a
		>, play video games, volunteer to teach beginning programmers, and tinker with code.
	</Box>
</div>

<div class="grid-right">
	<Box title="Tech I often use"
		><!--C++ Python Svelte--><i class="lni lni-construction-hammer" />Under construction<i
			class="lni lni-construction-hammer"
		/></Box
	>

	<Box title="Links">
		<ul>
			<li><a href="https://discord.gg/J5hBe8F">C++ Help Discord</a></li>
			<li><a href="https://github.com/kevinkjt2000">My GitHub <i class="lni lni-github" /></a></li>
			<li>
				<a href="/cdn/Resume_Kevin_Tindall.pdf">My résumé (CV)</a>
			</li>
		</ul>
	</Box>
</div>

<style>
	.grid-left {
		display: grid;
		grid-row-gap: 1rem;
	}

	.grid-right {
		display: grid;
		grid-row-gap: 1rem;
	}
</style>
