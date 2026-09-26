.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyMeasuredLineProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyMeasuredLineProvider.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation


# instance fields
.field private final childConstraints:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gridItemsCount:I

.field private final isVertical:Z

.field private final measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spaceBetweenLines:I

.field private final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "slotSizesSums"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measuredItemProvider"

    .line 8
    .line 9
    .line 10
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "spanLayoutProvider"

    .line 13
    .line 14
    .line 15
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "measuredLineFactory"

    .line 18
    .line 19
    .line 20
    invoke-static {p8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->isVertical:Z

    .line 26
    .line 27
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->gridItemsCount:I

    .line 28
    .line 29
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spaceBetweenLines:I

    .line 30
    .line 31
    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 32
    .line 33
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 34
    .line 35
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;

    .line 36
    .line 37
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2, p3, p0}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;-><init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Le8/p;

    .line 43
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->isVertical:Z

    .line 3
    return p0
.end method


# virtual methods
.method public final b(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->b()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->a()I

    .line 21
    move-result v3

    .line 22
    add-int/2addr v3, v1

    .line 23
    .line 24
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->gridItemsCount:I

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->spaceBetweenLines:I

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v3, v2

    .line 32
    .line 33
    :goto_1
    new-array v4, v1, [Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 34
    move v5, v2

    .line 35
    .line 36
    :goto_2
    if-ge v2, v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->b()Ljava/util/List;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    .line 43
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    check-cast v6, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->g()J

    .line 50
    move-result-wide v6

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v7}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->d(J)I

    .line 54
    move-result v6

    .line 55
    .line 56
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Le8/p;

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v8

    .line 61
    .line 62
    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v9

    .line 65
    .line 66
    .line 67
    invoke-interface {v7, v8, v9}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    check-cast v7, Landroidx/compose/ui/unit/Constraints;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 74
    move-result-wide v7

    .line 75
    .line 76
    iget-object v9, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredItemProvider:Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->a()I

    .line 80
    move-result v10

    .line 81
    add-int/2addr v10, v2

    .line 82
    .line 83
    .line 84
    invoke-static {v10}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->b(I)I

    .line 85
    move-result v10

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v10, v3, v7, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->a(IIJ)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 89
    move-result-object v7

    .line 90
    add-int/2addr v5, v6

    .line 91
    .line 92
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 93
    .line 94
    aput-object v7, v4, v2

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->measuredLineFactory:Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->b()Ljava/util/List;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, p1, v4, v0, v3}, Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;->a(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 107
    move-result-object p1

    .line 108
    return-object p1
.end method

.method public final c()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->childConstraints:Le8/p;

    return-object v0
.end method
