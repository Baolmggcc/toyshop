<title>ADD PRODUCT</title>
<?php
require_once('headeradmin.php');

?>
<?php
require_once('connect.php');
if(isset($_POST['btn_addproduct'])){
    $c = new Connect();
    $dbLink = $c->connectToPDO();
    $id = strtoupper($_POST['productid']);
    $name = $_POST['productname'];
    $cat = $_POST['categoryid'];
    $sup = $_POST['supplierid'];
    $iprice = $_POST['importprice'];
    $sprice = $_POST['sellprice'];
    $quan = $_POST['quantity'];
    $desc = $_POST['product_description'];
    $importdate = date('Y-m-d' , strtotime($_POST['date']));

    $img = str_replace(' ','-',$_FILES['Pro_image']['name']);
    $imgdir='./img/';//coppy hinh vao thu muc
    $flag= move_uploaded_file(
        $_FILES['Pro_image']['tmp_name'],$imgdir.$img
    );
    if($flag){
        $sql ="INSERT INTO `product` (`productid`, `productname`, `supplierid`, `categoryid`, `importprice`, `sellprice`, `quantity`, `pimage`, `date`, `disciption`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        $re = $dbLink->prepare($sql);
        $v = [$id,$name,$sup,$cat,$iprice,$sprice,$quan,$img,$importdate,$desc];
        $stmt = $re->execute($v);
        if($stmt){
            echo "Congrats";
        }
        }else{
            echo "loi thiet bi";
        }
}
?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="register.css" />
<body>
<section class=" bg-image "
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
         
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">ADD PRODUCT</h2>
              <form method="POST" enctype="multipart/form-data">
                <div class="form-outline mb-4">
                  <label for="product_id">PRODUCT ID</label>
                  <input id="product_id" name="productid" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
                </div>


                <div class="form-outline mb-4">
                  <label for="product_name">PRODUCT NAME</label>  
                  <input id="product_name" name="productname" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="cateloryid">CATEGORY ID</label> 
                  <input id="categoryid" name="categoryid" placeholder="CATEGORY ID" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="product_supplier">SUPPLIER ID</label>    
                  <input id="supplierid" name="supplierid" placeholder="SUPPLIER ID" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="import_price">IMPORT PRICE</label>  
                  <input id="import_price" name="importprice" placeholder="IMPORT PRICE" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="sell_price">SELL PRICE</label>  
                  <input id="sell_price" name="sellprice" placeholder="SELL PRICE" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="quantity">QUANTITY</label>  
                  <input id="quantity" name="quantity" placeholder="QUANTITY" class="form-control input-md" required="" type="text">
                </div>

                <div class="form-outline mb-4">
                  <label for="quantity">PRODUCT IMAGE</label>  
                  <input type="file" name="Pro_image" id="Pro_image"  class="form-control" value="">
                </div>

                <div class="form-outline mb-4">
                  <label for="quantity">IMPORT DATE</label>  
                  <input id="date" name="date" placeholder="IMPORT DATE" value="<?php echo date('Y-m-d');?>" class="form-control input-md" required="" type="date"> 
                </div>

                <div class="form-outline mb-4">
                  <label for="product_description">PRODUCT DESCRIPTION</label>                   
                  <input type="text" class="form-control" id="productdescription" placeholder="PRODUCT DISCIPTION" name="product_description"></input>
                </div>

                    <br>
                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" name="btn_addproduct">ADD PRODUCT</button>
                </div>
                <br>
                <div class="d-flex justify-content-center">
                  <button type="submit" href="addproduct.php" onclick="location.href='addproduct.php'"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" name="btn_reset">RESET</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br>
</section>
</body>
<!------ Include the above in your HEAD tag ---------->
<?php
require_once('footer.php')
?>