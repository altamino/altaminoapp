.class public final Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAccessibilitySpannableString.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAccessibilitySpannableString.android.kt\nandroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,188:1\n32#2,6:189\n32#2,6:195\n*S KotlinDebug\n*F\n+ 1 AndroidAccessibilitySpannableString.android.kt\nandroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt\n*L\n74#1:189,6\n81#1:195,6\n*E\n"
.end annotation


# direct methods
.method private static final a(Landroid/text/SpannableString;Landroidx/compose/ui/text/SpanStyle;IILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->i(Landroid/text/Spannable;JII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 11
    move-result-wide v3

    .line 12
    move-object v2, p0

    .line 13
    move-object v5, p4

    .line 14
    move v6, p2

    .line 15
    move v7, p3

    .line 16
    .line 17
    .line 18
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->l(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 22
    move-result-object p4

    .line 23
    .line 24
    const/16 v0, 0x21

    .line 25
    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    if-eqz p4, :cond_3

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 36
    move-result-object p4

    .line 37
    .line 38
    if-nez p4, :cond_1

    .line 39
    .line 40
    sget-object p4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 54
    move-result v1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 61
    move-result v1

    .line 62
    .line 63
    :goto_0
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 64
    .line 65
    .line 66
    invoke-static {p4, v1}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->c(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 67
    move-result p4

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 77
    move-result-object p4

    .line 78
    .line 79
    if-eqz p4, :cond_6

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 83
    move-result-object p4

    .line 84
    .line 85
    instance-of p4, p4, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 86
    .line 87
    if-eqz p4, :cond_4

    .line 88
    .line 89
    new-instance p4, Landroid/text/style/TypefaceSpan;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 93
    move-result-object p5

    .line 94
    .line 95
    check-cast p5, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p5}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 99
    move-result-object p5

    .line 100
    .line 101
    .line 102
    invoke-direct {p4, p5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_4
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v1, 0x1c

    .line 111
    .line 112
    if-lt p4, v1, :cond_6

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 116
    move-result-object v3

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 122
    move-result-object p4

    .line 123
    .line 124
    if-eqz p4, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 128
    move-result p4

    .line 129
    :goto_1
    move v6, p4

    .line 130
    goto :goto_2

    .line 131
    .line 132
    :cond_5
    sget-object p4, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p4}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 136
    move-result p4

    .line 137
    goto :goto_1

    .line 138
    :goto_2
    const/4 v7, 0x6

    .line 139
    const/4 v8, 0x0

    .line 140
    move-object v2, p5

    .line 141
    .line 142
    .line 143
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/text/font/d;->a(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/runtime/State;

    .line 144
    move-result-object p4

    .line 145
    .line 146
    .line 147
    invoke-interface {p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 148
    move-result-object p4

    .line 149
    .line 150
    check-cast p4, Landroid/graphics/Typeface;

    .line 151
    .line 152
    sget-object p5, Landroidx/compose/ui/text/platform/Api28Impl;->INSTANCE:Landroidx/compose/ui/text/platform/Api28Impl;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p5, p4}, Landroidx/compose/ui/text/platform/Api28Impl;->a(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    .line 156
    move-result-object p4

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 163
    move-result-object p4

    .line 164
    .line 165
    if-eqz p4, :cond_8

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 169
    move-result-object p4

    .line 170
    .line 171
    sget-object p5, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4, v1}, Landroidx/compose/ui/text/style/TextDecoration;->d(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 179
    move-result p4

    .line 180
    .line 181
    if-eqz p4, :cond_7

    .line 182
    .line 183
    new-instance p4, Landroid/text/style/UnderlineSpan;

    .line 184
    .line 185
    .line 186
    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 190
    .line 191
    .line 192
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 193
    move-result-object p4

    .line 194
    .line 195
    .line 196
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->b()Landroidx/compose/ui/text/style/TextDecoration;

    .line 197
    move-result-object p5

    .line 198
    .line 199
    .line 200
    invoke-virtual {p4, p5}, Landroidx/compose/ui/text/style/TextDecoration;->d(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 201
    move-result p4

    .line 202
    .line 203
    if-eqz p4, :cond_8

    .line 204
    .line 205
    new-instance p4, Landroid/text/style/StrikethroughSpan;

    .line 206
    .line 207
    .line 208
    invoke-direct {p4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 212
    .line 213
    .line 214
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 215
    move-result-object p4

    .line 216
    .line 217
    if-eqz p4, :cond_9

    .line 218
    .line 219
    new-instance p4, Landroid/text/style/ScaleXSpan;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 223
    move-result-object p5

    .line 224
    .line 225
    .line 226
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 227
    move-result p5

    .line 228
    .line 229
    .line 230
    invoke-direct {p4, p5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 234
    .line 235
    .line 236
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 237
    move-result-object p4

    .line 238
    .line 239
    .line 240
    invoke-static {p0, p4, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->p(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 244
    move-result-wide p4

    .line 245
    .line 246
    .line 247
    invoke-static {p0, p4, p5, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->f(Landroid/text/Spannable;JII)V

    .line 248
    return-void
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroid/text/SpannableString;
    .locals 35
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation runtime Landroidx/compose/ui/text/InternalTextApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "density"

    .line 10
    .line 11
    move-object/from16 v8, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v1, "fontFamilyResolver"

    .line 17
    .line 18
    move-object/from16 v9, p2

    .line 19
    .line 20
    .line 21
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance v1, Landroid/text/SpannableString;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 34
    move-result-object v10

    .line 35
    .line 36
    .line 37
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 38
    move-result v11

    .line 39
    const/4 v12, 0x0

    .line 40
    move v13, v12

    .line 41
    .line 42
    :goto_0
    if-ge v13, v11, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    move-object v14, v3

    .line 54
    .line 55
    check-cast v14, Landroidx/compose/ui/text/SpanStyle;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 63
    move-result v5

    .line 64
    .line 65
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    const-wide/16 v17, 0x0

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    const/16 v20, 0x0

    .line 72
    .line 73
    const/16 v21, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const-wide/16 v24, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v27, 0x0

    .line 84
    .line 85
    const/16 v28, 0x0

    .line 86
    .line 87
    const-wide/16 v29, 0x0

    .line 88
    .line 89
    const/16 v31, 0x0

    .line 90
    .line 91
    const/16 v32, 0x0

    .line 92
    .line 93
    const/16 v33, 0x3fdf

    .line 94
    .line 95
    const/16 v34, 0x0

    .line 96
    .line 97
    .line 98
    invoke-static/range {v14 .. v34}, Landroidx/compose/ui/text/SpanStyle;->b(Landroidx/compose/ui/text/SpanStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILjava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    .line 99
    move-result-object v3

    .line 100
    move-object v2, v1

    .line 101
    .line 102
    move-object/from16 v6, p1

    .line 103
    .line 104
    move-object/from16 v7, p2

    .line 105
    .line 106
    .line 107
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->a(Landroid/text/SpannableString;Landroidx/compose/ui/text/SpanStyle;IILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 108
    .line 109
    add-int/lit8 v13, v13, 0x1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 114
    move-result v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v12, v2}, Landroidx/compose/ui/text/AnnotatedString;->h(II)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 122
    move-result v2

    .line 123
    .line 124
    :goto_1
    if-ge v12, v2, :cond_1

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    check-cast v4, Landroidx/compose/ui/text/TtsAnnotation;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 140
    move-result v5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 144
    move-result v3

    .line 145
    .line 146
    .line 147
    invoke-static {v4}, Landroidx/compose/ui/text/platform/extensions/TtsAnnotationExtensions_androidKt;->a(Landroidx/compose/ui/text/TtsAnnotation;)Landroid/text/style/TtsSpan;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    const/16 v6, 0x21

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    .line 155
    add-int/lit8 v12, v12, 0x1

    .line 156
    goto :goto_1

    .line 157
    :cond_1
    return-object v1
.end method
