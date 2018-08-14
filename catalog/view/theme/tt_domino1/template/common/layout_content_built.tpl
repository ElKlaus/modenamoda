<?php $row_count = 0; ?>
<?php if($widgets): ?>
    <?php foreach ($widgets as $rows): ?>
    <div class="row-<?php echo $row_count; ?> <?php echo $rows['class']; ?>">
        <div class="container">
            <?php foreach($rows['cols'] as $cols): ?>
                <?php 
                    $class = "";
                    if($cols['format']!=12){ 
                        $class = "col-md-".$cols['format']." col-sm-12";
                    } else{
                        $class = "col-sm-".$cols['format'];
                    }
                ?>
            <div class="<?php echo $class; ?>">
                <?php if(isset($cols['info'])): ?>
                    <?php foreach($cols['info'] as $modules): ?>
                        <?php echo $modules; ?>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
            <?php endforeach; ?>
            <?php $row_count++; ?>
        </div>
    </div>
    <?php endforeach; ?>
<?php endif; ?>