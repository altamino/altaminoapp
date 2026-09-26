.class public final Lio/ktor/client/plugins/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/u$a;,
        Lio/ktor/client/plugins/u$b;,
        Lio/ktor/client/plugins/u$c;,
        Lio/ktor/client/plugins/u$d;,
        Lio/ktor/client/plugins/u$e;,
        Lio/ktor/client/plugins/u$f;
    }
.end annotation


# static fields
.field private static final HttpRequestRetryEvent:Lj7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj7/a<",
            "Lio/ktor/client/plugins/u$e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Plugin:Lio/ktor/client/plugins/u$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/u;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final delay:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delayMillis:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lio/ktor/client/plugins/u$b;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxRetries:I

.field private final modifyRequest:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lio/ktor/client/plugins/u$c;",
            "Li7/d;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shouldRetry:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lio/ktor/client/plugins/u$f;",
            "Li7/c;",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shouldRetryOnException:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lio/ktor/client/plugins/u$f;",
            "Li7/d;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/u$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/u$d;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/u;->Plugin:Lio/ktor/client/plugins/u$d;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "RetryFeature"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/u;->key:Lio/ktor/util/a;

    .line 18
    .line 19
    new-instance v0, Lj7/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lj7/a;-><init>()V

    .line 23
    .line 24
    sput-object v0, Lio/ktor/client/plugins/u;->HttpRequestRetryEvent:Lj7/a;

    .line 25
    return-void
.end method

.method public constructor <init>(Lio/ktor/client/plugins/u$a;)V
    .locals 1
    .param p1    # Lio/ktor/client/plugins/u$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "configuration"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->j()Le8/q;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lio/ktor/client/plugins/u;->shouldRetry:Le8/q;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->k()Le8/q;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lio/ktor/client/plugins/u;->shouldRetryOnException:Le8/q;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->g()Le8/p;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lio/ktor/client/plugins/u;->delayMillis:Le8/p;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->f()Le8/p;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lio/ktor/client/plugins/u;->delay:Le8/p;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->h()I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lio/ktor/client/plugins/u;->maxRetries:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$a;->i()Le8/p;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Lio/ktor/client/plugins/u;->modifyRequest:Le8/p;

    .line 45
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/u;)Le8/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/plugins/u;->delay:Le8/p;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/u;)Le8/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/plugins/u;->delayMillis:Le8/p;

    .line 3
    return-object p0
.end method

.method public static final synthetic c()Lj7/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/u;->HttpRequestRetryEvent:Lj7/a;

    return-object v0
.end method

.method public static final synthetic d()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/u;->key:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final synthetic e(Lio/ktor/client/plugins/u;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/ktor/client/plugins/u;->maxRetries:I

    .line 3
    return p0
.end method

.method public static final synthetic f(Lio/ktor/client/plugins/u;)Le8/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/plugins/u;->modifyRequest:Le8/p;

    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lio/ktor/client/plugins/u;)Le8/q;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/plugins/u;->shouldRetry:Le8/q;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lio/ktor/client/plugins/u;)Le8/q;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/ktor/client/plugins/u;->shouldRetryOnException:Le8/q;

    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lio/ktor/client/plugins/u;Li7/d;)Li7/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/u;->m(Li7/d;)Li7/d;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lio/ktor/client/plugins/u;IILe8/q;Lio/ktor/client/call/b;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/client/plugins/u;->n(IILe8/q;Lio/ktor/client/call/b;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Lio/ktor/client/plugins/u;IILe8/q;Li7/d;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lio/ktor/client/plugins/u;->o(IILe8/q;Li7/d;Ljava/lang/Throwable;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final m(Li7/d;)Li7/d;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Li7/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Li7/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Li7/d;->n(Li7/d;)Li7/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Li7/d;->f()Lkotlinx/coroutines/b2;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v1, Lio/ktor/client/plugins/u$h;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Lio/ktor/client/plugins/u$h;-><init>(Li7/d;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 22
    return-object v0
.end method

.method private final n(IILe8/q;Lio/ktor/client/call/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/c;",
            "-",
            "Lio/ktor/client/statement/c;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/client/call/b;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    if-ge p1, p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lio/ktor/client/plugins/u$f;

    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lio/ktor/client/plugins/u$f;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 17
    move-result-object p4

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, p2, p1, p4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private final o(IILe8/q;Li7/d;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/u$f;",
            "-",
            "Li7/d;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Li7/d;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    if-ge p1, p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lio/ktor/client/plugins/u$f;

    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p1}, Lio/ktor/client/plugins/u$f;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p2, p4, p5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public final l(Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "client"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lio/ktor/client/plugins/x;->Plugin:Lio/ktor/client/plugins/x$d;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/ktor/client/plugins/n;->b(Lio/ktor/client/a;Lio/ktor/client/plugins/m;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lio/ktor/client/plugins/x;

    .line 14
    .line 15
    new-instance v1, Lio/ktor/client/plugins/u$g;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p1, v2}, Lio/ktor/client/plugins/u$g;-><init>(Lio/ktor/client/plugins/u;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/x;->d(Le8/q;)V

    .line 23
    return-void
.end method
