  #index部分 
   
    <div class = "index-area">
      <div class = "index-head">
       <a1><strong>Title</strong></a1>
       <a1><strong>Body</strong></a1>
      </div>

    </div>
    
    <div class = "index-body">
     <% @books.each do |book| %>
     <span1><%= book.title %><span1>
     <strong><%= book.body %></strong>
     <%#= link_to"Show",book_path(@book.id) %>
     <%#= link_to"Edit",edit_book_path(@book.id) %>
     <%= link_to "Destroy",@book, "data-confirm"=>"Are you sure?"%>
     <% end %>
    </div>
    
    
    
    <td><a href= "/books/delete/<%= book.id %>">Destroy</a></td>
    <td><%= link_to "Destroy", book_path(book), method: :delete, data: { confirm: 'Are you sure？' } %></td>