# GraphQL Cheatsheet


In order to make Bulk Queries possible we need to adhere to the following structure
```gql
query DataSourceName {
  Type {
    ...
  }
}
```

In order to make Single Query DataSources possible adhere to the following structure
```gql
query DataSourceName($queried_attribute: String!) {
    Type(name__value: $queried_attribute) {
        ...
    }
}
```



In order to make Resources work we need to adhere to the following structure
```gql
# Place all mutations above the query
mutation PrefixCreate(
    $data: PrefixCreateInput!
  ) {
  Type Create(data: $data) {
    object {
        ...
    }
  }
}

mutation PrefixUpsert(
    $data: PrefixUpsertInput!
  ) {
  Type Upsert(data: $data) {
    object {
        ...
    }
  }
}

mutation PrefixDelete($id: String!) {
  Type Delete(data: {id: $id}) {
    ok
  }
}


query Prefix($name_property_name: String!) {
  Type (name__value: $name_property_name) {
    ...
  }
}
```