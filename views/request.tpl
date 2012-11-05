{include file="include/header.tpl"}

<div id="content" class="container-fluid">
	<div class="well">
		<div class="row">
			<div class="span6">
				<h1>catalog request</h1>
        <p>Catalogs are available to wholesale customers only.</p>
        <form method="post" action="/request">
          <fieldset>
            <label>Type of Catalog</label>
            <select name="catalog_type">
              <option>-- Select One --</option>
              <option>Indoor Decor / Plaster Craft</option>
              <option>Outdoor Decor</option>
              <option>Both</option>
            </select>
            <label>Company</label>
            <input type="text" name="company" />
            <label>Contact</label>
            <input type="text" name="contact" />
          </fieldset>
          <fieldset>
            <label>Address</label>
            <input type="text" name="address" />
            <label>City</label>
            <input type="text" name="city" />
            <label>State</label>
            <input type="text" name="state" />
            <label>Zip</label>
            <input type="text" name="zip" />
          </fieldset>
          <fieldset>
            <label>Phone</label>
            <input type="text" name="phone" placeholder="(123) 456-7891" />
            <label>Fax</label>
            <input type="text" name="fax" placeholder="(123) 456-7891" />
            <label>Email</label>
            <input type="text" name="email" />
            <label>Tax ID #</label>
            <input type="text" name="tax_id" />
          </fieldset>
          <button name="submit" type="submit" class="btn">Submit</button>
        </form>
			</div>
		</div>
	</div>
</div>


{include file="include/footer.tpl"}
<script src="{$JS}index.init.js"></script>
