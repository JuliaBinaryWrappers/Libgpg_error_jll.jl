# Autogenerated wrapper script for Libgpg_error_jll for aarch64-unknown-freebsd
export libgpg_error

JLLWrappers.@generate_wrapper_header("Libgpg_error")
JLLWrappers.@declare_library_product(libgpg_error, "libgpg-error.so.0")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libgpg_error,
        "lib/libgpg-error.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
