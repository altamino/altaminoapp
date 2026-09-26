.class public final Lio/ktor/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/ktor/util/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IS_BROWSER:Z

.field private static final IS_DEVELOPMENT_MODE:Z

.field private static final IS_JVM:Z

.field private static final IS_NATIVE:Z

.field private static final IS_NEW_MM_ENABLED:Z

.field private static final IS_NODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/r;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/util/r;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/util/r;->INSTANCE:Lio/ktor/util/r;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/ktor/util/s;->a(Lio/ktor/util/r;)Lio/ktor/util/q;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sget-object v2, Lio/ktor/util/q;->Browser:Lio/ktor/util/q;

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v4

    .line 21
    .line 22
    :goto_0
    sput-boolean v1, Lio/ktor/util/r;->IS_BROWSER:Z

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/ktor/util/s;->a(Lio/ktor/util/r;)Lio/ktor/util/q;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    sget-object v2, Lio/ktor/util/q;->Node:Lio/ktor/util/q;

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v4

    .line 34
    .line 35
    :goto_1
    sput-boolean v1, Lio/ktor/util/r;->IS_NODE:Z

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lio/ktor/util/s;->a(Lio/ktor/util/r;)Lio/ktor/util/q;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    sget-object v2, Lio/ktor/util/q;->Jvm:Lio/ktor/util/q;

    .line 42
    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    move v1, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v1, v4

    .line 47
    .line 48
    :goto_2
    sput-boolean v1, Lio/ktor/util/r;->IS_JVM:Z

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lio/ktor/util/s;->a(Lio/ktor/util/r;)Lio/ktor/util/q;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    sget-object v2, Lio/ktor/util/q;->Native:Lio/ktor/util/q;

    .line 55
    .line 56
    if-ne v1, v2, :cond_3

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v3, v4

    .line 59
    .line 60
    :goto_3
    sput-boolean v3, Lio/ktor/util/r;->IS_NATIVE:Z

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lio/ktor/util/s;->b(Lio/ktor/util/r;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    sput-boolean v1, Lio/ktor/util/r;->IS_DEVELOPMENT_MODE:Z

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lio/ktor/util/s;->c(Lio/ktor/util/r;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    sput-boolean v0, Lio/ktor/util/r;->IS_NEW_MM_ENABLED:Z

    .line 73
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


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/ktor/util/r;->IS_BROWSER:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/ktor/util/r;->IS_DEVELOPMENT_MODE:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/ktor/util/r;->IS_NATIVE:Z

    return v0
.end method
