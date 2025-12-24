## Notations / Syntax
```bash
[ ]        --> List/Set
{ }        --> map/ object
( )        --> Functions
" "        --> String
true/false --> bool
```

## Datatypes Helper
### string
```bash
"ssk"
```

### number
```bash
1234
```

### bool
```bash
true
false
```

### list
```bash
["apple","mango","mango","banana"]
```

### set
```bash
["apple","mango","banana"]
```

### map
```bash
 {
    key1 = "value1",
    key2 = "value2"
 }
```

### map(string)
- example use it for env varaibles of azure container apps
- env [{name = "some name",value = "some value"}]
```bash
env_vars = {
  "API_KEY" = "xnekj34fd"
  "LoG_LEVEL" = "info"
}
```


### map(object)
```bash
rgs = {
  rg1 = {
    name       = "ssk-inc-sandbox-rg"
    location   = "Central India"
    managed_by = "Ssk"
  }
}
```

### optional()
- example using tags in resource group block is optional
```bash
    tags = optional(map(string))
```

### list(object)
```bash
```


### list(string)
```bash
```


### lookup()
```bash
```

