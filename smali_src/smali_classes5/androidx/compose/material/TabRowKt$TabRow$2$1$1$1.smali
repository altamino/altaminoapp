.class final Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,517:1\n1858#2,3:518\n1849#2,2:521\n1849#2,2:523\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1$1\n*L\n167#1:518,3\n171#1:521,2\n178#1:523,2\n*E\n"
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

.field final synthetic $tabPlaceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabRowHeight:I

.field final synthetic $tabRowWidth:I

.field final synthetic $tabWidth:I

.field final synthetic $this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Le8/p;IJILe8/q;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;IJI",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabPlaceables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$divider:Le8/p;

    iput p4, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabWidth:I

    iput-wide p5, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$constraints:J

    iput p7, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    iput-object p8, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$indicator:Le8/q;

    iput-object p9, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabPositions:Ljava/util/List;

    iput p10, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$$dirty:I

    iput p11, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabRowWidth:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 18
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
    iget-object v1, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabPlaceables:Ljava/util/List;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    iget v10, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabWidth:I

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    add-int/lit8 v11, v2, 0x1

    .line 33
    .line 34
    if-gez v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 38
    .line 39
    :cond_0
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 40
    .line 41
    mul-int v4, v2, v10

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x4

    .line 45
    const/4 v8, 0x0

    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 51
    move v2, v11

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    iget-object v1, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 55
    .line 56
    sget-object v2, Landroidx/compose/material/TabSlots;->Divider:Landroidx/compose/material/TabSlots;

    .line 57
    .line 58
    iget-object v3, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$divider:Le8/p;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    iget-wide v7, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$constraints:J

    .line 67
    .line 68
    iget v6, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v15, 0x0

    .line 89
    .line 90
    const/16 v16, 0xb

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    move-wide v10, v7

    .line 94
    .line 95
    .line 96
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 97
    move-result-wide v3

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 106
    move-result v2

    .line 107
    .line 108
    sub-int v5, v6, v2

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x4

    .line 111
    const/4 v12, 0x0

    .line 112
    .line 113
    move-object/from16 v2, p1

    .line 114
    move v13, v6

    .line 115
    move v6, v10

    .line 116
    move-wide v14, v7

    .line 117
    move v7, v11

    .line 118
    move-object v8, v12

    .line 119
    .line 120
    .line 121
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 122
    move v6, v13

    .line 123
    move-wide v7, v14

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_2
    iget-object v1, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$this_SubcomposeLayout:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 127
    .line 128
    sget-object v2, Landroidx/compose/material/TabSlots;->Indicator:Landroidx/compose/material/TabSlots;

    .line 129
    .line 130
    new-instance v3, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1$3;

    .line 131
    .line 132
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$indicator:Le8/q;

    .line 133
    .line 134
    iget-object v5, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabPositions:Ljava/util/List;

    .line 135
    .line 136
    iget v6, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$$dirty:I

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v4, v5, v6}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1$3;-><init>(Le8/q;Ljava/util/List;I)V

    .line 140
    .line 141
    .line 142
    const v4, -0x4ff71d75

    .line 143
    const/4 v5, 0x1

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    check-cast v1, Ljava/lang/Iterable;

    .line 154
    .line 155
    iget v10, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabRowWidth:I

    .line 156
    .line 157
    iget v11, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->$tabRowHeight:I

    .line 158
    .line 159
    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v2

    .line 166
    .line 167
    if-eqz v2, :cond_3

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 174
    .line 175
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v10, v11}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 179
    move-result-wide v3

    .line 180
    .line 181
    .line 182
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 183
    move-result-object v3

    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    const/4 v7, 0x4

    .line 188
    const/4 v8, 0x0

    .line 189
    .line 190
    move-object/from16 v2, p1

    .line 191
    .line 192
    .line 193
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 194
    goto :goto_2

    .line 195
    :cond_3
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
