.class public final Lcoil/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentRegistry.kt\ncoil/ComponentRegistry\n+ 2 Collections.kt\ncoil/util/-Collections\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n12#2,2:178\n15#2:181\n12#2,4:182\n1#3:180\n*S KotlinDebug\n*F\n+ 1 ComponentRegistry.kt\ncoil/ComponentRegistry\n*L\n38#1:178,2\n38#1:181\n52#1:182,4\n*E\n"
.end annotation


# instance fields
.field private final decoderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/decode/i$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetcherFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcoil/fetch/i$a<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Ld0/b<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Le0/d<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcoil/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcoil/intercept/b;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lw7/u<",
            "+",
            "Le0/d<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lw7/u<",
            "+",
            "Ld0/b<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lw7/u<",
            "+",
            "Lcoil/fetch/i$a<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcoil/decode/i$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/b;->interceptors:Ljava/util/List;

    iput-object p2, p0, Lcoil/b;->mappers:Ljava/util/List;

    iput-object p3, p0, Lcoil/b;->keyers:Ljava/util/List;

    iput-object p4, p0, Lcoil/b;->fetcherFactories:Ljava/util/List;

    iput-object p5, p0, Lcoil/b;->decoderFactories:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcoil/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil/decode/i$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/b;->decoderFactories:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcoil/fetch/i$a<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/b;->fetcherFactories:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcoil/intercept/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/b;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Ld0/b<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/b;->keyers:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Le0/d<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/b;->mappers:Ljava/util/List;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/b;->keyers:Ljava/util/List;

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
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    check-cast v3, Lw7/u;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lw7/u;->a()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    check-cast v4, Ld0/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lw7/u;->b()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    .line 40
    const-string/jumbo v3, "null cannot be cast to non-null type coil.key.Keyer<kotlin.Any>"

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v4, p1, p2}, Ld0/b;->a(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    return-object v3

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/b;->mappers:Ljava/util/List;

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
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    check-cast v3, Lw7/u;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lw7/u;->a()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    check-cast v4, Le0/d;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lw7/u;->b()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    .line 40
    const-string/jumbo v3, "null cannot be cast to non-null type coil.map.Mapper<kotlin.Any, *>"

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v4, p1, p2}, Le0/d;->a(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    move-object p1, v3

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object p1
.end method

.method public final h()Lcoil/b$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcoil/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcoil/b$a;-><init>(Lcoil/b;)V

    .line 6
    return-object v0
.end method

.method public final i(Lcoil/fetch/m;Lcoil/request/m;Lcoil/e;I)Lw7/u;
    .locals 2
    .param p1    # Lcoil/fetch/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/fetch/m;",
            "Lcoil/request/m;",
            "Lcoil/e;",
            "I)",
            "Lw7/u<",
            "Lcoil/decode/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/b;->decoderFactories:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    :goto_0
    if-ge p4, v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/b;->decoderFactories:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcoil/decode/i$a;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p3}, Lcoil/decode/i$a;->a(Lcoil/fetch/m;Lcoil/request/m;Lcoil/e;)Lcoil/decode/i;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Lcoil/request/m;Lcoil/e;I)Lw7/u;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/request/m;",
            "Lcoil/e;",
            "I)",
            "Lw7/u<",
            "Lcoil/fetch/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/b;->fetcherFactories:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    :goto_0
    if-ge p4, v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/b;->fetcherFactories:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lw7/u;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcoil/fetch/i$a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "null cannot be cast to non-null type coil.fetch.Fetcher.Factory<kotlin.Any>"

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, p1, p2, p3}, Lcoil/fetch/i$a;->a(Ljava/lang/Object;Lcoil/request/m;Lcoil/e;)Lcoil/fetch/i;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method
