.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,291:1\n49#2,4:292\n49#2,6:296\n54#2:302\n*S KotlinDebug\n*F\n+ 1 AlertDialog.kt\nandroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1\n*L\n259#1:292,4\n271#1:296,6\n259#1:302\n*E\n"
.end annotation


# instance fields
.field final synthetic $crossAxisPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mainAxisLayoutSize:I

.field final synthetic $mainAxisSpacing:F

.field final synthetic $sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$sequences:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisSpacing:F

    iput p4, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisLayoutSize:I

    iput-object p5, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$crossAxisPositions:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 22
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
    iget-object v1, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$sequences:Ljava/util/List;

    .line 12
    .line 13
    iget-object v10, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 14
    .line 15
    iget v11, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisSpacing:F

    .line 16
    .line 17
    iget v12, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$mainAxisLayoutSize:I

    .line 18
    .line 19
    iget-object v13, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->$crossAxisPositions:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v14

    .line 24
    const/4 v15, 0x0

    .line 25
    move v8, v15

    .line 26
    .line 27
    :goto_0
    if-ge v8, v14, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    move-object v7, v2

    .line 33
    .line 34
    check-cast v7, Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 39
    .line 40
    new-array v3, v2, [I

    .line 41
    move v4, v15

    .line 42
    .line 43
    :goto_1
    if-ge v4, v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 53
    move-result v5

    .line 54
    .line 55
    .line 56
    invoke-static {v7}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 57
    move-result v6

    .line 58
    .line 59
    if-ge v4, v6, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v10, v11}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 63
    move-result v6

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    move v6, v15

    .line 66
    :goto_2
    add-int/2addr v5, v6

    .line 67
    .line 68
    aput v5, v3, v4

    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->a()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    new-array v6, v2, [I

    .line 80
    move v5, v15

    .line 81
    .line 82
    :goto_3
    if-ge v5, v2, :cond_2

    .line 83
    .line 84
    aput v15, v6, v5

    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-interface {v4, v10, v12, v3, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->c(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 94
    move-result v5

    .line 95
    move v4, v15

    .line 96
    .line 97
    :goto_4
    if-ge v4, v5, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    move-object v3, v2

    .line 103
    .line 104
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 105
    .line 106
    aget v16, v6, v4

    .line 107
    .line 108
    .line 109
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    check-cast v2, Ljava/lang/Number;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 116
    move-result v17

    .line 117
    .line 118
    const/16 v18, 0x0

    .line 119
    .line 120
    const/16 v19, 0x4

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    move-object/from16 v2, p1

    .line 125
    .line 126
    move/from16 v21, v4

    .line 127
    .line 128
    move/from16 v4, v16

    .line 129
    .line 130
    move/from16 v16, v5

    .line 131
    .line 132
    move/from16 v5, v17

    .line 133
    .line 134
    move-object/from16 v17, v6

    .line 135
    .line 136
    move/from16 v6, v18

    .line 137
    .line 138
    move-object/from16 v18, v7

    .line 139
    .line 140
    move/from16 v7, v19

    .line 141
    .line 142
    move/from16 v19, v8

    .line 143
    .line 144
    move-object/from16 v8, v20

    .line 145
    .line 146
    .line 147
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 148
    .line 149
    add-int/lit8 v4, v21, 0x1

    .line 150
    .line 151
    move/from16 v5, v16

    .line 152
    .line 153
    move-object/from16 v6, v17

    .line 154
    .line 155
    move-object/from16 v7, v18

    .line 156
    .line 157
    move/from16 v8, v19

    .line 158
    goto :goto_4

    .line 159
    .line 160
    :cond_3
    move/from16 v19, v8

    .line 161
    .line 162
    add-int/lit8 v8, v19, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
