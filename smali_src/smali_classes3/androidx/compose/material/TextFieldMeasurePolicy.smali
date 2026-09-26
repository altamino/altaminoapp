.class final Landroidx/compose/material/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,822:1\n1#2:823\n221#3,2:824\n221#3,2:826\n221#3,2:828\n*S KotlinDebug\n*F\n+ 1 TextField.kt\nandroidx/compose/material/TextFieldMeasurePolicy\n*L\n492#1:824,2\n597#1:826,2\n626#1:828,2\n*E\n"
.end annotation


# instance fields
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "paddingValues"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 11
    .line 12
    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 15
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/material/TextFieldMeasurePolicy;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 3
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/material/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/material/TextFieldMeasurePolicy;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 3
    return p0
.end method

.method private final i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p2, Ljava/lang/Iterable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    .line 19
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-string v3, "TextField"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p4, v1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    move-object v4, v2

    .line 62
    .line 63
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    const-string v5, "Label"

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-eqz v4, :cond_1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v2, v3

    .line 78
    .line 79
    :goto_0
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-interface {p4, v2, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    check-cast v2, Ljava/lang/Number;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 96
    move-result v2

    .line 97
    move v4, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v4, v0

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v5

    .line 108
    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v5

    .line 114
    move-object v6, v5

    .line 115
    .line 116
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 121
    .line 122
    const-string v7, "Trailing"

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v6

    .line 127
    .line 128
    if-eqz v6, :cond_4

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v5, v3

    .line 131
    .line 132
    :goto_2
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    .line 141
    invoke-interface {p4, v5, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    check-cast v2, Ljava/lang/Number;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 148
    move-result v2

    .line 149
    move v5, v2

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v5, v0

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v6

    .line 160
    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    move-object v7, v6

    .line 167
    .line 168
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 169
    .line 170
    .line 171
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    const-string v8, "Leading"

    .line 175
    .line 176
    .line 177
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    move-result v7

    .line 179
    .line 180
    if-eqz v7, :cond_7

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    move-object v6, v3

    .line 183
    .line 184
    :goto_4
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 185
    .line 186
    if-eqz v6, :cond_9

    .line 187
    .line 188
    .line 189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    .line 193
    invoke-interface {p4, v6, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    check-cast v2, Ljava/lang/Number;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 200
    move-result v2

    .line 201
    move v6, v2

    .line 202
    goto :goto_5

    .line 203
    :cond_9
    move v6, v0

    .line 204
    .line 205
    .line 206
    :goto_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v2

    .line 212
    .line 213
    if-eqz v2, :cond_b

    .line 214
    .line 215
    .line 216
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object v2

    .line 218
    move-object v7, v2

    .line 219
    .line 220
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 221
    .line 222
    .line 223
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 224
    move-result-object v7

    .line 225
    .line 226
    const-string v8, "Hint"

    .line 227
    .line 228
    .line 229
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    move-result v7

    .line 231
    .line 232
    if-eqz v7, :cond_a

    .line 233
    move-object v3, v2

    .line 234
    .line 235
    :cond_b
    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 236
    .line 237
    if-eqz v3, :cond_c

    .line 238
    .line 239
    .line 240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object p2

    .line 242
    .line 243
    .line 244
    invoke-interface {p4, v3, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object p2

    .line 246
    .line 247
    check-cast p2, Ljava/lang/Number;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 251
    move-result p2

    .line 252
    goto :goto_6

    .line 253
    :cond_c
    move p2, v0

    .line 254
    .line 255
    :goto_6
    if-lez v4, :cond_d

    .line 256
    const/4 p3, 0x1

    .line 257
    move v2, p3

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    move v2, v0

    .line 260
    .line 261
    .line 262
    :goto_7
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->g()J

    .line 263
    move-result-wide v7

    .line 264
    .line 265
    .line 266
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 267
    move-result v9

    .line 268
    .line 269
    iget-object v10, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 270
    move v3, v4

    .line 271
    move v4, v6

    .line 272
    move v6, p2

    .line 273
    .line 274
    .line 275
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/TextFieldKt;->d(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 276
    move-result p1

    .line 277
    return p1

    .line 278
    .line 279
    :cond_e
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 280
    .line 281
    const-string p2, "Collection contains no element matching the predicate."

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 285
    throw p1
.end method

.method private final j(Ljava/util/List;ILe8/p;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_d

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    .line 19
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-string v3, "TextField"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p3, v1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    move-object v4, v1

    .line 62
    .line 63
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    const-string v5, "Label"

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-eqz v4, :cond_1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v1, v2

    .line 78
    .line 79
    :goto_0
    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-interface {p3, v1, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Number;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 96
    move-result v1

    .line 97
    move v4, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v4, v0

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v5

    .line 108
    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v5

    .line 114
    move-object v6, v5

    .line 115
    .line 116
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 117
    .line 118
    .line 119
    invoke-static {v6}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 120
    move-result-object v6

    .line 121
    .line 122
    const-string v7, "Trailing"

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v6

    .line 127
    .line 128
    if-eqz v6, :cond_4

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v5, v2

    .line 131
    .line 132
    :goto_2
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-interface {p3, v5, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    check-cast v1, Ljava/lang/Number;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 148
    move-result v1

    .line 149
    move v5, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v5, v0

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v6

    .line 160
    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    move-object v7, v6

    .line 167
    .line 168
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 169
    .line 170
    .line 171
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    const-string v8, "Leading"

    .line 175
    .line 176
    .line 177
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    move-result v7

    .line 179
    .line 180
    if-eqz v7, :cond_7

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    move-object v6, v2

    .line 183
    .line 184
    :goto_4
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 185
    .line 186
    if-eqz v6, :cond_9

    .line 187
    .line 188
    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    invoke-interface {p3, v6, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    check-cast v1, Ljava/lang/Number;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 200
    move-result v1

    .line 201
    goto :goto_5

    .line 202
    :cond_9
    move v1, v0

    .line 203
    .line 204
    .line 205
    :goto_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v6

    .line 211
    .line 212
    if-eqz v6, :cond_b

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v6

    .line 217
    move-object v7, v6

    .line 218
    .line 219
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 220
    .line 221
    .line 222
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 223
    move-result-object v7

    .line 224
    .line 225
    const-string v8, "Hint"

    .line 226
    .line 227
    .line 228
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    move-result v7

    .line 230
    .line 231
    if-eqz v7, :cond_a

    .line 232
    move-object v2, v6

    .line 233
    .line 234
    :cond_b
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 235
    .line 236
    if-eqz v2, :cond_c

    .line 237
    .line 238
    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-interface {p3, v2, p1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    check-cast p1, Ljava/lang/Number;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 250
    move-result p1

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move p1, v0

    .line 253
    .line 254
    .line 255
    :goto_6
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->g()J

    .line 256
    move-result-wide v6

    .line 257
    move v2, v5

    .line 258
    move v5, p1

    .line 259
    .line 260
    .line 261
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/TextFieldKt;->e(IIIIIJ)I

    .line 262
    move-result p1

    .line 263
    return p1

    .line 264
    .line 265
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 266
    .line 267
    const-string p2, "Collection contains no element matching the predicate."

    .line 268
    .line 269
    .line 270
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 271
    throw p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 28
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
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v15, p1

    .line 5
    .line 6
    move-object/from16 v0, p2

    .line 7
    .line 8
    const-string v1, "$this$measure"

    .line 9
    .line 10
    .line 11
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v1, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v1, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v15, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result v2

    .line 27
    .line 28
    iget-object v1, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v15, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->m()F

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v15, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 44
    move-result v12

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    .line 50
    const/16 v9, 0xa

    .line 51
    const/4 v10, 0x0

    .line 52
    .line 53
    move-wide/from16 v3, p3

    .line 54
    .line 55
    .line 56
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 57
    move-result-wide v3

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    move-object v8, v6

    .line 75
    .line 76
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 77
    .line 78
    .line 79
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 80
    move-result-object v8

    .line 81
    .line 82
    const-string v9, "Leading"

    .line 83
    .line 84
    .line 85
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v8

    .line 87
    .line 88
    if-eqz v8, :cond_0

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v6, 0x0

    .line 91
    .line 92
    :goto_0
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 93
    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-interface {v6, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 98
    move-result-object v5

    .line 99
    move-object v8, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/4 v8, 0x0

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v9

    .line 114
    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v9

    .line 120
    move-object v10, v9

    .line 121
    .line 122
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 123
    .line 124
    .line 125
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 126
    move-result-object v10

    .line 127
    .line 128
    const-string v11, "Trailing"

    .line 129
    .line 130
    .line 131
    invoke-static {v10, v11}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    move-result v10

    .line 133
    .line 134
    if-eqz v10, :cond_3

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const/4 v9, 0x0

    .line 137
    .line 138
    :goto_2
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 139
    .line 140
    if-eqz v9, :cond_5

    .line 141
    neg-int v6, v5

    .line 142
    .line 143
    const/16 v19, 0x0

    .line 144
    .line 145
    const/16 v20, 0x2

    .line 146
    .line 147
    const/16 v21, 0x0

    .line 148
    .line 149
    move-wide/from16 v16, v3

    .line 150
    .line 151
    move/from16 v18, v6

    .line 152
    .line 153
    .line 154
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->j(JIIILjava/lang/Object;)J

    .line 155
    move-result-wide v10

    .line 156
    .line 157
    .line 158
    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 159
    move-result-object v6

    .line 160
    move-object v9, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    const/4 v9, 0x0

    .line 163
    .line 164
    .line 165
    :goto_3
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 166
    move-result v6

    .line 167
    add-int/2addr v5, v6

    .line 168
    neg-int v6, v1

    .line 169
    neg-int v5, v5

    .line 170
    .line 171
    .line 172
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 173
    move-result-wide v3

    .line 174
    .line 175
    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v10

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v11

    .line 182
    .line 183
    if-eqz v11, :cond_7

    .line 184
    .line 185
    .line 186
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v11

    .line 188
    move-object v13, v11

    .line 189
    .line 190
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 191
    .line 192
    .line 193
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 194
    move-result-object v13

    .line 195
    .line 196
    const-string v7, "Label"

    .line 197
    .line 198
    .line 199
    invoke-static {v13, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    move-result v7

    .line 201
    .line 202
    if-eqz v7, :cond_6

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    const/4 v11, 0x0

    .line 205
    .line 206
    :goto_4
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 207
    .line 208
    if-eqz v11, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-interface {v11, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 212
    move-result-object v3

    .line 213
    goto :goto_5

    .line 214
    :cond_8
    const/4 v3, 0x0

    .line 215
    :goto_5
    const/4 v4, 0x0

    .line 216
    .line 217
    if-eqz v3, :cond_a

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 221
    move-result-object v7

    .line 222
    .line 223
    .line 224
    invoke-interface {v3, v7}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 225
    move-result v7

    .line 226
    .line 227
    const/high16 v10, -0x80000000

    .line 228
    .line 229
    if-eq v7, v10, :cond_9

    .line 230
    goto :goto_6

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 234
    move-result v7

    .line 235
    goto :goto_6

    .line 236
    :cond_a
    move v7, v4

    .line 237
    .line 238
    .line 239
    :goto_6
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 240
    move-result v11

    .line 241
    .line 242
    if-eqz v3, :cond_b

    .line 243
    sub-int/2addr v6, v12

    .line 244
    sub-int/2addr v6, v11

    .line 245
    goto :goto_7

    .line 246
    :cond_b
    neg-int v6, v2

    .line 247
    sub-int/2addr v6, v1

    .line 248
    .line 249
    :goto_7
    const/16 v18, 0x0

    .line 250
    .line 251
    const/16 v19, 0x0

    .line 252
    .line 253
    const/16 v20, 0x0

    .line 254
    .line 255
    const/16 v21, 0x0

    .line 256
    .line 257
    const/16 v22, 0xb

    .line 258
    .line 259
    const/16 v23, 0x0

    .line 260
    .line 261
    move-wide/from16 v16, p3

    .line 262
    .line 263
    move/from16 v26, v12

    .line 264
    .line 265
    .line 266
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 267
    move-result-wide v12

    .line 268
    .line 269
    .line 270
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 271
    move-result-wide v5

    .line 272
    .line 273
    .line 274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    .line 278
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    move-result v10

    .line 280
    .line 281
    if-eqz v10, :cond_11

    .line 282
    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    move-result-object v10

    .line 286
    .line 287
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 288
    .line 289
    .line 290
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 291
    move-result-object v12

    .line 292
    .line 293
    const-string v13, "TextField"

    .line 294
    .line 295
    .line 296
    invoke-static {v12, v13}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    move-result v12

    .line 298
    .line 299
    if-eqz v12, :cond_c

    .line 300
    .line 301
    .line 302
    invoke-interface {v10, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 303
    move-result-object v10

    .line 304
    .line 305
    const/16 v18, 0x0

    .line 306
    .line 307
    const/16 v19, 0x0

    .line 308
    .line 309
    const/16 v20, 0x0

    .line 310
    .line 311
    const/16 v21, 0x0

    .line 312
    .line 313
    const/16 v22, 0xe

    .line 314
    .line 315
    const/16 v23, 0x0

    .line 316
    .line 317
    move-wide/from16 v16, v5

    .line 318
    .line 319
    .line 320
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 321
    move-result-wide v5

    .line 322
    .line 323
    .line 324
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    .line 328
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    move-result v1

    .line 330
    .line 331
    if-eqz v1, :cond_e

    .line 332
    .line 333
    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    move-result-object v1

    .line 336
    move-object v12, v1

    .line 337
    .line 338
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 339
    .line 340
    .line 341
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 342
    move-result-object v12

    .line 343
    .line 344
    const-string v13, "Hint"

    .line 345
    .line 346
    .line 347
    invoke-static {v12, v13}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    move-result v12

    .line 349
    .line 350
    if-eqz v12, :cond_d

    .line 351
    goto :goto_8

    .line 352
    :cond_e
    const/4 v1, 0x0

    .line 353
    .line 354
    :goto_8
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 355
    .line 356
    if-eqz v1, :cond_f

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 360
    move-result-object v0

    .line 361
    move-object v12, v0

    .line 362
    goto :goto_9

    .line 363
    :cond_f
    const/4 v12, 0x0

    .line 364
    .line 365
    .line 366
    :goto_9
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 367
    move-result v16

    .line 368
    .line 369
    .line 370
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 371
    move-result v17

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 375
    move-result v18

    .line 376
    .line 377
    .line 378
    invoke-static {v3}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 379
    move-result v19

    .line 380
    .line 381
    .line 382
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 383
    move-result v20

    .line 384
    .line 385
    move-wide/from16 v21, p3

    .line 386
    .line 387
    .line 388
    invoke-static/range {v16 .. v22}, Landroidx/compose/material/TextFieldKt;->e(IIIIIJ)I

    .line 389
    move-result v27

    .line 390
    .line 391
    .line 392
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 393
    move-result v16

    .line 394
    .line 395
    if-eqz v3, :cond_10

    .line 396
    const/4 v4, 0x1

    .line 397
    .line 398
    :cond_10
    move/from16 v17, v4

    .line 399
    .line 400
    .line 401
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 402
    move-result v19

    .line 403
    .line 404
    .line 405
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 406
    move-result v20

    .line 407
    .line 408
    .line 409
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 410
    move-result v21

    .line 411
    .line 412
    .line 413
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 414
    move-result v24

    .line 415
    .line 416
    iget-object v0, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 417
    .line 418
    move/from16 v18, v11

    .line 419
    .line 420
    move-wide/from16 v22, p3

    .line 421
    .line 422
    move-object/from16 v25, v0

    .line 423
    .line 424
    .line 425
    invoke-static/range {v16 .. v25}, Landroidx/compose/material/TextFieldKt;->d(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 426
    move-result v16

    .line 427
    .line 428
    const/16 v17, 0x0

    .line 429
    .line 430
    new-instance v18, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;

    .line 431
    .line 432
    move-object/from16 v0, v18

    .line 433
    move-object v1, v3

    .line 434
    move v3, v7

    .line 435
    .line 436
    move/from16 v4, v27

    .line 437
    .line 438
    move/from16 v5, v16

    .line 439
    move-object v6, v10

    .line 440
    move-object v7, v12

    .line 441
    .line 442
    move-object/from16 v10, p0

    .line 443
    .line 444
    move/from16 v12, v26

    .line 445
    .line 446
    move-object/from16 v13, p1

    .line 447
    .line 448
    .line 449
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V

    .line 450
    const/4 v5, 0x4

    .line 451
    const/4 v6, 0x0

    .line 452
    .line 453
    move-object/from16 v0, p1

    .line 454
    .line 455
    move/from16 v1, v27

    .line 456
    .line 457
    move/from16 v2, v16

    .line 458
    .line 459
    move-object/from16 v3, v17

    .line 460
    .line 461
    move-object/from16 v4, v18

    .line 462
    .line 463
    .line 464
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 465
    move-result-object v0

    .line 466
    return-object v0

    .line 467
    .line 468
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 469
    .line 470
    const-string v1, "Collection contains no element matching the predicate."

    .line 471
    .line 472
    .line 473
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 474
    throw v0
.end method

.method public b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/TextFieldMeasurePolicy;->j(Ljava/util/List;ILe8/p;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/TextFieldMeasurePolicy;->j(Ljava/util/List;ILe8/p;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method
