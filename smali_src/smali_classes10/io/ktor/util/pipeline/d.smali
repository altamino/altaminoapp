.class public Lio/ktor/util/pipeline/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSubject:",
        "Ljava/lang/Object;",
        "TContext:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n1549#2:504\n1620#2,3:505\n1855#2,2:508\n800#2,11:510\n288#2,2:521\n1855#2,2:523\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n*L\n43#1:504\n43#1:505,3\n70#1:508,2\n173#1:510,11\n174#1:521,2\n214#1:523,2\n*E\n"
.end annotation


# instance fields
.field private volatile synthetic _interceptors:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final attributes:Lio/ktor/util/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final developmentMode:Z

.field private interceptorsListShared:Z

.field private interceptorsListSharedPhase:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private interceptorsQuantity:I

.field private final phasesRaw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/h;Ljava/util/List;)V
    .locals 2
    .param p1    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/h;",
            "Ljava/util/List<",
            "+",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lio/ktor/util/pipeline/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;-><init>([Lio/ktor/util/pipeline/h;)V

    .line 5
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/q;

    .line 7
    invoke-virtual {p0, p1, v0}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lio/ktor/util/pipeline/h;)V
    .locals 1
    .param p1    # [Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phases"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lio/ktor/util/d;->a(Z)Lio/ktor/util/b;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/util/pipeline/d;->attributes:Lio/ktor/util/b;

    .line 3
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/ktor/util/pipeline/d;->_interceptors:Ljava/lang/Object;

    return-void
.end method

.method private final b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le8/q<",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lio/ktor/util/pipeline/d;->interceptorsQuantity:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;->m(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-ne v0, v4, :cond_4

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-ltz v0, :cond_4

    .line 30
    move v4, v3

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    instance-of v6, v5, Lio/ktor/util/pipeline/c;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    check-cast v5, Lio/ktor/util/pipeline/c;

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v5, v2

    .line 43
    .line 44
    :goto_1
    if-nez v5, :cond_2

    .line 45
    goto :goto_2

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v5}, Lio/ktor/util/pipeline/c;->h()Z

    .line 49
    move-result v6

    .line 50
    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lio/ktor/util/pipeline/c;->i()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v5}, Lio/ktor/util/pipeline/d;->p(Lio/ktor/util/pipeline/c;)V

    .line 59
    return-object v0

    .line 60
    .line 61
    :cond_3
    :goto_2
    if-eq v4, v0, :cond_4

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 73
    move-result v4

    .line 74
    .line 75
    if-ltz v4, :cond_7

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    instance-of v6, v5, Lio/ktor/util/pipeline/c;

    .line 82
    .line 83
    if-eqz v6, :cond_5

    .line 84
    .line 85
    check-cast v5, Lio/ktor/util/pipeline/c;

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move-object v5, v2

    .line 88
    .line 89
    :goto_4
    if-nez v5, :cond_6

    .line 90
    goto :goto_5

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {v5, v0}, Lio/ktor/util/pipeline/c;->b(Ljava/util/List;)V

    .line 94
    .line 95
    :goto_5
    if-eq v3, v4, :cond_7

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_3

    .line 99
    .line 100
    .line 101
    :cond_7
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;->m(Ljava/util/List;)V

    .line 102
    return-object v0
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/g;)Lio/ktor/util/pipeline/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContext;TTSubject;",
            "Lkotlin/coroutines/g;",
            ")",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->q()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/util/pipeline/d;->g()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, p2, p3, v1}, Lio/ktor/util/pipeline/f;->a(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/g;Z)Lio/ktor/util/pipeline/e;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final e(Lio/ktor/util/pipeline/h;)Lio/ktor/util/pipeline/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/h;",
            ")",
            "Lio/ktor/util/pipeline/c<",
            "TTSubject;TTContext;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-ne v3, p1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lio/ktor/util/pipeline/c;

    .line 18
    .line 19
    sget-object v3, Lio/ktor/util/pipeline/i$c;->INSTANCE:Lio/ktor/util/pipeline/i$c;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1, v3}, Lio/ktor/util/pipeline/c;-><init>(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/i;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object v1

    .line 27
    .line 28
    :cond_0
    instance-of v4, v3, Lio/ktor/util/pipeline/c;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    check-cast v3, Lio/ktor/util/pipeline/c;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lio/ktor/util/pipeline/c;->e()Lio/ktor/util/pipeline/h;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    if-ne v4, p1, :cond_1

    .line 39
    return-object v3

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method private final f(Lio/ktor/util/pipeline/h;)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eq v3, p1, :cond_1

    .line 16
    .line 17
    instance-of v4, v3, Lio/ktor/util/pipeline/c;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v3, Lio/ktor/util/pipeline/c;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lio/ktor/util/pipeline/c;->e()Lio/ktor/util/pipeline/h;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return v2

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method private final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le8/q<",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/pipeline/d;->_interceptors:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/List;

    .line 5
    return-object v0
.end method

.method private final i(Lio/ktor/util/pipeline/h;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    if-eq v4, p1, :cond_1

    .line 17
    .line 18
    instance-of v5, v4, Lio/ktor/util/pipeline/c;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    check-cast v4, Lio/ktor/util/pipeline/c;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lio/ktor/util/pipeline/c;->e()Lio/ktor/util/pipeline/h;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    if-ne v4, p1, :cond_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_2
    return v2
.end method

.method private final m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->o(Ljava/util/List;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lio/ktor/util/pipeline/d;->interceptorsListShared:Z

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p0, Lio/ktor/util/pipeline/d;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/h;

    .line 10
    return-void
.end method

.method private final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;->o(Ljava/util/List;)V

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput-boolean v1, p0, Lio/ktor/util/pipeline/d;->interceptorsListShared:Z

    .line 8
    .line 9
    iput-object v0, p0, Lio/ktor/util/pipeline/d;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/h;

    .line 10
    return-void
.end method

.method private final o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/util/pipeline/d;->_interceptors:Ljava/lang/Object;

    return-void
.end method

.method private final p(Lio/ktor/util/pipeline/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/c<",
            "TTSubject;TTContext;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lio/ktor/util/pipeline/c;->i()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/d;->o(Ljava/util/List;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/ktor/util/pipeline/d;->interceptorsListShared:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/util/pipeline/c;->e()Lio/ktor/util/pipeline/h;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lio/ktor/util/pipeline/d;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/h;

    .line 17
    return-void
.end method

.method private final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le8/q<",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;TTSubject;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->h()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->b()Ljava/util/List;

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Lio/ktor/util/pipeline/d;->interceptorsListShared:Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->h()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method private final r(Lio/ktor/util/pipeline/h;Le8/q;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/h;",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->h()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v1, p0, Lio/ktor/util/pipeline/d;->interceptorsListShared:Z

    .line 19
    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/v0;->l(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->interceptorsListSharedPhase:Lio/ktor/util/pipeline/h;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return v3

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->f(Lio/ktor/util/pipeline/h;)I

    .line 56
    move-result v1

    .line 57
    .line 58
    iget-object v4, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 62
    move-result v4

    .line 63
    .line 64
    if-ne v1, v4, :cond_3

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    return v2

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->e(Lio/ktor/util/pipeline/h;)Lio/ktor/util/pipeline/c;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lio/ktor/util/pipeline/c;->a(Le8/q;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return v3

    .line 81
    :cond_5
    :goto_1
    return v2
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContext;TTSubject;",
            "Lkotlin/coroutines/d<",
            "-TTSubject;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p3}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v0}, Lio/ktor/util/pipeline/d;->c(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/g;)Lio/ktor/util/pipeline/e;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lio/ktor/util/pipeline/e;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/util/pipeline/d;->developmentMode:Z

    return v0
.end method

.method public final j(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/h;)V
    .locals 6
    .param p1    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "phase"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lio/ktor/util/pipeline/d;->i(Lio/ktor/util/pipeline/h;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->f(Lio/ktor/util/pipeline/h;)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_7

    .line 25
    .line 26
    add-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    iget-object v2, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-gt v1, v2, :cond_6

    .line 35
    .line 36
    :goto_0
    iget-object v3, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    instance-of v4, v3, Lio/ktor/util/pipeline/c;

    .line 43
    const/4 v5, 0x0

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    check-cast v3, Lio/ktor/util/pipeline/c;

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v3, v5

    .line 50
    .line 51
    :goto_1
    if-eqz v3, :cond_6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lio/ktor/util/pipeline/c;->f()Lio/ktor/util/pipeline/i;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_2
    instance-of v4, v3, Lio/ktor/util/pipeline/i$a;

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    move-object v5, v3

    .line 64
    .line 65
    check-cast v5, Lio/ktor/util/pipeline/i$a;

    .line 66
    .line 67
    :cond_3
    if-eqz v5, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Lio/ktor/util/pipeline/i$a;->a()Lio/ktor/util/pipeline/h;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    if-nez v3, :cond_4

    .line 74
    goto :goto_2

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    move v0, v1

    .line 82
    .line 83
    :cond_5
    :goto_2
    if-eq v1, v2, :cond_6

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_6
    :goto_3
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    new-instance v2, Lio/ktor/util/pipeline/c;

    .line 93
    .line 94
    new-instance v3, Lio/ktor/util/pipeline/i$a;

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, p1}, Lio/ktor/util/pipeline/i$a;-><init>(Lio/ktor/util/pipeline/h;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p2, v3}, Lio/ktor/util/pipeline/c;-><init>(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/i;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    return-void

    .line 105
    .line 106
    :cond_7
    new-instance p2, Lio/ktor/util/pipeline/b;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v1, "Phase "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p1, " was not registered for this pipeline"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, p1}, Lio/ktor/util/pipeline/b;-><init>(Ljava/lang/String;)V

    .line 132
    throw p2
.end method

.method public final k(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/h;)V
    .locals 4
    .param p1    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "reference"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "phase"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lio/ktor/util/pipeline/d;->i(Lio/ktor/util/pipeline/h;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->f(Lio/ktor/util/pipeline/h;)I

    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lio/ktor/util/pipeline/d;->phasesRaw:Ljava/util/List;

    .line 27
    .line 28
    new-instance v2, Lio/ktor/util/pipeline/c;

    .line 29
    .line 30
    new-instance v3, Lio/ktor/util/pipeline/i$b;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p1}, Lio/ktor/util/pipeline/i$b;-><init>(Lio/ktor/util/pipeline/h;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p2, v3}, Lio/ktor/util/pipeline/c;-><init>(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/i;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_1
    new-instance p2, Lio/ktor/util/pipeline/b;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "Phase "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, " was not registered for this pipeline"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1}, Lio/ktor/util/pipeline/b;-><init>(Ljava/lang/String;)V

    .line 68
    throw p2
.end method

.method public final l(Lio/ktor/util/pipeline/h;Le8/q;)V
    .locals 2
    .param p1    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/h;",
            "Le8/q<",
            "-",
            "Lio/ktor/util/pipeline/e<",
            "TTSubject;TTContext;>;-TTSubject;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "phase"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lio/ktor/util/pipeline/d;->e(Lio/ktor/util/pipeline/h;)Lio/ktor/util/pipeline/c;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v1}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Le8/q;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lio/ktor/util/pipeline/d;->r(Lio/ktor/util/pipeline/h;Le8/q;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget p1, p0, Lio/ktor/util/pipeline/d;->interceptorsQuantity:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Lio/ktor/util/pipeline/d;->interceptorsQuantity:I

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0, p2}, Lio/ktor/util/pipeline/c;->a(Le8/q;)V

    .line 40
    .line 41
    iget p1, p0, Lio/ktor/util/pipeline/d;->interceptorsQuantity:I

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput p1, p0, Lio/ktor/util/pipeline/d;->interceptorsQuantity:I

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lio/ktor/util/pipeline/d;->n()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lio/ktor/util/pipeline/d;->a()V

    .line 52
    return-void

    .line 53
    .line 54
    :cond_1
    new-instance p2, Lio/ktor/util/pipeline/b;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v1, "Phase "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p1, " was not registered for this pipeline"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p1}, Lio/ktor/util/pipeline/b;-><init>(Ljava/lang/String;)V

    .line 80
    throw p2
.end method
