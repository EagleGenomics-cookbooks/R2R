R2R Cookbook
============

This cookbook installs R2R, "a program to assist in aesthetic drawings of RNA secondary structures". The project homepage is http://breaker.research.yale.edu/R2R/, and it was published at http://www.biomedcentral.com/1471-2105/12/3. 


Requirements
------------

#### packages
- `ARK` - R2R needs ARK, a resource for managing software archives.

Attributes
----------

#### R2R::r2r_attribs
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['R2R']['src_path']</tt></td>
    <td>string</td>
    <td>default location to unpack the source code to</td>
    <td><tt>/usr/local/src</tt></td>
  </tr>
  <tr>
    <td><tt>['R2R']['binary_path']</tt></td>
    <td>string</td>
    <td>default location for R2R binary</td>
    <td><tt>/usr/local/bin/R2R</tt></td>
  </tr>

</table>

Usage
-----
#### R2R::default

Just include `R2R` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[R2R]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
