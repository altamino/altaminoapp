.class final Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->c(Lj8/i;Landroidx/compose/foundation/lazy/layout/IntervalList;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
        "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
        ">;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $first:I

.field final synthetic $last:I

.field final synthetic $map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$first:I

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$last:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$map:Ljava/util/HashMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;)V
    .locals 6
    .param p1    # Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->b()Le8/l;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->b()Le8/l;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$first:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v1

    .line 40
    .line 41
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$last:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->a()I

    .line 49
    move-result v4

    .line 50
    add-int/2addr v3, v4

    .line 51
    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result v2

    .line 57
    .line 58
    if-gt v1, v2, :cond_1

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->$map:Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b()I

    .line 68
    move-result v5

    .line 69
    .line 70
    sub-int v5, v1, v5

    .line 71
    .line 72
    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v5}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    .line 81
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    if-eq v1, v2, :cond_1

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string v0, "Required value was null."

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1

    .line 99
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt$generateKeyToIndexMap$1$1;->a(Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
