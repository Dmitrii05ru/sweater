<#import "parts/common.ftl" as c>


<@c.page>
List of users
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 15px;
        }
    </style>
<table>

    <tr>
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </tr>


    <#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role} <#sep>, </#list></td>
    <td><a href="/user/${user.id}">edit</a> </td>
</tr>
    </#list>

</table>

</@c.page>