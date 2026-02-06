# Rails Join Table Migration -- `join` vs `joins` 

------------------------------------------------------------------------

##  Correct Command (Rails Magic Works)

``` bash
rails generate migration CreateJoinTableProductsTags products tags
```

Rails recognizes **JoinTable** and automatically creates:

products_tags

With columns:

-   product_id
-   tag_id

------------------------------------------------------------------------

##  Wrong Command (No Rails Magic)

``` bash
rails generate migration CreateJoinsTableProductsTags products tags
```

What happens:

-   Rails does NOT detect a join table
-   No automatic columns
-   You must write everything manually

------------------------------------------------------------------------

##  Why This Happens

Rails generator looks for:

CreateJoinTableXXXXYYYY

Only this pattern triggers join table creation.

------------------------------------------------------------------------

##  Comparison

  Name                           Result
  ------------------------------ --------
  CreateJoinTableProductsTags    Auto
  CreateJoinsTableProductsTags   Manual
  