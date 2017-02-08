<?php
	error_reporting(E_ALL);
        ini_set('display_errors', 1);
        //REF: http://www.redbeanphp.com/index.php
	require_once('lib/rb.php');
	R::setup( 'mysql:host=127.0.0.1;dbname=pa','pa', 'pressione' );
	$tabella='temperatura';
	$record=(empty($_REQUEST['id'])) ?  R::dispense($tabella) : R::load($tabella, intval($_REQUEST['id']));	
	try {
		if ($record && !empty($_REQUEST['act']) && $_REQUEST['act']=='del') R::trash($record);
                
                $n = json_decode(file_get_contents('php://input'), true);
                
		if (!empty($n)){       
			foreach ($n as $k=>$v){
				$record[$k]=$v;
			}
                        R::store($record);
               }
                
	} catch (RedBeanPHP\RedException\SQL $e) {
		?>
		<h4 class="msg label error">
			<?=$e->getMessage()?>
		</h4>
		<?php
	}	
	$temp=R::find($tabella);
        echo json_encode($temp);
/*                