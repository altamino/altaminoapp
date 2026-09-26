.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyMeasuredLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyMeasuredLine.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredLine\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,98:1\n13536#2,2:99\n11418#2:101\n11529#2,4:102\n*S KotlinDebug\n*F\n+ 1 LazyMeasuredLine.kt\nandroidx/compose/foundation/lazy/grid/LazyMeasuredLine\n*L\n52#1:99,2\n75#1:101\n75#1:102,4\n*E\n"
.end annotation


# instance fields
.field private final crossAxisSpacing:I

.field private final index:I

.field private final isVertical:Z

.field private final items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private final mainAxisSpacing:I

.field private final slotsPerLine:I

.field private final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;ZI",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->spans:Ljava/util/List;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isVertical:Z

    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->slotsPerLine:I

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSpacing:I

    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->crossAxisSpacing:I

    .line 3
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object p5, p2, p3

    .line 4
    invoke-virtual {p5}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->d()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSize:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSpacing:I

    add-int/2addr p4, p1

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSizeWithSpacings:I

    return-void
.end method

.method public synthetic constructor <init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;IILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;-><init>(I[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;Ljava/util/List;ZILandroidx/compose/ui/unit/LayoutDirection;II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    return v0
.end method

.method public final b()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSize:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSizeWithSpacings:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final f(III)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    array-length v3, v1

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    array-length v3, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    move v15, v6

    .line 16
    .line 17
    :goto_0
    if-ge v4, v3, :cond_3

    .line 18
    .line 19
    aget-object v16, v1, v4

    .line 20
    .line 21
    add-int/lit8 v17, v5, 0x1

    .line 22
    .line 23
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->spans:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->g()J

    .line 33
    move-result-wide v7

    .line 34
    .line 35
    .line 36
    invoke-static {v7, v8}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->d(J)I

    .line 37
    move-result v5

    .line 38
    .line 39
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    .line 41
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 42
    .line 43
    if-ne v7, v8, :cond_0

    .line 44
    .line 45
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->slotsPerLine:I

    .line 46
    sub-int/2addr v7, v6

    .line 47
    sub-int/2addr v7, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move v7, v6

    .line 50
    .line 51
    :goto_1
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isVertical:Z

    .line 52
    .line 53
    if-eqz v8, :cond_1

    .line 54
    .line 55
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    .line 56
    move v12, v9

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    move v12, v7

    .line 59
    .line 60
    :goto_2
    if-eqz v8, :cond_2

    .line 61
    :goto_3
    move v13, v7

    .line 62
    goto :goto_4

    .line 63
    .line 64
    :cond_2
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->index:I

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :goto_4
    iget v14, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->mainAxisSize:I

    .line 68
    .line 69
    move-object/from16 v7, v16

    .line 70
    .line 71
    move/from16 v8, p1

    .line 72
    move v9, v15

    .line 73
    .line 74
    move/from16 v10, p2

    .line 75
    .line 76
    move/from16 v11, p3

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v7 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->f(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->a()I

    .line 84
    move-result v8

    .line 85
    .line 86
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->crossAxisSpacing:I

    .line 87
    add-int/2addr v8, v9

    .line 88
    add-int/2addr v15, v8

    .line 89
    add-int/2addr v6, v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    move/from16 v5, v17

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-object v2
.end method
