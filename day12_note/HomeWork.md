## Task-1

## Tables That Stayed the Same

### customers

-   Same columns\
-   Same data types\
-   Same timestamps

### products

-   Same columns\
-   Same data types\
-   Same timestamps

**Conclusion:**\
The core application data structure did not change.

------------------------------------------------------------------------

## New Additions in the Second Schema

### action_text_rich_texts

Stores rich text content.

-   body -- rich text content\
-   record_type & record_id -- polymorphic link\
-   name -- field name

------------------------------------------------------------------------

### Active Storage Tables

#### active_storage_blobs

Stores file metadata

#### active_storage_attachments

Links files to models

#### active_storage_variant_records

Tracks processed versions

------------------------------------------------------------------------

### Foreign Keys Added

    active_storage_attachments → active_storage_blobs
    active_storage_variant_records → active_storage_blobs

Schema Version Changed

Old: 2026_01_28_044302\
New: 2026_01_28_045311

------------------------------------------------------------------------

## Task-2
# Debugging Rails Params

Using:

    raise params.inspect

### Example Outputs

**Index**

    { "controller"=>"products", "action"=>"index" }

**Show**

    { "controller"=>"products", "action"=>"show", "id"=>"5" }

**Create**

    { "product"=>{ "name"=>"Apple", "price"=>"10" } }

**Destroy**

    { "action"=>"destroy", "id"=>"5" }

------------------------------------------------------------------------
# Task-4

# Array Intersection Task

    arr1 = ["apple", "banana", "orange"]
    arr2 = ["banana", "kiwi", "orange"]

    puts arr1 & arr2

Output:

    ["banana", "orange"]
