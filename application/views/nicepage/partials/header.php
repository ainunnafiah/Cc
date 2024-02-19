<?php
// get lokasi menu utama
$get_lokasi_menu = $this->model_utama->view_where('tbl_nicepage', array('key' => 'lokasi_menu'))->row_array();
if (isset($get_lokasi_menu['value'])) {
	if (!empty($get_lokasi_menu['value'])) {
		$lokasi_menu = json_decode($get_lokasi_menu['value'], true);
	}
}
$menu_utama_id = '';
if (isset($lokasi_menu['menu_utama'])) {
	$menu_utama_id = $lokasi_menu['menu_utama'];
}


/**
 * menata menu secara hirarki
 * menu
 * -sub menu
 * --sub menu 
 * ---dst
 * @param $menu_parent_id ( menu id)
 * @param $state_menu_id (menu id (kondisi paling awal))
 * @param $class_menu ( style menu)
 * @param $home_icon ( true => menampilkan icon home)
 * @param $deep ( true jika => menu hirarki)
 */
function build_nav_menu($menu_parent_id = 0, $state_menu_id, $class_menu = 'menu-navbar', $home_icon = true, $deep = true)
{
	// get instance CI
	$list_menu = '';
	$ci = &get_instance();
	$get_menus = $ci->db->query("
		SELECT 
			id_menu, 
			nama_menu, 
			link
		FROM 
			menu 
		WHERE 
			aktif='Ya' 
			AND 
			id_parent='" . $menu_parent_id . "'
		ORDER BY urutan
	")->result_array();
	if (!empty($get_menus)) {

		if ($menu_parent_id == $state_menu_id) {
			$list_menu .= '<ul class="' . $class_menu . '">';
			if ($home_icon == true) {
				$list_menu .= '<li class="menu-item">';
				$list_menu .= '<a href="' . base_url() . '">';
				$list_menu .= '<i class="fa fa-home" aria-hidden="true"></i>';
				$list_menu .= '</a>';
				$list_menu .= '</li>';
			}
		} else {
			$list_menu .= '<ul class="sub-menu">';
		}

		foreach ($get_menus as $menu_item) {
			// filter http link
			$ahref_ttr = '';
			$base_url = base_url($menu_item['link']);
			if (preg_match("/^http/", $menu_item['link'])) {
				$ahref_ttr = 'target="_BLANK"';
				$base_url = $menu_item['link'];
			}
			// create link			
			$a_link_menu = '<a ' . $ahref_ttr . ' href="' . $base_url . '">';
			$a_link_menu .= $menu_item['nama_menu'];
			$a_link_menu .= '</a>';
			// end

			$get_child = array();

			if ($deep == true) {
				$get_child = build_nav_menu($menu_item['id_menu'], $state_menu_id);
			}
			if (!empty($get_child) && $deep == true) {
				$list_menu .= '<li class="menu-item menu-item-has-children" id="menu-item-' . $menu_item['id_menu'] . '">';
				$list_menu .= $a_link_menu;
				$list_menu .= $get_child;
				$list_menu .= '</li>';
			} else {
				$list_menu .= '<li class="menu-item" id="menu-item-' . $menu_item['id_menu'] . '">';
				$list_menu .= $a_link_menu;
				$list_menu .= '</li>';
			}
		}
		$list_menu .= '</ul>';
	}
	return $list_menu;
}
?>
<nav class="nav fixed-top">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
	<i class="uil uil-bars navOpenBtn"></i>
	<!-- <a href="#" class="logo">CODE CRAFTERS</a> -->

	<ul class="nav-links">
		<i class="uil uil-times navCloseBtn"></i>
		<li><a href="#"><i class="fa fa-home icon"></i> Home</a></li>
		<br></br>
		<li><a href="https://x.com/Code_crafters2?t=zzXh_iSmZFpiALLfzi3gTw&s=09" target="_blank"><i
					class="fa fa-twitter"></i></a></li>
		<li><a href="mailto:ccrafters925@gmail.com" target="_blank"><i class="fa fa-envelope-square"></i></a></li>
		<li><a href="https://youtube.com/@codecraft" target="_blank"><i class="fa fa-youtube"></i></a></li>
		<li><a href="https://www.instagram.com/code_crafters_k41/" target="_blank"><i class="fa fa-instagram"></i></a>
		</li>

	</ul>
	<form method="POST" action="<?php echo base_url(); ?>berita/index/">
		<i class="uil uil-search search-icon" id="searchIcon"></i>
		<div class="search-box">
			<i class="uil uil-search search-icon"></i>
			<input type="text" placeholder="cari berita....." />

			<style>
				/* Google Fonts - Poppins */
				@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

				* {
					margin: 0;
					padding: 0;
					box-sizing: border-box;
					font-family: "Poppins", sans-serif;
				}

				body {
					background: #D2E0FB;
				}

				.nav {
					position: fixed;
					top: 0;
					left: 0;
					width: 100%;
					padding: 2px 100px;
					background: #5D12D2;
					box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
				}

				.nav,
				.nav .nav-links {
					display: flex;
					align-items: center;
				}

				.nav {
					justify-content: space-between;
				}

				a {
					color: #fff;
					text-decoration: none;
				}

				.nav .logo {
					font-size: 10px;
					font-weight: 450;
				}

				.nav .nav-links {
					column-gap: 19px;
					list-style: none;
				}

				.nav .nav-links a {
					transition: all 0.2s linear;
				}

				.nav.openSearch .nav-links a {
					opacity: 0;
					pointer-events: none;
				}

				.nav .search-icon {
					color: #fff;
					font-size: 17px;
					cursor: pointer;
				}

				.nav .search-box {
					position: absolute;
					right: 250px;
					height: 40px;
					max-width: 555px;
					width: 100%;
					opacity: 0;
					pointer-events: none;
					transition: all 0.2s linear;
				}

				.nav.openSearch .search-box {
					opacity: 1;
					pointer-events: auto;
				}

				.search-box .search-icon {
					position: absolute;
					left: 15px;
					top: 50%;
					left: 15px;
					color: #4a98f7;
					transform: translateY(-50%);
				}

				.search-box input {
					height: 100%;
					width: 100%;
					border: none;
					outline: none;
					border-radius: 6px;
					background-color: #fff;
					padding: 0 15px 0 45px;
				}

				.nav .navOpenBtn,
				.nav .navCloseBtn {
					display: none;
				}

				/* responsive */
				@media screen and (max-width: 1160px) {
					.nav {
						padding: 15px 100px;
					}

					.nav .search-box {
						right: 150px;
					}
				}

				@media screen and (max-width: 950px) {
					.nav {
						padding: 15px 50px;
					}

					.nav .search-box {
						right: 100px;
						max-width: 400px;
					}
				}

				@media screen and (max-width: 768px) {

					.nav .navOpenBtn,
					.nav .navCloseBtn {
						display: block;
					}

					.nav {
						padding: 15px 20px;
					}

					.nav .nav-links {
						position: fixed;
						top: 0;
						left: -100%;
						height: 100%;
						max-width: 280px;
						width: 100%;
						padding-top: 100px;
						row-gap: 30px;
						flex-direction: column;
						background-color: #11101d;
						box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
						transition: all 0.4s ease;
						z-index: 100;
					}

					.nav.openNav .nav-links {
						left: 0;
					}

					.nav .navOpenBtn {
						color: #fff;
						font-size: 20px;
						cursor: pointer;
					}

					.nav .navCloseBtn {
						position: absolute;
						top: 20px;
						right: 20px;
						color: #fff;
						font-size: 20px;
						cursor: pointer;
					}

					.nav .search-box {
						top: calc(100% + 10px);
						max-width: calc(100% - 20px);
						right: 50%;
						transform: translateX(50%);
						box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
					}
				}
			</style>
			<script>
				const nav = document.querySelector(".nav"),
					searchIcon = document.querySelector("#searchIcon"),
					navOpenBtn = document.querySelector(".navOpenBtn"),
					navCloseBtn = document.querySelector(".navCloseBtn");

				searchIcon.addEventListener("click", () => {
					nav.classList.toggle("openSearch");
					nav.classList.remove("openNav");
					if (nav.classList.contains("openSearch")) {
						return searchIcon.classList.replace("uil-search", "uil-times");
					}
					searchIcon.classList.replace("uil-times", "uil-search");
				});

				navOpenBtn.addEventListener("click", () => {
					nav.classList.add("openNav");
					nav.classList.remove("openSearch");
					searchIcon.classList.replace("uil-times", "uil-search");
				});
				navCloseBtn.addEventListener("click", () => {
					nav.classList.remove("openNav");
				});
			</script>
		</div>
	</form>
</nav>
<div class="header-row">
	<div class="header-column">
		<div style="text-align: center;">
			<h4>
				<br></br>
			</h4>
			<img style="width:140px;" src="asset/logo/LOGO_CCC.png">
			<h4><b><span style=" color: #007bff;text-shadow :1px 1px #202427">CODE CRAFTERS</span></b></h4>
			<h4><b><span style=" color: #007bff;text-shadow :1px 1px #202427;"> MAHAKARYA TEKNIK INFORMATIKA </span></b>
			</h4>
		</div>
	</div>
</div>
<nav class="main-menu-container navbar navbar-dark ">
	<div class="button-toggle-container d-lg-none m-2 position-absolute">
		<button class="btn-responsive navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu"
			aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="container ml-5 pl-4 ml-lg-auto pl-lg-auto">
		<?php
		//menampilkan identias website  
		$base_path = FCPATH;
		$id_website = $this->model_utama->view('identitas')->row_array();
		$logo_website = $this->model_utama->view('logo')->row_array();
		?>
		<a class="navbar-brand float-left" href="<?php echo base_url(); ?>">
			<?php
			if ($logo_website['gambar'] !== '' && file_exists($base_path . "asset/logo/" . $logo_website['gambar'])) {
				$img_src = base_url() . "asset/logo/" . $logo_website['gambar'];
				?>
				<div class="logo-header">
					<img src="<?php echo $img_src; ?>" alt="<?php echo $id_website['nama_website']; ?>">
				</div>
				<?php
			} else {
				?>
				<?php echo $id_website['nama_website']; ?>
				<?php
			}
			?>
			<?php
			if (isset($tagline['header']) && isset($tagline['text'])) {
				if (!empty($tagline['text'] && $tagline['header'] == '1')) {
					?>
					<div class="tagline-header d-lg-block d-none">"
						<?php echo $tagline['text']; ?> "
					</div>
					<?php
				}
			} ?>
		</a>
		<div class="main-menu d-lg-block d-none" id="main-menu">
			<?php
			echo build_nav_menu($menu_utama_id, $menu_utama_id);
			?>
		</div>
	</div>
</nav>