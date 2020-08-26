# Autogenerated wrapper script for Libgpg_error_jll for powerpc64le-linux-gnu
export libgpg_error

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libgpg_error`
const libgpg_error_splitpath = ["lib", "libgpg-error.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgpg_error_path = ""

# libgpg_error-specific global declaration
# This will be filled out by __init__()
libgpg_error_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgpg_error = "libgpg-error.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Libgpg_error")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libgpg_error_path = normpath(joinpath(artifact_dir, libgpg_error_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgpg_error_handle = dlopen(libgpg_error_path)
    push!(LIBPATH_list, dirname(libgpg_error_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

