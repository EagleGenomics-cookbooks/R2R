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



License and Authors
-------------------

* Authors:: Bart Ailey (chef@eaglegenomics.com) 
* Authors:: Dan Barrell (chef@eaglegenomics.com)
* Authors:: Nick James (chef@eaglegenomics.com)

Copyright:: 2016, Eagle Genomics Ltd, Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
