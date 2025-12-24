variable "resource_group_var" {
type = map(object({
  name = string
  location = string
}))  
}