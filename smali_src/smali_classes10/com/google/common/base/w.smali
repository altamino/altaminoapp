.class public final Lcom/google/common/base/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JAVA_LANG_ACCESS_CLASSNAME:Ljava/lang/String; = "sun.misc.JavaLangAccess"

.field static final SHARED_SECRETS_CLASSNAME:Ljava/lang/String; = "sun.misc.SharedSecrets"

.field private static final getStackTraceDepthMethod:Ljava/lang/reflect/Method;

.field private static final getStackTraceElementMethod:Ljava/lang/reflect/Method;

.field private static final jla:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/base/w;->b()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/common/base/w;->jla:Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    move-object v2, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/w;->a()Ljava/lang/reflect/Method;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    :goto_0
    sput-object v2, Lcom/google/common/base/w;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/w;->d(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    :goto_1
    sput-object v1, Lcom/google/common/base/w;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    .line 27
    return-void
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-class v2, Ljava/lang/Throwable;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const-string v1, "getStackTraceElement"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/google/common/base/w;->c(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "sun.misc.SharedSecrets"

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v3, "getJavaLangAccess"

    .line 11
    .line 12
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    return-object v0

    .line 27
    :goto_0
    throw v0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ThreadDeath;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "sun.misc.JavaLangAccess"

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    return-object v0

    .line 17
    :goto_0
    throw p0
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "getStackTraceDepth"

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    .line 8
    const-class v4, Ljava/lang/Throwable;

    .line 9
    const/4 v5, 0x0

    .line 10
    .line 11
    aput-object v4, v3, v5

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v3}, Lcom/google/common/base/w;->c(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 26
    .line 27
    aput-object v3, v2, v5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object v1

    .line 32
    :catch_0
    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/w;->f(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    throw v0
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/Error;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    check-cast p0, Ljava/lang/Error;

    .line 15
    throw p0

    .line 16
    .line 17
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 18
    throw p0
.end method
