.class public Lcom/google/firebase/components/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/s;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/google/firebase/components/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private instantiation:I

.field private name:Ljava/lang/String;

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method private varargs constructor <init>(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;[",
            "Lcom/google/firebase/components/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/c$b;->name:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/c$b;->dependencies:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/components/c$b;->instantiation:I

    iput v1, p0, Lcom/google/firebase/components/c$b;->type:I

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/c$b;->publishedEvents:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 16
    invoke-static {p1, v2}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 19
    invoke-static {v0, v2}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 20
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;Lcom/google/firebase/components/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/c$b;-><init>(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/c$b;->name:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/c$b;->dependencies:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/components/c$b;->instantiation:I

    iput v1, p0, Lcom/google/firebase/components/c$b;->type:I

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/c$b;->publishedEvents:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 7
    invoke-static {p1, v2}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 10
    invoke-static {v0, v2}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 11
    invoke-static {v0}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/c$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/c$b;)Lcom/google/firebase/components/c$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/components/c$b;->g()Lcom/google/firebase/components/c$b;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private g()Lcom/google/firebase/components/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/components/c$b;->type:I

    return-object p0
.end method

.method private i(I)Lcom/google/firebase/components/c$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/components/c$b;->instantiation:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    const-string v1, "Instantiation type has already been set."

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/firebase/components/f0;->d(ZLjava/lang/String;)V

    .line 13
    .line 14
    iput p1, p0, Lcom/google/firebase/components/c$b;->instantiation:I

    .line 15
    return-object p0
.end method

.method private j(Lcom/google/firebase/components/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/g0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/firebase/components/f0;->a(ZLjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/s;",
            ")",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Null dependency"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/firebase/components/c$b;->j(Lcom/google/firebase/components/g0;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/components/c$b;->dependencies:Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    return-object p0
.end method

.method public c()Lcom/google/firebase/components/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/components/c$b;->i(I)Lcom/google/firebase/components/c$b;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public d()Lcom/google/firebase/components/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/c$b;->factory:Lcom/google/firebase/components/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    const-string v1, "Missing required property: factory."

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/firebase/components/f0;->d(ZLjava/lang/String;)V

    .line 13
    .line 14
    new-instance v0, Lcom/google/firebase/components/c;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/firebase/components/c$b;->name:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/util/HashSet;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/components/c$b;->providedInterfaces:Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    new-instance v5, Ljava/util/HashSet;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/firebase/components/c$b;->dependencies:Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    iget v6, p0, Lcom/google/firebase/components/c$b;->instantiation:I

    .line 33
    .line 34
    iget v7, p0, Lcom/google/firebase/components/c$b;->type:I

    .line 35
    .line 36
    iget-object v8, p0, Lcom/google/firebase/components/c$b;->factory:Lcom/google/firebase/components/h;

    .line 37
    .line 38
    iget-object v9, p0, Lcom/google/firebase/components/c$b;->publishedEvents:Ljava/util/Set;

    .line 39
    const/4 v10, 0x0

    .line 40
    move-object v2, v0

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/components/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/h;Ljava/util/Set;Lcom/google/firebase/components/c$a;)V

    .line 44
    return-object v0
.end method

.method public e()Lcom/google/firebase/components/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/components/c$b;->i(I)Lcom/google/firebase/components/c$b;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/h<",
            "TT;>;)",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Null factory"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/firebase/components/f0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/firebase/components/h;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/components/c$b;->factory:Lcom/google/firebase/components/h;

    .line 11
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/components/c$b;->name:Ljava/lang/String;

    return-object p0
.end method
