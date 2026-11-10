import glob
import os
from ranger.api.commands import Command

class source_glob(Command):
    """:source_glob <pattern>

    Source every file matching a glob pattern, in sorted order.
    """
    def execute(self):
        pattern = os.path.expanduser(self.rest(1))
        for path in sorted(glob.glob(pattern)):
            if os.path.isfile(path):
                self.fm.source(path)

