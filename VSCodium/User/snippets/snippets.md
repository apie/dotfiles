# Example of a snippet:

# $SCOPES $PREFIXES $NAME $DESCRIPTION

# Snippet parts can be omitted by using underscore sign `_`:

# _ $PREFIXES _ $DESCRIPTION

# Autocomplete for variables inside the code block is not shown when you type `$`, but it's there

```python dbgfun Debug-print-function-with-lineno Debug-func-that-prints-filename-and-lineno-and-custom-msg
def dbg(msg='', *args, r=False, bp=False):
    # --git-push-block-marker--
    import sys
    frame = sys._getframe().f_back
    full_msg = f"{frame.f_code.co_filename}:{frame.f_code.co_name}:{frame.f_lineno}\r\n ->{msg} {f'{args=}' if args else ''}"
    try:
        logger.warning(full_msg)
    except NameError:
        print(full_msg)
    if bp: breakpoint()
    if r: raise Exception(full_msg)

```

```html,django-html hallodgb insert-debug-h1
<h1>HALLO</h1>
```

```python pdb
import pdb;pdb.set_trace() # --git-push-block-marker--
```

```python pp
from pprint import pprint as pp # --git-push-block-marker--
```

```python fixmetag add-a-tag-fixme-to-tests Adds-a-tag-fixme-so-you-can-easily-run-only-the-test-you-are-working-on-by-adding-'--tags-fixme'-to-the-command-line.
from django.test import tag # --git-push-block-marker--
@tag('fixme') # --git-push-block-marker--
```

```python blockmarker
 # --git-push-block-marker--
```

```python emailfile
# --git-push-block-marker--
from django.core.files import File
with open('./email.html', 'w') as f:
    myfile = File(f)
    myfile.write(mail)
myfile.closed
```


```python ignoredeprecations
# --git-push-block-marker
import warnings
from django.utils.deprecation import RemovedInDjango50Warning

warnings.filterwarnings(action="ignore", category=RemovedInDjango50Warning)
```

```django-html wagwan
<h1>WAGWAN</h1>
```