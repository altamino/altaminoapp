.class public final Lcom/google/firebase/components/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final additionalComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private componentRegistrarProcessor:Lcom/google/firebase/components/j;

.field private final defaultExecutor:Ljava/util/concurrent/Executor;

.field private final lazyRegistrars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/components/p$b;->lazyRegistrars:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/firebase/components/p$b;->additionalComponents:Ljava/util/List;

    .line 18
    .line 19
    sget-object v0, Lcom/google/firebase/components/j;->NOOP:Lcom/google/firebase/components/j;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/firebase/components/p$b;->componentRegistrarProcessor:Lcom/google/firebase/components/j;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/firebase/components/p$b;->defaultExecutor:Ljava/util/concurrent/Executor;

    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/components/p$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public b(Lcom/google/firebase/components/c;)Lcom/google/firebase/components/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/c<",
            "*>;)",
            "Lcom/google/firebase/components/p$b;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/p$b;->additionalComponents:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/p$b;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/p$b;->lazyRegistrars:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/components/q;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/firebase/components/q;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/google/firebase/components/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo4/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;)",
            "Lcom/google/firebase/components/p$b;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/p$b;->lazyRegistrars:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    return-object p0
.end method

.method public e()Lcom/google/firebase/components/p;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/firebase/components/p;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/components/p$b;->defaultExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/components/p$b;->lazyRegistrars:Ljava/util/List;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/components/p$b;->additionalComponents:Ljava/util/List;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/firebase/components/p$b;->componentRegistrarProcessor:Lcom/google/firebase/components/j;

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/components/p;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/j;Lcom/google/firebase/components/p$a;)V

    .line 16
    return-object v6
.end method

.method public g(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/p$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/components/p$b;->componentRegistrarProcessor:Lcom/google/firebase/components/j;

    return-object p0
.end method
