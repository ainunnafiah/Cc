
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="ac5573fa-0ecf-4d59-b26e-30ddf12b0063";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
    <?php
        // get header embeded code
        $get_header_embeded_code = $this->model_utama->view_where('tbl_nicepage',array('key' => 'header_embeded_code'))->row_array();
        if(isset($get_header_embeded_code['value'])){
            if(!empty($get_header_embeded_code['value'])){
                $header_embeded_code = json_decode($get_header_embeded_code['value'],true);
                if(!empty($header_embeded_code)) {
                    echo $header_embeded_code;
                }
            }
        }
    ?>
</head>
</html>
