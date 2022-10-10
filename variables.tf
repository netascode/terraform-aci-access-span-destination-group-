variable "name" {
  description = "Access SPAN Destination Group name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}


variable "description" {
  description = "Access SPAN Destination Group description."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9\\!#$%()*,-./:;@ _{|}~?&+]{0,128}$", var.description))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `\\`, `!`, `#`, `$`, `%`, `(`, `)`, `*`, `,`, `-`, `.`, `/`, `:`, `;`, `@`, ` `, `_`, `{`, `|`, }`, `~`, `?`, `&`, `+`. Maximum characters: 128."
  }
}

variable "node_id" {
  description = "Access SPAN Destination Groups Node ID."
  type        = number
  default     = 0

  validation {
    condition     = var.node_id >= 0 && var.node_id <= 4000
    error_message = " Minimum value: `1`. Maximum value: `400`."
  }
}

variable "port" {
  description = "Access SPAN Destination Groups port."
  type        = number
  default     = 0

  validation {
    condition     = var.port >= 0 && var.port <= 127
    error_message = " Minimum value: `1`. Maximum value: `127`."
  }
}

variable "sub_port" {
  description = "Access SPAN Destination Groups Sub-port."
  type        = number
  default     = 0

  validation {
    condition     = var.sub_port >= 0 && var.sub_port <= 16
    error_message = " Minimum value: `1`. Maximum value: `16`."
  }
}

variable "module" {
  description = "Access SPAN Destination Groups Sub-port."
  type        = number
  default     = 1

  validation {
    condition     = var.module >= 1 && var.module <= 9
    error_message = " Minimum value: `1`. Maximum value: `9`."
  }
}

variable "pod_id" {
  description = "Access SPAN Destination Groups Pod ID."
  type        = number
  default     = 1

  validation {
    condition     = var.pod_id >= 1 && var.pod_id <= 255
    error_message = " Minimum value: `1`. Maximum value: `255`."
  }
}

variable "channel" {
  description = "Access SPAN Destination Groups Channel Name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9\\!#$%()*,-./:;@ _{|}~?&+]{0,128}$", var.channel))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `\\`, `!`, `#`, `$`, `%`, `(`, `)`, `*`, `,`, `-`, `.`, `/`, `:`, `;`, `@`, ` `, `_`, `{`, `|`, }`, `~`, `?`, `&`, `+`. Maximum characters: 128."
  }
}

variable "ip" {
  description = "Access SPAN Destination Groups IP."
  type        = string
  default     = ""
}


variable "source_prefix" {
  description = "Access SPAN Destination Group source prefix."
  type        = string
  default     = ""
}

variable "dscp" {
  description = "Access SPAN Destination Group DSCP."
  type        = string
  default     = "unspecified"

  validation {
    condition     = try(contains(["unspecified", "CS0", "CS1", "AF11", "AF12", "AF13", "CS2", "AF21", "AF22", "AF23", "CS4", "AF41", "AF42", "AF43", "CS5", "VA", "EF", "CS6", "CS7"], var.dscp), false) || try(tonumber(var.dscp) >= 0 && tonumber(var.dscp) <= 63, false)
    error_message = "Allowed values are `unspecified`, `CS0`, `CS1`, `AF11`, `AF12`, `AF13`, `CS2`, `AF21`, `AF22`, `AF23`, `CS4`, `AF41`, `AF42`, `AF43`, `CS5`, `VA`, `EF`, `CS6`, `CS7` or a number between 0 and 63."
  }
}


variable "flow_id" {
  description = "Access SPAN Destination Group flow id."
  type        = number
  default     = 1

  validation {
    condition     = var.flow_id >= 1 && var.flow_id <= 1023
    error_message = "Allowed values between 1-1023"
  }
}

variable "mtu" {
  description = "Access SPAN Destination Group MTU."
  type        = number
  default     = 1518

  validation {
    condition     = var.mtu >= 64 && var.mtu <= 9216
    error_message = "Allowed values between 64-9216"
  }
}

variable "ttl" {
  description = "Access SPAN Destination Group TTL."
  type        = number
  default     = 64

  validation {
    condition     = var.ttl >= 1 && var.ttl <= 255
    error_message = "Allowed values between 1-255"
  }
}

variable "span_version" {
  description = "Access SPAN Destination Group SPAN version."
  type        = number
  default     = 1

  validation {
    condition     = var.span_version >= 1 && var.span_version <= 2
    error_message = "Allowed values between 1-2"
  }
}

variable "enforced_version" {
  description = "Access SPAN Destination Group enforced version flag."
  type        = bool
  default     = false
}

variable "tenant" {
  description = "Access SPAN Destination Group Tenant name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.tenant))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "application_profile" {
  description = "Access SPAN Destination Group Application Profile name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.application_profile))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "endpoint_group" {
  description = "Access SPAN Destination Group Endpoint Group name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.endpoint_group))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}
