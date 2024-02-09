### A Pluto.jl notebook ###
# v0.19.36

#> [frontmatter]
#> title = "Connor's Interactive Articles"
#> sidebar = "false"

using Markdown
using InteractiveUtils

# ╔═╡ 42246029-985f-4a86-8147-ea2a41f83449
using HypertextLiteral

# ╔═╡ 1f301820-3aee-11ee-14eb-39a75a6a945b
md"""
# 📒 Connor's Interactive Articles 📒
"""

# ╔═╡ 37f0bf7b-644f-4f1f-95d8-3ba07e0e1f57
md"""
_Code for this repository can be found at [https://github.com/ctrekker/PlutoArticles](github.com/ctrekker/PlutoArticles)_
"""

# ╔═╡ 2ba40e26-c809-4199-8b3d-2c7c76dd4e1e
struct Article
	title::String
	path::String
end

# ╔═╡ 106c8995-9e6a-4017-9bbd-36ec9d54e154
article_list = Article[
	Article("Infinite Square Well", "Infinite Square Well.jl"),
	Article("Simulating Polarizing 3D Glasses", "Polarization Simulations.jl"),
	Article("What's the best Plinko strategy?", "Plinko Strategy.jl")
];

# ╔═╡ aa31881f-e8a5-4fd1-8454-a5f6e527a573
function ArticleTile(article)
	@htl("""
	<div class="ArticleTile">
		<a href="$(article.path)">
			$(article.title)
		</a>
	</div>
	""")
end;

# ╔═╡ ee7c9ca5-3754-4168-bd11-83dab9295fe4
@htl("""
<div class = "ArticleList">
	$([ArticleTile(article) for article ∈ article_list])
</div>
""")

# ╔═╡ 2774fd77-defd-4d1b-90c6-ce938da634d4
@htl("""
<style>
	.ArticleList {
		display: flex;
		flex-direction: column;
	}
	.ArticleTile {
		margin-top: 15px;
		border-radius: 15px;
		background-color: #efefef;
	}
	.ArticleTile > a {
		width: 100%;
		display: block;
		padding: 20px;
		text-decoration: none;
	}
	.ArticleTile > a:hover {
		text-decoration: underline;
	}
</style>
""")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"

[compat]
HypertextLiteral = "~0.9.4"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "fc304fba520d81fb78ea25b98f5762b4591b1182"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"
"""

# ╔═╡ Cell order:
# ╟─1f301820-3aee-11ee-14eb-39a75a6a945b
# ╟─ee7c9ca5-3754-4168-bd11-83dab9295fe4
# ╟─37f0bf7b-644f-4f1f-95d8-3ba07e0e1f57
# ╟─2ba40e26-c809-4199-8b3d-2c7c76dd4e1e
# ╟─106c8995-9e6a-4017-9bbd-36ec9d54e154
# ╟─aa31881f-e8a5-4fd1-8454-a5f6e527a573
# ╟─2774fd77-defd-4d1b-90c6-ce938da634d4
# ╟─42246029-985f-4a86-8147-ea2a41f83449
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
