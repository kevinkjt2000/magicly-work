<script>
	import Box from '$lib/Box.svelte';
</script>

<div class="grid-left">
	<Box title="Hi, I'm Kevin!">
		I'm a focused software engineer who excels at problem-solving and attention to detail. I gather
		requirements, steadfastly stare at screens, and press buttons to unleash the power of code. I
		drive innovation by crafting efficient, user-friendly, high-quality, and maintainable software
		solutions to empower users and businesses.
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
			<li><a href="https://calendly.com/kevin_tindall/15min">Want 15 minutes of my time?</a></li>
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
