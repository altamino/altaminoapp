.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/HandlerCompat$Api28Impl;,
        Landroidx/core/os/HandlerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 7
    .param p0    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/os/HandlerCompat$Api28Impl;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Handler;

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v3, Landroid/os/Looper;

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    const-class v3, Landroid/os/Handler$Callback;

    .line 24
    const/4 v5, 0x1

    .line 25
    .line 26
    aput-object v3, v2, v5

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    const/4 v6, 0x2

    .line 30
    .line 31
    aput-object v3, v2, v6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v1, v4

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    aput-object v2, v1, v5

    .line 43
    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    aput-object v2, v1, v6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object v0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    instance-of v0, p0, Ljava/lang/Error;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    check-cast p0, Ljava/lang/Error;

    .line 76
    throw p0

    .line 77
    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    throw v0

    .line 83
    .line 84
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 85
    throw p0

    .line 86
    .line 87
    :goto_1
    const-string v1, "HandlerCompat"

    .line 88
    .line 89
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    new-instance v0, Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    return-object v0
.end method
