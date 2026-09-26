.class public final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemProvider;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation


# instance fields
.field private final itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemsSnapshot:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemsSnapshot"

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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->b(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public b(ILandroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x659c2956

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    and-int/lit8 v0, p3, 0xe

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p3

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    .line 41
    :cond_3
    and-int/lit8 v1, v0, 0x5b

    .line 42
    .line 43
    const/16 v2, 0x12

    .line 44
    .line 45
    if-ne v1, v2, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    goto :goto_3

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 56
    goto :goto_4

    .line 57
    .line 58
    :cond_5
    :goto_3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->e()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    shl-int/lit8 v0, v0, 0x3

    .line 71
    .line 72
    and-int/lit8 v0, v0, 0x70

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x200

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->a(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    .line 78
    .line 79
    .line 80
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    if-nez p2, :cond_6

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_6
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;II)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 93
    :goto_5
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->f()Ljava/util/Map;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->e(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public e()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->d()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemsSnapshot:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListItemsSnapshot;->c()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
