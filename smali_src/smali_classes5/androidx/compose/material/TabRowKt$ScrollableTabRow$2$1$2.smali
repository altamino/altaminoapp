.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,517:1\n1849#2,2:518\n1849#2,2:520\n1849#2,2:522\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2\n*L\n280#1:518,2\n288#1:520,2\n303#1:522,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $constraints:J

.field final synthetic $divider:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $indicator:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutHeight:Lkotlin/jvm/internal/n0;

.field final synthetic $layoutWidth:Lkotlin/jvm/internal/n0;

.field final synthetic $padding:I

.field final synthetic $scrollableTabData:Landroidx/compose/material/ScrollableTabData;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(ILjava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Le8/p;Landroidx/compose/material/ScrollableTabData;IJLkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/ScrollableTabData;",
            "IJ",
            "Lkotlin/jvm/internal/n0;",
            "Lkotlin/jvm/internal/n0;",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$tabPlaceables:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$divider:Le8/p;

    iput-object p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    iput p6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$selectedTabIndex:I

    iput-wide p7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$constraints:J

    iput-object p9, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/n0;

    iput-object p10, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/n0;

    iput-object p11, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$indicator:Le8/q;

    iput p12, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$$dirty:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 19
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
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    iget v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    .line 17
    .line 18
    iget-object v3, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$tabPlaceables:Ljava/util/List;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/Iterable;

    .line 21
    .line 22
    iget-object v10, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v11

    .line 27
    move v12, v2

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    move-object v13, v2

    .line 39
    .line 40
    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x4

    .line 44
    const/4 v8, 0x0

    .line 45
    .line 46
    move-object/from16 v2, p1

    .line 47
    move-object v3, v13

    .line 48
    move v4, v12

    .line 49
    .line 50
    .line 51
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 52
    .line 53
    new-instance v2, Landroidx/compose/material/TabPosition;

    .line 54
    .line 55
    .line 56
    invoke-interface {v10, v12}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 61
    move-result v4

    .line 62
    .line 63
    .line 64
    invoke-interface {v10, v4}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/material/TabPosition;-><init>(FFLkotlin/jvm/internal/k;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 76
    move-result v2

    .line 77
    add-int/2addr v12, v2

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 81
    .line 82
    sget-object v3, Landroidx/compose/material/TabSlots;->Divider:Landroidx/compose/material/TabSlots;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$divider:Le8/p;

    .line 85
    .line 86
    .line 87
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    check-cast v2, Ljava/lang/Iterable;

    .line 91
    .line 92
    iget-wide v7, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$constraints:J

    .line 93
    .line 94
    iget-object v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/n0;

    .line 95
    .line 96
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/n0;

    .line 97
    .line 98
    .line 99
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v18

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    .line 109
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 113
    .line 114
    iget v13, v6, Lkotlin/jvm/internal/n0;->element:I

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    .line 118
    const/16 v16, 0x8

    .line 119
    .line 120
    const/16 v17, 0x0

    .line 121
    move-wide v10, v7

    .line 122
    move v12, v13

    .line 123
    .line 124
    .line 125
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 126
    move-result-wide v3

    .line 127
    .line 128
    .line 129
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 130
    move-result-object v3

    .line 131
    const/4 v4, 0x0

    .line 132
    .line 133
    iget v2, v5, Lkotlin/jvm/internal/n0;->element:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 137
    move-result v10

    .line 138
    .line 139
    sub-int v10, v2, v10

    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x4

    .line 142
    const/4 v13, 0x0

    .line 143
    .line 144
    move-object/from16 v2, p1

    .line 145
    move-object v14, v5

    .line 146
    move v5, v10

    .line 147
    move-object v10, v6

    .line 148
    move v6, v11

    .line 149
    move-wide v15, v7

    .line 150
    move v7, v12

    .line 151
    move-object v8, v13

    .line 152
    .line 153
    .line 154
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 155
    move-object v6, v10

    .line 156
    move-object v5, v14

    .line 157
    move-wide v7, v15

    .line 158
    goto :goto_1

    .line 159
    .line 160
    :cond_1
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 161
    .line 162
    sget-object v3, Landroidx/compose/material/TabSlots;->Indicator:Landroidx/compose/material/TabSlots;

    .line 163
    .line 164
    new-instance v4, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2$3;

    .line 165
    .line 166
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$indicator:Le8/q;

    .line 167
    .line 168
    iget v6, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$$dirty:I

    .line 169
    .line 170
    .line 171
    invoke-direct {v4, v5, v1, v6}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2$3;-><init>(Le8/q;Ljava/util/List;I)V

    .line 172
    .line 173
    .line 174
    const v5, 0xdc14255

    .line 175
    const/4 v6, 0x1

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 179
    move-result-object v4

    .line 180
    .line 181
    .line 182
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    check-cast v2, Ljava/lang/Iterable;

    .line 186
    .line 187
    iget-object v10, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutWidth:Lkotlin/jvm/internal/n0;

    .line 188
    .line 189
    iget-object v11, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$layoutHeight:Lkotlin/jvm/internal/n0;

    .line 190
    .line 191
    .line 192
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v12

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v2

    .line 198
    .line 199
    if-eqz v2, :cond_2

    .line 200
    .line 201
    .line 202
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 206
    .line 207
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 208
    .line 209
    iget v4, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 210
    .line 211
    iget v5, v11, Lkotlin/jvm/internal/n0;->element:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 215
    move-result-wide v3

    .line 216
    .line 217
    .line 218
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 219
    move-result-object v3

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v5, 0x0

    .line 222
    const/4 v6, 0x0

    .line 223
    const/4 v7, 0x4

    .line 224
    const/4 v8, 0x0

    .line 225
    .line 226
    move-object/from16 v2, p1

    .line 227
    .line 228
    .line 229
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 230
    goto :goto_2

    .line 231
    .line 232
    :cond_2
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$scrollableTabData:Landroidx/compose/material/ScrollableTabData;

    .line 233
    .line 234
    iget-object v3, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 235
    .line 236
    iget v4, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$padding:I

    .line 237
    .line 238
    iget v5, v0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->$selectedTabIndex:I

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v3, v4, v1, v5}, Landroidx/compose/material/ScrollableTabData;->c(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V

    .line 242
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2$1$2;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
