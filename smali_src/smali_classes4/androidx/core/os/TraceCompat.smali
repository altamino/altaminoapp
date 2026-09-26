.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/TraceCompat$Api18Impl;,
        Landroidx/core/os/TraceCompat$Api29Impl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceCompat"

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    .line 4
    const-class v1, Landroid/os/Trace;

    .line 5
    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v3, 0x1d

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    const-string v2, "TRACE_TAG_APP"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    sput-wide v2, Landroidx/core/os/TraceCompat;->sTraceTagApp:J

    .line 24
    .line 25
    const-string v2, "isTagEnabled"

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    new-array v4, v3, [Ljava/lang/Class;

    .line 29
    .line 30
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    const/4 v6, 0x0

    .line 32
    .line 33
    aput-object v5, v4, v6

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    sput-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    const-string v2, "asyncTraceBegin"

    .line 42
    const/4 v4, 0x3

    .line 43
    .line 44
    new-array v7, v4, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v5, v7, v6

    .line 47
    .line 48
    aput-object v0, v7, v3

    .line 49
    .line 50
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    const/4 v9, 0x2

    .line 52
    .line 53
    aput-object v8, v7, v9

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    sput-object v2, Landroidx/core/os/TraceCompat;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 60
    .line 61
    const-string v2, "asyncTraceEnd"

    .line 62
    .line 63
    new-array v7, v4, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v5, v7, v6

    .line 66
    .line 67
    aput-object v0, v7, v3

    .line 68
    .line 69
    aput-object v8, v7, v9

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    sput-object v2, Landroidx/core/os/TraceCompat;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    const-string v2, "traceCounter"

    .line 78
    .line 79
    new-array v4, v4, [Ljava/lang/Class;

    .line 80
    .line 81
    aput-object v5, v4, v6

    .line 82
    .line 83
    aput-object v0, v4, v3

    .line 84
    .line 85
    aput-object v8, v4, v9

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    sput-object v0, Landroidx/core/os/TraceCompat;->sTraceCounterMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .line 95
    const-string v1, "TraceCompat"

    .line 96
    .line 97
    const-string v2, "Unable to initialize via reflection."

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    :goto_0
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

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/os/TraceCompat$Api18Impl;->a(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static b()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->b()V

    .line 4
    return-void
.end method
