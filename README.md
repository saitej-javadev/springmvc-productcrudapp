# springmvc-productcrudapp

This is an End to End Spring MVC - Hibernate Template Crud application.

To Use app:
1.configure tomcat server in Intellij IDEA.
2.And hit the http://localhost:8080/springmvc-productcrudapp

_**For bootstap starter template:**_ https://getbootstrap.com/docs/4.0/getting-started/introduction/
copy CSS, JS from above url and paste in index.jsp.

_**for delete fonts:**_ https://cdnjs.com/libraries/font-awesome
go to above link and <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" /> in required icons page

_**for awesome icons:**_ https://fontawesome.com/icons

_**For beautiful forms:**_ https://bootsnipp.com/

**_For bootstrap tables:_** https://getbootstrap.com/docs/4.0/content/tables/

For using **JSTL** addd Jstl dependency in pom.xml and 
add  <code> &lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt; </code> in jstl required page

_**Note :**_  <code>org.springframework.dao.InvalidDataAccessApiUsageException: Write operations are not allowed in read-only mode (FlushMode.MANUAL): Turn your Session into FlushMode.COMMIT/AUTO or remove 'readOnly' marker from transaction definition. </code>
for above error use **@Transactional** on save or update methods.

