<script>
function Foo(bar: string) {
  const baz = bar;

  const foo = () => {
    const baz = {
      foo: 'foo',
      bar: 'bar',
      baz: 'baz'
    }
    const ar = [1,2,3]
    ar.map((item) => {
      
    })
  }
}
</script>

<div>
  <h1>{title}</h1>
  <ul>
    {#{#each foo as foobicle}
      <li>foobicle</li>
    {/each}}
  </ul>
</div>

