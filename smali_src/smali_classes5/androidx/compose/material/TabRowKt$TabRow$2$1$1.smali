.class final Landroidx/compose/material/TabRowKt$TabRow$2$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt$TabRow$2;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,517:1\n1547#2:518\n1618#2,3:519\n1895#2,14:522\n93#3:536\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt$TabRow$2$1$1\n*L\n156#1:518\n156#1:519,3\n160#1:522,14\n163#1:536\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

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

.field final synthetic $tabs:Le8/p;
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


# direct methods
.method constructor <init>(Le8/p;Le8/p;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    iput-object p1, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Le8/q;

    iput p4, p0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    const-string v1, "$this$SubcomposeLayout"

    .line 7
    .line 8
    .line 9
    invoke-static {v13, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 13
    move-result v14

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material/TabSlots;->Tabs:Landroidx/compose/material/TabSlots;

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$tabs:Le8/p;

    .line 18
    .line 19
    .line 20
    invoke-interface {v13, v1, v2}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    .line 27
    div-int v11, v14, v2

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    new-instance v12, Ljava/util/ArrayList;

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    move-object v15, v3

    .line 56
    .line 57
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    .line 61
    const/16 v9, 0xc

    .line 62
    const/4 v10, 0x0

    .line 63
    .line 64
    move-wide/from16 v3, p2

    .line 65
    move v5, v11

    .line 66
    move v6, v11

    .line 67
    .line 68
    .line 69
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 70
    move-result-wide v3

    .line 71
    .line 72
    .line 73
    invoke-interface {v15, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x0

    .line 88
    .line 89
    if-nez v3, :cond_1

    .line 90
    move-object v3, v4

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v5

    .line 100
    .line 101
    if-nez v5, :cond_2

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object v5, v3

    .line 104
    .line 105
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 109
    move-result v5

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v6

    .line 114
    move-object v7, v6

    .line 115
    .line 116
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 120
    move-result v7

    .line 121
    .line 122
    if-ge v5, v7, :cond_4

    .line 123
    move-object v3, v6

    .line 124
    move v5, v7

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v6

    .line 129
    .line 130
    if-nez v6, :cond_3

    .line 131
    .line 132
    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 133
    const/4 v1, 0x0

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 139
    move-result v3

    .line 140
    move v15, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move v15, v1

    .line 143
    .line 144
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .line 149
    :goto_3
    if-ge v1, v2, :cond_6

    .line 150
    .line 151
    new-instance v3, Landroidx/compose/material/TabPosition;

    .line 152
    .line 153
    .line 154
    invoke-interface {v13, v11}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 155
    move-result v5

    .line 156
    int-to-float v6, v1

    .line 157
    mul-float/2addr v5, v6

    .line 158
    .line 159
    .line 160
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 161
    move-result v5

    .line 162
    .line 163
    .line 164
    invoke-interface {v13, v11}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 165
    move-result v6

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v5, v6, v4}, Landroidx/compose/material/TabPosition;-><init>(FFLkotlin/jvm/internal/k;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_3

    .line 175
    .line 176
    :cond_6
    const/16 v16, 0x0

    .line 177
    .line 178
    new-instance v17, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;

    .line 179
    .line 180
    iget-object v4, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$divider:Le8/p;

    .line 181
    .line 182
    iget-object v9, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$indicator:Le8/q;

    .line 183
    .line 184
    iget v8, v0, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->$$dirty:I

    .line 185
    .line 186
    move-object/from16 v1, v17

    .line 187
    move-object v2, v12

    .line 188
    .line 189
    move-object/from16 v3, p1

    .line 190
    move v5, v11

    .line 191
    .line 192
    move-wide/from16 v6, p2

    .line 193
    move v11, v8

    .line 194
    move v8, v15

    .line 195
    move v12, v14

    .line 196
    .line 197
    .line 198
    invoke-direct/range {v1 .. v12}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Le8/p;IJILe8/q;Ljava/util/List;II)V

    .line 199
    const/4 v6, 0x4

    .line 200
    const/4 v7, 0x0

    .line 201
    .line 202
    move-object/from16 v1, p1

    .line 203
    move v2, v14

    .line 204
    move v3, v15

    .line 205
    .line 206
    move-object/from16 v4, v16

    .line 207
    .line 208
    move-object/from16 v5, v17

    .line 209
    .line 210
    .line 211
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 212
    move-result-object v1

    .line 213
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/TabRowKt$TabRow$2$1$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
