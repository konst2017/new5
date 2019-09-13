		

<?php

/* @var $this yii\web\View */



use yii\helpers\Html;

$this->title = 'My Yii Application';
?>	
		<!-- START PAGE-CONTENT -->
		
									<div class="banner">
										<a href="#"><img src="/nowost/images/12.jpg" alt="Product Banner"></a>
									</div>
								</div>
						

<div class="features_items"><!--features_items-->
<h2 class="title text-center"><?= $category->name?></h2>
    <?php if(!empty($products)): ?>
        <?php $i = 0; foreach($products as $product): ?>
 <?php $mainImg = $product->getImage();?>

<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
              
               
                <p><a class="btn btn-default add-to-cart" href="<?= \yii\helpers\Url::to(['product/view', 'id' => $product->id]) ?>"><?= $product->name?></a></p>
             <h4>  <?= $product->addtime ?></h4> 
			  <?= Html::img($mainImg->getUrl(), ['alt' => $product->name])?> 

            </div>
            <?php if($product->new): ?>
                <?= Html::img("@web/web/images/home/new.png", ['alt' => 'РќРѕРІРёРЅРєР°', 'class' => 'new'])?>
            <?php endif?>
            <?php if($product->sale): ?>
                <?= Html::img("@web/web/images/home/sale.png", ['alt' => 'Р Р°СЃРїСЂРѕРґР°Р¶Р°', 'class' => 'new'])?>
            <?php endif?>
        </div>
        
    </div>
</div>
            <?php $i++?>
            <?php if($i % 3 == 0): ?>
                <div class="clearfix"></div>
            <?php endif;?>
            <?php endforeach;?>
        <div class="clearfix"></div>
        <?php
        echo \yii\widgets\LinkPager::widget([
            'pagination' => $pages,
        ]);
        ?>
        <?php else :?>
        <h2>Здесь статей пока нет......</h2>
    <?php endif;?>
<!--<ul class="pagination">
    <li class="active"><a href="">1</a></li>
    <li><a href="">2</a></li>
    <li><a href="">3</a></li>
    <li><a href="">&raquo;</a></li>
</ul>-->
</div><!--features_items-->


		
									
														
														
													
						
			
		
		

	
 
