.class public final Lorg/slf4j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static final CODES_PREFIX:Ljava/lang/String; = "http://www.slf4j.org/codes.html"

.field static DETECT_LOGGER_NAME_MISMATCH:Z = false

.field static final DETECT_LOGGER_NAME_MISMATCH_PROPERTY:Ljava/lang/String; = "slf4j.detectLoggerNameMismatch"

.field static final FAILED_INITIALIZATION:I = 0x2

.field static volatile INITIALIZATION_STATE:I = 0x0

.field static final JAVA_VENDOR_PROPERTY:Ljava/lang/String; = "java.vendor.url"

.field static final LOGGER_NAME_MISMATCH_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#loggerNameMismatch"

.field static final MULTIPLE_BINDINGS_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#multiple_bindings"

.field static final NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/c;

.field static final NOP_FALLBACK_INITIALIZATION:I = 0x4

.field static final NO_STATICLOGGERBINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#StaticLoggerBinder"

.field static final NULL_LF_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_LF"

.field static final ONGOING_INITIALIZATION:I = 0x1

.field static final REPLAY_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#replay"

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String; = null

.field static final SUBSTITUTE_LOGGER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#substituteLogger"

.field static final SUBST_FACTORY:Lorg/slf4j/helpers/f;

.field static final SUCCESSFUL_INITIALIZATION:I = 0x3

.field static final UNINITIALIZED:I = 0x0

.field static final UNSUCCESSFUL_INIT_MSG:Ljava/lang/String; = "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final UNSUCCESSFUL_INIT_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final VERSION_MISMATCH:Ljava/lang/String; = "http://www.slf4j.org/codes.html#version_mismatch"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/slf4j/helpers/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/slf4j/helpers/f;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/slf4j/b;->SUBST_FACTORY:Lorg/slf4j/helpers/f;

    .line 8
    .line 9
    new-instance v0, Lorg/slf4j/helpers/c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lorg/slf4j/helpers/c;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lorg/slf4j/b;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/c;

    .line 15
    .line 16
    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/slf4j/helpers/g;->f(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    sput-boolean v0, Lorg/slf4j/b;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 23
    .line 24
    const-string v0, "1.6"

    .line 25
    .line 26
    const-string v1, "1.7"

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Lorg/slf4j/b;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 35
    .line 36
    sput-object v0, Lorg/slf4j/b;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static final a()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lorg/slf4j/b;->l()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/slf4j/b;->f()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/slf4j/b;->t(Ljava/util/Set;)V

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_6

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_2

    .line 19
    :catch_1
    move-exception v0

    .line 20
    goto :goto_3

    .line 21
    :catch_2
    move-exception v0

    .line 22
    goto :goto_4

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    sput v1, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lorg/slf4j/b;->s(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-static {}, Lorg/slf4j/b;->p()V

    .line 36
    goto :goto_5

    .line 37
    .line 38
    .line 39
    :goto_2
    :try_start_1
    invoke-static {v0}, Lorg/slf4j/b;->e(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "Unexpected initialization failure"

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw v1

    .line 48
    .line 49
    .line 50
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const-string v2, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x2

    .line 63
    .line 64
    sput v1, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 65
    .line 66
    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 70
    .line 71
    const-string v1, "Your binding is version 1.5.5 or earlier."

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 75
    .line 76
    const-string v1, "Upgrade your binding to version 1.6.x."

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 80
    :cond_1
    throw v0

    .line 81
    .line 82
    .line 83
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lorg/slf4j/b;->m(Ljava/lang/String;)Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    const/4 v0, 0x4

    .line 92
    .line 93
    sput v0, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 94
    .line 95
    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 99
    .line 100
    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 104
    .line 105
    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 109
    goto :goto_1

    .line 110
    :goto_5
    return-void

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-static {v0}, Lorg/slf4j/b;->e(Ljava/lang/Throwable;)V

    .line 114
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    :goto_6
    invoke-static {}, Lorg/slf4j/b;->p()V

    .line 118
    throw v0
.end method

.method private static b(Lorg/slf4j/event/d;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/slf4j/event/d;->a()Lorg/slf4j/helpers/e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/slf4j/helpers/e;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/slf4j/b;->c(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/slf4j/event/d;->a()Lorg/slf4j/helpers/e;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/slf4j/helpers/e;->f()Z

    .line 22
    move-result p0

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {}, Lorg/slf4j/b;->d()V

    .line 29
    :goto_0
    return-void
.end method

.method private static c(I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "A number ("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, ") of logging calls during the initialization phase have been intercepted and are"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    const-string p0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    const-string p0, "See also http://www.slf4j.org/codes.html#replay"

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static d()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "during the initialization phase. Logging calls during this"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "loggers will work as normally expected."

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    sput v0, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 4
    .line 5
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Lorg/slf4j/helpers/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method

.method static f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    .line 7
    :try_start_0
    const-class v1, Lorg/slf4j/b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lorg/slf4j/b;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    sget-object v2, Lorg/slf4j/b;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Ljava/net/URL;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :goto_1
    const-string v2, "Error getting resources from path"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v1}, Lorg/slf4j/helpers/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    return-object v0
.end method

.method private static g()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/slf4j/b;->SUBST_FACTORY:Lorg/slf4j/helpers/f;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/f;->e()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/slf4j/helpers/f;->d()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lorg/slf4j/helpers/e;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/slf4j/helpers/e;->getName()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Lorg/slf4j/b;->j(Ljava/lang/String;)Lorg/slf4j/a;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/e;->i(Lorg/slf4j/a;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1
.end method

.method public static h()Lorg/slf4j/ILoggerFactory;
    .locals 3

    .line 1
    .line 2
    sget v0, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-class v0, Lorg/slf4j/b;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    sget v2, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    sput v1, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/slf4j/b;->o()V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    goto :goto_2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1

    .line 25
    .line 26
    :cond_1
    :goto_2
    sget v0, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 27
    .line 28
    if-eq v0, v1, :cond_5

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    const/4 v1, 0x3

    .line 33
    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    const/4 v1, 0x4

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    sget-object v0, Lorg/slf4j/b;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/c;

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "Unreachable code"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0

    .line 66
    .line 67
    :cond_5
    sget-object v0, Lorg/slf4j/b;->SUBST_FACTORY:Lorg/slf4j/helpers/f;

    .line 68
    return-object v0
.end method

.method public static i(Ljava/lang/Class;)Lorg/slf4j/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/slf4j/a;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/slf4j/b;->j(Ljava/lang/String;)Lorg/slf4j/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-boolean v1, Lorg/slf4j/b;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/slf4j/helpers/g;->a()Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lorg/slf4j/b;->n(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 22
    move-result p0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x2

    .line 26
    .line 27
    new-array p0, p0, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lorg/slf4j/a;->getName()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    aput-object v3, p0, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    aput-object v1, p0, v2

    .line 42
    .line 43
    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lorg/slf4j/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/slf4j/b;->h()Lorg/slf4j/ILoggerFactory;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->a(Ljava/lang/String;)Lorg/slf4j/a;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static k(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-le p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static l()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "java.vendor.url"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/slf4j/helpers/g;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "android"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "org/slf4j/impl/StaticLoggerBinder"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    return v2

    .line 15
    .line 16
    :cond_1
    const-string v1, "org.slf4j.impl.StaticLoggerBinder"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method private static n(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method private static final o()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/slf4j/b;->a()V

    .line 4
    .line 5
    sget v0, Lorg/slf4j/b;->INITIALIZATION_STATE:I

    .line 6
    const/4 v1, 0x3

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/slf4j/b;->u()V

    .line 12
    :cond_0
    return-void
.end method

.method private static p()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/slf4j/b;->g()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/slf4j/b;->q()V

    .line 7
    .line 8
    sget-object v0, Lorg/slf4j/b;->SUBST_FACTORY:Lorg/slf4j/helpers/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/slf4j/helpers/f;->b()V

    .line 12
    return-void
.end method

.method private static q()V
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lorg/slf4j/b;->SUBST_FACTORY:Lorg/slf4j/helpers/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/slf4j/helpers/f;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v3, 0x80

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 22
    move-result v5

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v6

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    check-cast v6, Lorg/slf4j/event/d;

    .line 42
    .line 43
    .line 44
    invoke-static {v6}, Lorg/slf4j/b;->r(Lorg/slf4j/event/d;)V

    .line 45
    .line 46
    add-int/lit8 v7, v4, 0x1

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {v6, v1}, Lorg/slf4j/b;->b(Lorg/slf4j/event/d;I)V

    .line 52
    :cond_1
    move v4, v7

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    goto :goto_0
.end method

.method private static r(Lorg/slf4j/event/d;)V
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/slf4j/event/d;->a()Lorg/slf4j/helpers/e;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/slf4j/helpers/e;->getName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/slf4j/helpers/e;->g()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/slf4j/helpers/e;->f()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Lorg/slf4j/helpers/e;->e()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lorg/slf4j/helpers/e;->h(Lorg/slf4j/event/c;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {v1}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 39
    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "Delegate logger cannot be null at this state."

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
.end method

.method private static s(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lorg/slf4j/b;->k(Ljava/util/Set;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v0, "Actual binding is of type ["

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "]"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method private static t(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/slf4j/b;->k(Ljava/util/Set;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Ljava/net/URL;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "Found binding in ["

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "]"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method

.method private static final u()V
    .locals 6

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 3
    .line 4
    sget-object v1, Lorg/slf4j/b;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    .line 9
    :goto_0
    if-ge v3, v2, :cond_1

    .line 10
    .line 11
    aget-object v5, v1, v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v5

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    const/4 v4, 0x1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    if-nez v4, :cond_2

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "The requested version "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, " by your slf4j binding is not compatible with "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    sget-object v0, Lorg/slf4j/b;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lorg/slf4j/helpers/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :goto_1
    const-string v1, "Unexpected problem occured during version sanity check"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Lorg/slf4j/helpers/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :catch_0
    :cond_2
    :goto_2
    return-void
.end method
