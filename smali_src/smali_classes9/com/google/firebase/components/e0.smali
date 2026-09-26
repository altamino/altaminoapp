.class Lcom/google/firebase/components/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/b;
.implements Lo4/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo4/b<",
        "TT;>;",
        "Lo4/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_PROVIDER:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP_HANDLER:Lo4/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile delegate:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private handler:Lo4/a$a;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/a$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/components/b0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/components/b0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/components/e0;->NOOP_HANDLER:Lo4/a$a;

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/components/c0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/firebase/components/c0;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/firebase/components/e0;->EMPTY_PROVIDER:Lo4/b;

    .line 15
    return-void
.end method

.method private constructor <init>(Lo4/a$a;Lo4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a$a<",
            "TT;>;",
            "Lo4/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/components/e0;->handler:Lo4/a$a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 8
    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/components/e0;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lo4/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/components/e0;->f(Lo4/b;)V

    return-void
.end method

.method public static synthetic d(Lo4/a$a;Lo4/a$a;Lo4/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/components/e0;->h(Lo4/a$a;Lo4/a$a;Lo4/b;)V

    return-void
.end method

.method static e()Lcom/google/firebase/components/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/components/e0;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/components/e0;->NOOP_HANDLER:Lo4/a$a;

    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/components/e0;->EMPTY_PROVIDER:Lo4/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/e0;-><init>(Lo4/a$a;Lo4/b;)V

    .line 10
    return-object v0
.end method

.method private static synthetic f(Lo4/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic g()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic h(Lo4/a$a;Lo4/a$a;Lo4/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p2}, Lo4/a$a;->a(Lo4/b;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lo4/a$a;->a(Lo4/b;)V

    .line 7
    return-void
.end method

.method static i(Lo4/b;)Lcom/google/firebase/components/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo4/b<",
            "TT;>;)",
            "Lcom/google/firebase/components/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/components/e0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/components/e0;-><init>(Lo4/a$a;Lo4/b;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Lo4/a$a;)V
    .locals 3
    .param p1    # Lo4/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/components/e0;->EMPTY_PROVIDER:Lo4/b;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lo4/a$a;->a(Lo4/b;)V

    .line 10
    return-void

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/components/e0;->handler:Lo4/a$a;

    .line 20
    .line 21
    new-instance v2, Lcom/google/firebase/components/d0;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v1, p1}, Lcom/google/firebase/components/d0;-><init>(Lo4/a$a;Lo4/a$a;)V

    .line 25
    .line 26
    iput-object v2, p0, Lcom/google/firebase/components/e0;->handler:Lo4/a$a;

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lo4/a$a;->a(Lo4/b;)V

    .line 34
    :cond_2
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lo4/b;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method j(Lo4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/components/e0;->EMPTY_PROVIDER:Lo4/b;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    monitor-enter p0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/e0;->handler:Lo4/a$a;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/firebase/components/e0;->handler:Lo4/a$a;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/components/e0;->delegate:Lo4/b;

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Lo4/a$a;->a(Lo4/b;)V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "provide() can be called only once."

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
.end method
