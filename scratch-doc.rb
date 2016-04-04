rails g migration AddFieldsToCompany companyName address contact email1 streetAddress city state zip:integer taxable:boolean billingRate terms

From index.html.erb

 <h2><%= company.title %></h2>
   <div>
   <%= company.body %>
   </div>

From _form.html.erb

<%= f.label :companyName %><br>
<%= f.text_field :companyName %><br>
<br>
<%= f.label :contact %><br>
<%= f.text_field :contact %><br>
<br>
<%= f.label :email1 %><br>
<%= f.text_field :email1 %><br>
<br>
<%= f.label :streetAddress %><br>
<%= f.text_field :streetAddress %><br>
<br>
<%= f.label :city %><br>
<%= f.text_field :city %><br>
<br>
<%= f.label :state %><br>
<%= f.text_field :state %><br>
<br>
<%= f.label :zip %><br>
<%= f.text_field :zip %><br>
<br>
<%= f.label :taxable %><br>
<%= f.select :taxable %><br>
<br>
<%= f.label :billingRate %><br>
<%= f.select :billingRate %><br>
<br>
<%= f.label :terms %><br>
<%= f.select :terms %><br>
<br> 

From show.html.erb

<h1><%= @company.companyName %></h1>

<div><%= company.contact %>
  	<%= company.email1 %>
  	<%= company.streetAddress %>
  	<%= company.city %>
  	<%= company.state %>
  	<%= company.zip %>
  	<%= company.taxable %>
  	<%= company.billingRate %>
  	<%= company.terms %>
 </div>


git remote add origin https://github.com/mattkinnamon/billing_app.git
git push -u origin master

