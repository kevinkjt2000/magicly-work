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
		>, play video games, volunteer to teach beginning programmers and tinker with code. You can find
		more about these various hobbies in my links section. I am passionate about teaching others,
		extending into my hobby of working on open-source code (primarily on GitHub). To be a better
		teacher, I am constantly learning too. There is always more to learn about in this ever-changing
		landscape of technical projects, and I love it!
	</Box>
</div>

<div class="grid-right">
	<Box title="Proof I'm a polyglot programmer">
		<figure>
			<embed
				src="https://wakatime.com/share/@74c5ac9b-24a0-4a24-b718-d00016fdee6b/13a5bf68-ec1c-494d-95f7-2646c67d2d45.svg"
			/>
		</figure>
	</Box>

	<Box title="Links">
		<ul>
			<li>
				<a href="https://www.linkedin.com/in/kevin-tindall/"
					>My LinkedIn <i class="lni lni-linkedin" /></a
				>
			</li>
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
