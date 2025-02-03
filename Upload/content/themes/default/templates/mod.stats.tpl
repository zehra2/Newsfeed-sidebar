<!-- stats block panel -->         
<div class="card">         
<div class="card-header">         
{include file='__svg_icons.tpl' icon="newsfeed" class="main-icon mr10" width="18px" height="18px"} Site Stats</div>
    <div class="card-body">         
    <ul class="list-group list-group-flush"> 
     <li class="list-group-item d-flex justify-content-between align-items-start">    
     <div class="ms-2 me-auto">      
     <div class="fw-bold">      
     {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
     <a href="{$system['system_url']}/people">Total Users</a>      
     </div>     
     <!__ avatar stack -->       
     <div class="avatar-stack justify-content-start flex-row mt-2">
     {if $rows1}     
     {foreach $rows1 as $row}    
     <span {if $row['id']}data-id="{$row['id']}"{/if}>    
     <div>      
     <a class="avatarz avatar-lg" href="{$system['system_url']}/{$row['user_name']}{if $_search}?ref=qs{/if}">        
     <img src="{$row['user_picture']}">      
     </a>      
     </div>      
     </span>       
     {/foreach}              
     {else}              
     <p>No users to display.</p>              
     {/if}    
     </div>    
     </div>    
     <span class="badge bg-primary rounded-pill">{if $rowtotalusers}{$row['user_id']}{else}0{/if}</span>
     </li>   
     <li class="list-group-item d-flex justify-content-between align-items-start">    
     <div class="ms-2 me-auto">      
     <div class="fw-bold">      
     {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
     <a href="{$system['system_url']}/people">Online Now</a>      
     </div>     
     <!__ avatar stack -->       
     <div class="avatar-stack justify-content-start flex-row mt-2">
     {if $rows4}     
     {foreach $rows4 as $row}    
     <span {if $row['id']}data-id="{$row['id']}"{/if}>   
      <div>      
      <a class="avatarz avatar-lg" href="{$system['system_url']}/{$row['user_name']}{if $_search}?ref=qs{/if}">
    <img src="{$row['user_picture']}">      
    </a>      
    </div>      
    </span>       
    {/foreach}              
    {else}              
    <p>No users online.</p>
    {/if}    
    </div>    
    </div>    
    <span class="badge bg-primary rounded-pill">{if $totalOnlineUsers}{$totalOnlineUsers}{else}0{/if}</span>  
    </li>   
    <li class="list-group-item d-flex justify-content-between align-items-start">    
    <div class="ms-2 me-auto">      
    <div class="fw-bold">      
    {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
    <a href="{$system['system_url']}/people">The Boys</a>      
    </div>     
    <!-- avatar stack -->       
    <div class="avatar-stack justify-content-start flex-row mt-2">
    {if $rows2}     
    {foreach $rows2 as $row}    
    <span {if $row['id']}data-id="{$row['id']}"{/if}>    
    <div>      
    <a class="avatarz avatar-lg" href="{$system['system_url']}/{$row['user_name']}{if $_search}?ref=qs{/if}">
    <img src="{$row['user_picture']}">      
    </a>      
    </div>      
    </span>       
    {/foreach}       
     {else}        
     <p>No users to display.</p>        
     {/if}    
     </div>    
     </div>    
     <span class="badge bg-primary rounded-pill">{if $totalBoyesUsers}{$totalBoyesUsers}{else}0{/if}</span>  
     </li>     
     <li class="list-group-item d-flex justify-content-between align-items-start">    
     <div class="ms-2 me-auto">      
     <div class="fw-bold">     
      {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
      <a href="{$system['system_url']}/people">The Girls</a>      
      </div>     
      <!-- avatar stack -->       
      <div class="avatar-stack justify-content-start flex-row mt-2">
      {if $rows3}     
      {foreach $rows3 as $row}    
      <span {if $row['id']}data-id="{$row['id']}"{/if}>    
      <div>      
      <a class="avatarz avatar-lg" href="{$system['system_url']}/{$row['user_name']}{if $_search}?ref=qs{/if}">
        <img src="{$row['user_picture']}">      
        </a>      
        </div>     
         </span>       
         {/foreach}        
         {else}        
         <p>No users to display.</p>        
         {/if}    
         </div>    
         </div>    
         <span class="badge bg-primary rounded-pill">{if $totalGirlsUsers}{$totalGirlsUsers}{else}0{/if}</span>
    </li>   
    <li class="list-group-item d-flex justify-content-between align-items-start">    
    <div class="ms-2 me-auto">      
    <div class="fw-bold">      
    {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
    <a href="{$system['system_url']}/people">Birthday's Today</a>      
    </div>     
    <!-- avatar stack -->       
    <div class="avatar-stack justify-content-start flex-row mt-2">
    {if $rows5}     
    {foreach $rows5 as $row}    
    <span {if $row['id']}data-id="{$row['id']}"{/if}>    
    <div>      
    <a class="avatarz avatar-lg" href="{$system['system_url']}/{$row['user_name']}{if $_search}?ref=qs{/if}">
            <img src="{$row['user_picture']}">      
            </a>      
            </div>      
            </span>       
            {/foreach}             
             {else}              
             <p>No user birthdays to display.</p>              
             {/if}    
             </div>    
             </div>    
             <span class="badge bg-primary rounded-pill">{if $totalBirthdayUsers}{$totalBirthdayUsers}{else}0{/if}</span>  
             </li>
             {if $system['blogs_enabled']}    
             <li class="list-group-item d-flex justify-content-between align-items-start">    
             <div class="ms-2 me-auto">      
             <div class="fw-bold">     
             {include file='__svg_icons.tpl' icon="blogs" class="main-icon mr5" width="18px" height="18px"}
                  <a href="{$system['system_url']}/blogs">Blogs</a>      
                  </div>    
                  </div>    
                  <span class="badge bg-primary rounded-pill">{if $rowtotalblog}{$rowtotalblog}{else}0{/if}</span>  
                  </li>  
                  {/if} 
                  {if $system['groups_enabled']}   
                  <li class="list-group-item d-flex justify-content-between align-items-start">    
                  <div class="ms-2 me-auto">      
                  <div class="fw-bold">      
                  {include file='__svg_icons.tpl' icon="groups" class="main-icon mr5" width="18px" height="18px"}     
                  <a href="{$system['system_url']}/groups">Groups</a>      
                  </div>   
                   </div>    
                   <span class="badge bg-primary rounded-pill">{if $rowtotalgroup}{$rowtotalgroup}{else}0{/if}</span>  
                   </li>  
                   {/if} 
                   {if $system['pages_enabled']}      
                   <li class="list-group-item d-flex justify-content-between align-items-start">    
                   <div class="ms-2 me-auto">      
                   <div class="fw-bold">      
                   {include file='__svg_icons.tpl' icon="pages" class="main-icon mr5" width="18px" height="18px"}     
                   <a href="{$system['system_url']}/pages">Pages</a>      
                   </div>    
                   </div>    
                   <span class="badge bg-primary rounded-pill">{if $rowtotalpage}{$rowtotalpage}{else}0{/if}</span>  
                   </li>  
                   {/if}  
                   {if $system['events_enabled']}      
                   <li class="list-group-item d-flex justify-content-between align-items-start">    
                   <div class="ms-2 me-auto">      
                   <div class="fw-bold">      
                   {include file='__svg_icons.tpl' icon="events" class="main-icon mr5" width="18px" height="18px"}     
                   <a href="{$system['system_url']}/events">Events</a>     
                    </div>    
                    </div>    
                    <span class="badge bg-primary rounded-pill">{if $rowtotalevent}{$rowtotalevent}{else}0{/if}</span>  
                    </li>  
                    {/if}    
                    {if $system['market_enabled']}       
                    <li class="list-group-item d-flex justify-content-between align-items-start">    
                    <div class="ms-2 me-auto">      
                    <div class="fw-bold">      
                    {include file='__svg_icons.tpl' icon="market" class="main-icon mr5" width="18px" height="18px"}     
                    <a href="{$system['system_url']}/market">Marketplace</a>      
                    </div>    
                    </div>    
                    <span class="badge bg-primary rounded-pill">{if $rowtotalproduct}{$rowtotalproduct}{else}0{/if}</span>
                    </li>
                    {/if}
            </ul>         
</div>         
</div>
<!-- stats block panel -->
