.class final Landroidx/compose/material/TabKt$TabBaselineLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt;->d(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$TabBaselineLayout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n221#2,2:435\n221#2,2:437\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$TabBaselineLayout$2\n*L\n318#1:435,2\n326#1:437,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $icon:Le8/p;
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

.field final synthetic $text:Le8/p;
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
.method constructor <init>(Le8/p;Le8/p;)V
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
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2;->$text:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2;->$icon:Le8/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    const-string v2, "$this$Layout"

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v2, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/compose/material/TabKt$TabBaselineLayout$2;->$text:Le8/p;

    .line 19
    .line 20
    const-string v3, "Collection contains no element matching the predicate."

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    move-object v2, v1

    .line 25
    .line 26
    check-cast v2, Ljava/lang/Iterable;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 43
    .line 44
    .line 45
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    const-string v7, "text"

    .line 49
    .line 50
    .line 51
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v6

    .line 53
    .line 54
    if-eqz v6, :cond_0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    const/4 v15, 0x0

    .line 59
    .line 60
    const/16 v16, 0xb

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    move-wide/from16 v10, p3

    .line 65
    .line 66
    .line 67
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    .line 71
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 72
    move-result-object v2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v1

    .line 80
    :cond_2
    move-object v2, v4

    .line 81
    .line 82
    :goto_0
    iget-object v5, v0, Landroidx/compose/material/TabKt$TabBaselineLayout$2;->$icon:Le8/p;

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    check-cast v1, Ljava/lang/Iterable;

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v5

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 103
    .line 104
    .line 105
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 106
    move-result-object v6

    .line 107
    .line 108
    const-string v7, "icon"

    .line 109
    .line 110
    .line 111
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    move-result v6

    .line 113
    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    move-wide/from16 v6, p3

    .line 117
    .line 118
    .line 119
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 120
    move-result-object v1

    .line 121
    move-object v3, v1

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_3
    move-wide/from16 v6, p3

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_4
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v1

    .line 132
    :cond_5
    move-object v3, v4

    .line 133
    :goto_2
    const/4 v1, 0x0

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 139
    move-result v5

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move v5, v1

    .line 142
    .line 143
    :goto_3
    if-eqz v3, :cond_7

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    :cond_7
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v10

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-static {}, Landroidx/compose/material/TabKt;->j()F

    .line 159
    move-result v1

    .line 160
    goto :goto_4

    .line 161
    .line 162
    .line 163
    :cond_8
    invoke-static {}, Landroidx/compose/material/TabKt;->k()F

    .line 164
    move-result v1

    .line 165
    .line 166
    .line 167
    :goto_4
    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 168
    move-result v11

    .line 169
    .line 170
    if-eqz v2, :cond_9

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-interface {v2, v1}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 178
    move-result v1

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v1

    .line 183
    move-object v7, v1

    .line 184
    goto :goto_5

    .line 185
    :cond_9
    move-object v7, v4

    .line 186
    .line 187
    :goto_5
    if-eqz v2, :cond_a

    .line 188
    .line 189
    .line 190
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    .line 194
    invoke-interface {v2, v1}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v1

    .line 200
    move-object v8, v1

    .line 201
    goto :goto_6

    .line 202
    :cond_a
    move-object v8, v4

    .line 203
    :goto_6
    const/4 v12, 0x0

    .line 204
    .line 205
    new-instance v13, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;

    .line 206
    move-object v1, v13

    .line 207
    .line 208
    move-object/from16 v4, p1

    .line 209
    move v5, v10

    .line 210
    move v6, v11

    .line 211
    .line 212
    .line 213
    invoke-direct/range {v1 .. v8}, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;IILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 214
    const/4 v6, 0x4

    .line 215
    const/4 v7, 0x0

    .line 216
    .line 217
    move-object/from16 v1, p1

    .line 218
    move v2, v10

    .line 219
    move v3, v11

    .line 220
    move-object v4, v12

    .line 221
    move-object v5, v13

    .line 222
    .line 223
    .line 224
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 225
    move-result-object v1

    .line 226
    return-object v1
.end method

.method public synthetic b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->c(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->d(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->a(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->b(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method
