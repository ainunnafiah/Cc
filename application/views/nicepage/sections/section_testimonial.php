<?php
$get_section_testimonial    = $this->model_utama->view_where('tbl_nicepage',array('key' => 'section_testimonial'))->row_array();
if(isset($get_section_testimonial['value'])){
	if(!empty($get_section_testimonial['value'])){
		$section_testimonial = json_decode($get_section_testimonial['value'],true);
	}
}
  
if(!empty($section_testimonial['jumlah'])) {
    // $section_testimonial['jumlah'] =1;
    $get_testimoni = $this->db->query("
                SELECT 
                    t.id_testimoni as id,
                    t.nama as nama,
                    t.profesi as profesi,
                    t.testimoni as testimoni,
                    t.photo as photo
                FROM 
                    tbl_nicepage_testimoni t
                ORDER BY nama ASC LIMIT 0,".$section_testimonial['jumlah']
                )->result_array(); 
} 
?>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<div class="container">
    <div class="card py-4">
        <div class="card-body">
            <div class="row justify-content-center">
                <?php if( !empty($get_testimoni)) {?> 
                    <div class="mb-4 mt-4 col-lg-12">
                        <div id="carouselTestimonial" class="carousel slide" data-ride="carousel">
                            <div class="carousel-testimoni-inner" role="listbox">
                                <?php foreach($get_testimoni as $i => $testi) {?>
                            
                                <div class="carousel-item <?php echo ($i == 0 ? 'active': '');?>">
                                    <div class="photo-testimoni">
                                    <table>
                                        <tr>
                                        <td> <a href="https://uqgresik.ac.id"></a><img src="https://uqgresik.ac.id/wp-content/uploads/2021/02/Logo-UQ-warna-1.png" alt="UQ GRESIK" style="height:100px; width:200px" alt="Erlenmeyer" >  </td></a>
                                        <td> <a href="https://uqgresik.ac.id"></a><img src="https://uqgresik.ac.id/wp-content/uploads/2021/02/Logo-UQ-warna-1.png" alt="UQ GRESIK" style="height:100px; width:200px" alt="Erlenmeyer" > </td></a>
                                        <td> <a href="https://uqgresik.ac.id"></a><img src="https://uqgresik.ac.id/wp-content/uploads/2021/02/Logo-UQ-warna-1.png" alt="UQ GRESIK" style="height:100px; width:200px" alt="Erlenmeyer" >  </td></a>
                                        <td> <a href="https://uqgresik.ac.id"></a><img src="https://uqgresik.ac.id/wp-content/uploads/2021/02/Logo-UQ-warna-1.png" alt="UQ GRESIK" style="height:100px; width:100px" alt="Erlenmeyer" >  </td></a>
                                        <td> <a href="https://uqgresik.ac.id"></a><img src="https://uqgresik.ac.id/wp-content/uploads/2021/02/Logo-UQ-warna-1.png" alt="UQ GRESIK" style="height:100px; width:100px; position:fixed" alt="Erlenmeyer" > </td></a>
                                        </tr>
                                    </table>
                                    </div>
                                 </div> 
                                         
                                <?php }?>   
                            </div> 
                          <style>
                            tr,td {

                            };
                          </style>
                            
                        </div>          
                    </div> 
                <?php }?>
            </div>
        </div>
    </div>
</div> 