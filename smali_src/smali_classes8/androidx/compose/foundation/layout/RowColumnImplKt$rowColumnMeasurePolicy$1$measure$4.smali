.class final Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,937:1\n13601#2,3:938\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4\n*L\n240#1:938,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $arrangement:Le8/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/s<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $beforeCrossAxisAlignmentLine:Lkotlin/jvm/internal/n0;

.field final synthetic $crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field final synthetic $crossAxisLayoutSize:I

.field final synthetic $mainAxisLayoutSize:I

.field final synthetic $mainAxisPositions:[I

.field final synthetic $measurables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

.field final synthetic $placeables:[Landroidx/compose/ui/layout/Placeable;

.field final synthetic $rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Le8/s;ILandroidx/compose/ui/layout/MeasureScope;[ILandroidx/compose/foundation/layout/LayoutOrientation;[Landroidx/compose/foundation/layout/RowColumnParentData;Landroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/n0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;[",
            "Landroidx/compose/ui/layout/Placeable;",
            "Le8/s<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lw7/l0;",
            ">;I",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "[I",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "[",
            "Landroidx/compose/foundation/layout/RowColumnParentData;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            "I",
            "Lkotlin/jvm/internal/n0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$measurables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$arrangement:Le8/s;

    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$mainAxisLayoutSize:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$mainAxisPositions:[I

    iput-object p7, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    iput-object p8, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    iput-object p9, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iput p10, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$crossAxisLayoutSize:I

    iput-object p11, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$beforeCrossAxisAlignmentLine:Lkotlin/jvm/internal/n0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 21
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$layout"

    .line 5
    .line 6
    move-object/from16 v9, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$measurables:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    new-array v4, v1, [I

    .line 18
    const/4 v8, 0x0

    .line 19
    move v2, v8

    .line 20
    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 34
    move-result v3

    .line 35
    .line 36
    aput v3, v4, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$arrangement:Le8/s;

    .line 42
    .line 43
    iget v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$mainAxisLayoutSize:I

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    iget-object v6, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 56
    .line 57
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$mainAxisPositions:[I

    .line 58
    .line 59
    .line 60
    invoke-interface/range {v2 .. v7}, Le8/s;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 65
    .line 66
    iget-object v11, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 67
    .line 68
    iget v12, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$crossAxisLayoutSize:I

    .line 69
    .line 70
    iget-object v13, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 71
    .line 72
    iget-object v14, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 73
    .line 74
    iget-object v15, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$beforeCrossAxisAlignmentLine:Lkotlin/jvm/internal/n0;

    .line 75
    .line 76
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->$mainAxisPositions:[I

    .line 77
    array-length v6, v1

    .line 78
    move v2, v8

    .line 79
    .line 80
    :goto_1
    if-ge v8, v6, :cond_4

    .line 81
    .line 82
    aget-object v3, v1, v8

    .line 83
    .line 84
    add-int/lit8 v16, v2, 0x1

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 88
    .line 89
    aget-object v4, v10, v2

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->i(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    if-nez v4, :cond_1

    .line 96
    move-object v4, v11

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {v3, v13}, Landroidx/compose/foundation/layout/RowColumnImplKt;->o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 100
    move-result v5

    .line 101
    .line 102
    sub-int v5, v12, v5

    .line 103
    .line 104
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 105
    .line 106
    if-ne v13, v0, :cond_2

    .line 107
    .line 108
    sget-object v17, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 109
    .line 110
    :goto_2
    move-object/from16 v18, v1

    .line 111
    .line 112
    move-object/from16 v1, v17

    .line 113
    .line 114
    move/from16 v17, v6

    .line 115
    goto :goto_3

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-interface {v14}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 119
    move-result-object v17

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :goto_3
    iget v6, v15, Lkotlin/jvm/internal/n0;->element:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5, v1, v3, v6}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->a(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    .line 126
    move-result v1

    .line 127
    .line 128
    if-ne v13, v0, :cond_3

    .line 129
    .line 130
    aget v4, v7, v2

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v0, 0x4

    .line 133
    .line 134
    const/16 v19, 0x0

    .line 135
    .line 136
    move-object/from16 v2, p1

    .line 137
    move v5, v1

    .line 138
    .line 139
    move-object/from16 v20, v7

    .line 140
    move v7, v0

    .line 141
    move v0, v8

    .line 142
    .line 143
    move-object/from16 v8, v19

    .line 144
    .line 145
    .line 146
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_3
    move-object/from16 v20, v7

    .line 150
    move v0, v8

    .line 151
    .line 152
    aget v5, v20, v2

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x4

    .line 155
    const/4 v8, 0x0

    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    move v4, v1

    .line 159
    .line 160
    .line 161
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 162
    .line 163
    :goto_4
    add-int/lit8 v8, v0, 0x1

    .line 164
    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    move/from16 v2, v16

    .line 168
    .line 169
    move/from16 v6, v17

    .line 170
    .line 171
    move-object/from16 v1, v18

    .line 172
    .line 173
    move-object/from16 v7, v20

    .line 174
    goto :goto_1

    .line 175
    :cond_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
