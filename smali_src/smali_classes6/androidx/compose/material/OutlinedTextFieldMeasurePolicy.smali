.class final Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldMeasurePolicy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,831:1\n1#2:832\n221#3,2:833\n221#3,2:835\n221#3,2:837\n221#3,2:839\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldMeasurePolicy\n*L\n501#1:833,2\n529#1:835,2\n598#1:837,2\n627#1:839,2\n*E\n"
.end annotation


# instance fields
.field private final animationProgress:F

.field private final onLabelMeasured:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/geometry/Size;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleLine:Z


# direct methods
.method public constructor <init>(Le8/l;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lw7/l0;",
            ">;ZF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onLabelMeasured"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "paddingValues"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Le8/l;

    .line 16
    .line 17
    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 18
    .line 19
    iput p3, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 20
    .line 21
    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 22
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 3
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 3
    return p0
.end method

.method private final i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I
    .locals 10
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
    move-result v3

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-interface {p4, v1, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-interface {p4, v5, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    invoke-interface {p4, v6, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object p2

    .line 207
    .line 208
    .line 209
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v6

    .line 211
    .line 212
    if-eqz v6, :cond_b

    .line 213
    .line 214
    .line 215
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object p2

    .line 241
    .line 242
    .line 243
    invoke-interface {p4, v2, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object p2

    .line 245
    .line 246
    check-cast p2, Ljava/lang/Number;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 250
    move-result p2

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move p2, v0

    .line 253
    .line 254
    .line 255
    :goto_6
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->g()J

    .line 256
    move-result-wide v6

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 260
    move-result v8

    .line 261
    .line 262
    iget-object v9, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 263
    move v2, v5

    .line 264
    move v5, p2

    .line 265
    .line 266
    .line 267
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/OutlinedTextFieldKt;->d(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 268
    move-result p1

    .line 269
    return p1

    .line 270
    .line 271
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 272
    .line 273
    const-string p2, "Collection contains no element matching the predicate."

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 277
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
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/OutlinedTextFieldKt;->e(IIIIIJ)I

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
    .locals 29
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
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    move-object/from16 v0, p2

    .line 7
    .line 8
    const-string v1, "$this$measure"

    .line 9
    .line 10
    .line 11
    invoke-static {v12, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v1, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v12, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result v1

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    .line 32
    const/16 v8, 0xa

    .line 33
    const/4 v9, 0x0

    .line 34
    .line 35
    move-wide/from16 v2, p3

    .line 36
    .line 37
    .line 38
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 39
    move-result-wide v2

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    move-object v7, v5

    .line 57
    .line 58
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 59
    .line 60
    .line 61
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    const-string v8, "Leading"

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v7

    .line 69
    .line 70
    if-eqz v7, :cond_0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    .line 73
    .line 74
    :goto_0
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-interface {v5, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 80
    move-result-object v4

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v4, 0x0

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 86
    move-result v5

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v8

    .line 95
    .line 96
    if-eqz v8, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v8

    .line 101
    move-object v9, v8

    .line 102
    .line 103
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 104
    .line 105
    .line 106
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 107
    move-result-object v9

    .line 108
    .line 109
    const-string v10, "Trailing"

    .line 110
    .line 111
    .line 112
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v9

    .line 114
    .line 115
    if-eqz v9, :cond_3

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v8, 0x0

    .line 118
    .line 119
    :goto_2
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 120
    .line 121
    if-eqz v8, :cond_5

    .line 122
    neg-int v15, v5

    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    const/16 v17, 0x2

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    move-wide v13, v2

    .line 130
    .line 131
    .line 132
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/unit/ConstraintsKt;->j(JIIILjava/lang/Object;)J

    .line 133
    move-result-wide v9

    .line 134
    .line 135
    .line 136
    invoke-interface {v8, v9, v10}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 137
    move-result-object v7

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    const/4 v7, 0x0

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 143
    move-result v8

    .line 144
    add-int/2addr v5, v8

    .line 145
    neg-int v5, v5

    .line 146
    .line 147
    iget-object v8, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 148
    .line 149
    .line 150
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 151
    move-result-object v9

    .line 152
    .line 153
    .line 154
    invoke-interface {v8, v9}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 155
    move-result v8

    .line 156
    .line 157
    .line 158
    invoke-interface {v12, v8}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 159
    move-result v8

    .line 160
    .line 161
    sub-int v8, v5, v8

    .line 162
    .line 163
    iget-object v9, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 164
    .line 165
    .line 166
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 167
    move-result-object v10

    .line 168
    .line 169
    .line 170
    invoke-interface {v9, v10}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 171
    move-result v9

    .line 172
    .line 173
    .line 174
    invoke-interface {v12, v9}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 175
    move-result v9

    .line 176
    sub-int/2addr v8, v9

    .line 177
    neg-int v1, v1

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v3, v8, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 181
    move-result-wide v2

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object v8

    .line 186
    .line 187
    .line 188
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v9

    .line 190
    .line 191
    if-eqz v9, :cond_7

    .line 192
    .line 193
    .line 194
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v9

    .line 196
    move-object v10, v9

    .line 197
    .line 198
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 199
    .line 200
    .line 201
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 202
    move-result-object v10

    .line 203
    .line 204
    const-string v13, "Label"

    .line 205
    .line 206
    .line 207
    invoke-static {v10, v13}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result v10

    .line 209
    .line 210
    if-eqz v10, :cond_6

    .line 211
    goto :goto_4

    .line 212
    :cond_7
    const/4 v9, 0x0

    .line 213
    .line 214
    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 215
    .line 216
    if-eqz v9, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-interface {v9, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 220
    move-result-object v2

    .line 221
    move-object v8, v2

    .line 222
    goto :goto_5

    .line 223
    :cond_8
    const/4 v8, 0x0

    .line 224
    .line 225
    :goto_5
    if-eqz v8, :cond_9

    .line 226
    .line 227
    iget-object v2, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Le8/l;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 231
    move-result v3

    .line 232
    int-to-float v3, v3

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 236
    move-result v9

    .line 237
    int-to-float v9, v9

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v9}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 241
    move-result-wide v9

    .line 242
    .line 243
    .line 244
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    .line 245
    move-result-object v3

    .line 246
    .line 247
    .line 248
    invoke-interface {v2, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_9
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 252
    move-result v2

    .line 253
    .line 254
    div-int/lit8 v2, v2, 0x2

    .line 255
    .line 256
    iget-object v3, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 257
    .line 258
    .line 259
    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 260
    move-result v3

    .line 261
    .line 262
    .line 263
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 264
    move-result v3

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 268
    move-result v2

    .line 269
    sub-int/2addr v1, v2

    .line 270
    .line 271
    move-wide/from16 v2, p3

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v3, v5, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 275
    move-result-wide v13

    .line 276
    const/4 v15, 0x0

    .line 277
    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    const/16 v19, 0xb

    .line 285
    .line 286
    const/16 v20, 0x0

    .line 287
    .line 288
    .line 289
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 290
    move-result-wide v9

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    .line 297
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    move-result v5

    .line 299
    .line 300
    const-string v15, "Collection contains no element matching the predicate."

    .line 301
    .line 302
    if-eqz v5, :cond_12

    .line 303
    .line 304
    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    move-result-object v5

    .line 307
    .line 308
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 309
    .line 310
    .line 311
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 312
    move-result-object v13

    .line 313
    .line 314
    const-string v14, "TextField"

    .line 315
    .line 316
    .line 317
    invoke-static {v13, v14}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    move-result v13

    .line 319
    .line 320
    if-eqz v13, :cond_a

    .line 321
    .line 322
    .line 323
    invoke-interface {v5, v9, v10}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 324
    move-result-object v5

    .line 325
    .line 326
    const/16 v23, 0x0

    .line 327
    .line 328
    const/16 v24, 0x0

    .line 329
    .line 330
    const/16 v25, 0x0

    .line 331
    .line 332
    const/16 v26, 0x0

    .line 333
    .line 334
    const/16 v27, 0xe

    .line 335
    .line 336
    const/16 v28, 0x0

    .line 337
    .line 338
    move-wide/from16 v21, v9

    .line 339
    .line 340
    .line 341
    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 342
    move-result-wide v9

    .line 343
    .line 344
    .line 345
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    move-result-object v1

    .line 347
    .line 348
    .line 349
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    move-result v13

    .line 351
    .line 352
    if-eqz v13, :cond_c

    .line 353
    .line 354
    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    move-result-object v13

    .line 357
    move-object v14, v13

    .line 358
    .line 359
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 360
    .line 361
    .line 362
    invoke-static {v14}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 363
    move-result-object v14

    .line 364
    .line 365
    const-string v6, "Hint"

    .line 366
    .line 367
    .line 368
    invoke-static {v14, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    move-result v6

    .line 370
    .line 371
    if-eqz v6, :cond_b

    .line 372
    goto :goto_6

    .line 373
    :cond_c
    const/4 v13, 0x0

    .line 374
    .line 375
    :goto_6
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 376
    .line 377
    if-eqz v13, :cond_d

    .line 378
    .line 379
    .line 380
    invoke-interface {v13, v9, v10}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 381
    move-result-object v1

    .line 382
    move-object v9, v1

    .line 383
    goto :goto_7

    .line 384
    :cond_d
    const/4 v9, 0x0

    .line 385
    .line 386
    .line 387
    :goto_7
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 388
    move-result v13

    .line 389
    .line 390
    .line 391
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 392
    move-result v14

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 396
    move-result v1

    .line 397
    .line 398
    .line 399
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 400
    move-result v16

    .line 401
    .line 402
    .line 403
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 404
    move-result v17

    .line 405
    move-object v6, v15

    .line 406
    move v15, v1

    .line 407
    .line 408
    move-wide/from16 v18, p3

    .line 409
    .line 410
    .line 411
    invoke-static/range {v13 .. v19}, Landroidx/compose/material/OutlinedTextFieldKt;->e(IIIIIJ)I

    .line 412
    move-result v10

    .line 413
    .line 414
    .line 415
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 416
    move-result v13

    .line 417
    .line 418
    .line 419
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 420
    move-result v14

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 424
    move-result v15

    .line 425
    .line 426
    .line 427
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 428
    move-result v16

    .line 429
    .line 430
    .line 431
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 432
    move-result v17

    .line 433
    .line 434
    .line 435
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 436
    move-result v20

    .line 437
    .line 438
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 439
    .line 440
    move-object/from16 v21, v1

    .line 441
    .line 442
    .line 443
    invoke-static/range {v13 .. v21}, Landroidx/compose/material/OutlinedTextFieldKt;->d(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 444
    move-result v13

    .line 445
    .line 446
    .line 447
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 448
    move-result-object v0

    .line 449
    .line 450
    .line 451
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    move-result v1

    .line 453
    .line 454
    if-eqz v1, :cond_11

    .line 455
    .line 456
    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    move-result-object v1

    .line 459
    .line 460
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 461
    .line 462
    .line 463
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 464
    move-result-object v2

    .line 465
    .line 466
    const-string v3, "border"

    .line 467
    .line 468
    .line 469
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    move-result v2

    .line 471
    .line 472
    if-eqz v2, :cond_e

    .line 473
    const/4 v0, 0x0

    .line 474
    .line 475
    .line 476
    const v2, 0x7fffffff

    .line 477
    .line 478
    if-eq v10, v2, :cond_f

    .line 479
    move v3, v10

    .line 480
    goto :goto_8

    .line 481
    :cond_f
    move v3, v0

    .line 482
    .line 483
    :goto_8
    if-eq v13, v2, :cond_10

    .line 484
    move v0, v13

    .line 485
    .line 486
    .line 487
    :cond_10
    invoke-static {v3, v10, v0, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 488
    move-result-wide v2

    .line 489
    .line 490
    .line 491
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 492
    move-result-object v14

    .line 493
    const/4 v15, 0x0

    .line 494
    .line 495
    new-instance v16, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;

    .line 496
    .line 497
    move-object/from16 v0, v16

    .line 498
    move v1, v13

    .line 499
    move v2, v10

    .line 500
    move-object v3, v4

    .line 501
    move-object v4, v7

    .line 502
    move-object v6, v8

    .line 503
    move-object v7, v9

    .line 504
    move-object v8, v14

    .line 505
    .line 506
    move-object/from16 v9, p0

    .line 507
    move v14, v10

    .line 508
    .line 509
    move-object/from16 v10, p1

    .line 510
    .line 511
    .line 512
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;-><init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V

    .line 513
    const/4 v5, 0x4

    .line 514
    const/4 v6, 0x0

    .line 515
    .line 516
    move-object/from16 v0, p1

    .line 517
    move v1, v14

    .line 518
    move v2, v13

    .line 519
    move-object v3, v15

    .line 520
    .line 521
    move-object/from16 v4, v16

    .line 522
    .line 523
    .line 524
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 525
    move-result-object v0

    .line 526
    return-object v0

    .line 527
    .line 528
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 529
    .line 530
    .line 531
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 532
    throw v0

    .line 533
    :cond_12
    move-object v6, v15

    .line 534
    .line 535
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 536
    .line 537
    .line 538
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 539
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
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I

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
    sget-object p1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->j(Ljava/util/List;ILe8/p;)I

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
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILe8/p;)I

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
    sget-object p1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->j(Ljava/util/List;ILe8/p;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method
