# GPLScale
### A GPL fork of MaxScale by MariaDB Corporation (now under BSL license)
see: http://swanhart.livejournal.com/140324.html

The  GPLScale is an intelligent proxy that allows
forwarding of database statements to one or more database servers using
complex rules, a semantic understanding of the database statements and the
roles of the various servers within the backend cluster of databases.

GPLScale is designed to provide load balancing and high availability
functionality transparently to the applications. In addition it provides
a highly scalable and flexible architecture, with plugin components to
support different protocols and routing decisions.

GPLScale is implemented in C and makes extensive use of the
asynchronous I/O capabilities of the Linux operating system. The epoll
system is used to provide the event driven framework for the input and
output via sockets.

The protocols are implemented as external shared object modules which
can be loaded at runtime. These modules support a fixed interface,
communicating the entries points via a structure consisting of a set of
function pointers. This structure is called the "module object".

The code that routes the queries to the database servers is also loaded
as external shared objects and are referred to as routing modules.

Bugs can be reported in the GitHub issue tracker.

# Documentation

For information about installing and using GPLScale, please refer to the
documentation. It is in Markdown format.

You can point your browser to the GPLScale project at GitHub. Look
inside the "Documentation" directory, where you will find a file named
Documentation-Contents.md. Click on that, and GitHub will show the
documentation in its intended display format. The contents page lists
the available documents and has links to them.

If you do not want to rely on the internet, then clone the project
from GitHub and point your browser to the Documentation-Contents.md
file in your local file system and proceed as above.
