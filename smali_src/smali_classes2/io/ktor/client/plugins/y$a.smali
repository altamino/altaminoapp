.class public final Lio/ktor/client/plugins/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/y$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/y$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/y$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _connectTimeoutMillis:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _requestTimeoutMillis:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _socketTimeoutMillis:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/y$a$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/y$a$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/y$a;->Companion:Lio/ktor/client/plugins/y$a$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "TimeoutConfiguration"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/y$a;->key:Lio/ktor/util/a;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    iput-object v0, p0, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    iput-object v0, p0, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 4
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/y$a;->g(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/y$a;->f(Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p0, p3}, Lio/ktor/client/plugins/y$a;->h(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/y$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private final b(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Only positive timeout values are allowed, for infinite timeout use HttpTimeout.INFINITE_TIMEOUT_MS"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a()Lio/ktor/client/plugins/y;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/ktor/client/plugins/y$a;->c()Ljava/lang/Long;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/ktor/client/plugins/y$a;->e()Ljava/lang/Long;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Lio/ktor/client/plugins/y;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/k;)V

    .line 19
    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Lio/ktor/client/plugins/y$a;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/ktor/client/plugins/y$a;

    .line 19
    .line 20
    iget-object v2, p0, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v3, p1, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    return v1

    .line 30
    .line 31
    :cond_2
    iget-object v2, p0, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 32
    .line 33
    iget-object v3, p1, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    return v1

    .line 41
    .line 42
    :cond_3
    iget-object v2, p0, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 43
    .line 44
    iget-object p1, p1, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    return v1

    .line 52
    :cond_4
    return v0

    .line 53
    :cond_5
    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/y$a;->b(Ljava/lang/Long;)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 7
    return-void
.end method

.method public final g(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/y$a;->b(Ljava/lang/Long;)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 7
    return-void
.end method

.method public final h(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/y$a;->b(Ljava/lang/Long;)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 7
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/y$a;->_requestTimeoutMillis:Ljava/lang/Long;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v2, p0, Lio/ktor/client/plugins/y$a;->_connectTimeoutMillis:Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lio/ktor/client/plugins/y$a;->_socketTimeoutMillis:Ljava/lang/Long;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    move-result v1

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    return v0
.end method
