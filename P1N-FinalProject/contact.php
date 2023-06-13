<?php require_once 'includes/header.php'; ?>
<div class="bg-white container shadow py-4 px-4 rounded circle my-3">
<h4>
           Contact Us
        </h4>
<form class=" col-lg-6" action="index.php" method="GET">
  <div class="form-group">
    <label class="font-weight-bold"for="name">Name</label>
    <input type="text" class="form-control circle" id="name" name="name" placeholder="Enter your name" required>
</div>
<div class="form-group">
    <label class="font-weight-bold"for="phone">Phone</label>
    <input type="number" class="form-control circle" id="phone" name="phone" placeholder="Enter your phone" required>
</div>
<div class="form-group">
    <label class="font-weight-bold"for="message">Message</label>
    <textarea type="text" class="form-control circle" id="message" name="message" placeholder="Enter message" required> </textarea>
</div>
  <button type="submit" class="btn circle bg-third text-white">Submit</button>
</form>
</div>
<?php require_once 'includes/footer.php'; ?>
    
