
#ifndef BSONCXX_ABI_EXPORT_H
#define BSONCXX_ABI_EXPORT_H

#ifdef BSONCXX_STATIC
#  define BSONCXX_ABI_EXPORT
#  define BSONCXX_ABI_NO_EXPORT
#else
#  ifndef BSONCXX_ABI_EXPORT
#    ifdef BSONCXX_EXPORT
        /* We are building this library */
#      define BSONCXX_ABI_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define BSONCXX_ABI_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef BSONCXX_ABI_NO_EXPORT
#    define BSONCXX_ABI_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef BSONCXX_DEPRECATED
#  define BSONCXX_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef BSONCXX_DEPRECATED_EXPORT
#  define BSONCXX_DEPRECATED_EXPORT BSONCXX_ABI_EXPORT BSONCXX_DEPRECATED
#endif

#ifndef BSONCXX_DEPRECATED_NO_EXPORT
#  define BSONCXX_DEPRECATED_NO_EXPORT BSONCXX_ABI_NO_EXPORT BSONCXX_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef BSONCXX_ABI_NO_DEPRECATED
#    define BSONCXX_ABI_NO_DEPRECATED
#  endif
#endif

#if defined(_MSC_VER)
#define BSONCXX_ABI_CDECL __cdecl
#else
#define BSONCXX_ABI_CDECL
#endif

#define BSONCXX_ABI_EXPORT_CDECL(...) BSONCXX_ABI_EXPORT __VA_ARGS__ BSONCXX_ABI_CDECL

// For backward compatibility. Use BSONCXX_ABI_EXPORT_CDECL instead.
#define BSONCXX_API BSONCXX_ABI_EXPORT

// For backward compatibility. Use BSONCXX_ABI_NO_EXPORT instead.
#define BSONCXX_PRIVATE BSONCXX_ABI_NO_EXPORT

#endif /* BSONCXX_ABI_EXPORT_H */
