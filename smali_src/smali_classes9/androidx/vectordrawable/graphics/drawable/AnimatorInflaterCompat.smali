.class public Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object v4

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v7, p4

    .line 12
    .line 13
    .line 14
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    move-object/from16 v10, p3

    .line 7
    .line 8
    move-object/from16 v11, p5

    .line 9
    .line 10
    .line 11
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 12
    move-result v12

    .line 13
    const/4 v0, 0x0

    .line 14
    move-object v13, v0

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x3

    .line 20
    const/4 v14, 0x0

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 26
    move-result v2

    .line 27
    .line 28
    if-le v2, v12, :cond_9

    .line 29
    :cond_1
    const/4 v2, 0x1

    .line 30
    .line 31
    if-eq v1, v2, :cond_9

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    if-eq v1, v3, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "objectAnimator"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    move-object/from16 v0, p0

    .line 51
    .line 52
    move-object/from16 v1, p1

    .line 53
    .line 54
    move-object/from16 v2, p2

    .line 55
    .line 56
    move-object/from16 v3, p4

    .line 57
    .line 58
    move/from16 v4, p7

    .line 59
    .line 60
    move-object/from16 v5, p3

    .line 61
    .line 62
    .line 63
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->n(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    :goto_1
    move-object/from16 v3, p0

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    const-string v3, "animator"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    const/4 v4, 0x0

    .line 78
    .line 79
    move-object/from16 v0, p0

    .line 80
    .line 81
    move-object/from16 v1, p1

    .line 82
    .line 83
    move-object/from16 v2, p2

    .line 84
    .line 85
    move-object/from16 v3, p4

    .line 86
    .line 87
    move/from16 v5, p7

    .line 88
    .line 89
    move-object/from16 v6, p3

    .line 90
    .line 91
    .line 92
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_4
    const-string/jumbo v3, "set"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    new-instance v15, Landroid/animation/AnimatorSet;

    .line 106
    .line 107
    .line 108
    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .line 110
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    .line 111
    .line 112
    move-object/from16 v7, p4

    .line 113
    .line 114
    .line 115
    invoke-static {v8, v9, v7, v0}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    .line 119
    const-string/jumbo v0, "ordering"

    .line 120
    .line 121
    .line 122
    invoke-static {v6, v10, v0, v14, v14}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 123
    move-result v16

    .line 124
    .line 125
    move-object/from16 v0, p0

    .line 126
    .line 127
    move-object/from16 v1, p1

    .line 128
    .line 129
    move-object/from16 v2, p2

    .line 130
    .line 131
    move-object/from16 v3, p3

    .line 132
    .line 133
    move-object/from16 v4, p4

    .line 134
    move-object v5, v15

    .line 135
    .line 136
    move-object/from16 v17, v6

    .line 137
    .line 138
    move/from16 v6, v16

    .line 139
    .line 140
    move/from16 v7, p7

    .line 141
    .line 142
    .line 143
    invoke-static/range {v0 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    .line 148
    move-object/from16 v3, p0

    .line 149
    move-object v0, v15

    .line 150
    goto :goto_2

    .line 151
    .line 152
    .line 153
    :cond_5
    const-string/jumbo v3, "propertyValuesHolder"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v1

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    .line 162
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    move-object/from16 v3, p0

    .line 166
    .line 167
    .line 168
    invoke-static {v3, v8, v9, v10, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->p(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    instance-of v4, v0, Landroid/animation/ValueAnimator;

    .line 174
    .line 175
    if-eqz v4, :cond_6

    .line 176
    move-object v4, v0

    .line 177
    .line 178
    check-cast v4, Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 182
    :cond_6
    move v14, v2

    .line 183
    .line 184
    :goto_2
    if-eqz v11, :cond_0

    .line 185
    .line 186
    if-nez v14, :cond_0

    .line 187
    .line 188
    if-nez v13, :cond_7

    .line 189
    .line 190
    new-instance v13, Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    :cond_7
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    const-string v2, "Unknown animator name: "

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 225
    throw v0

    .line 226
    .line 227
    :cond_9
    if-eqz v11, :cond_c

    .line 228
    .line 229
    if-eqz v13, :cond_c

    .line 230
    .line 231
    .line 232
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 233
    move-result v1

    .line 234
    .line 235
    new-array v1, v1, [Landroid/animation/Animator;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v3

    .line 244
    .line 245
    if-eqz v3, :cond_a

    .line 246
    .line 247
    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v3

    .line 250
    .line 251
    check-cast v3, Landroid/animation/Animator;

    .line 252
    .line 253
    add-int/lit8 v4, v14, 0x1

    .line 254
    .line 255
    aput-object v3, v1, v14

    .line 256
    move v14, v4

    .line 257
    goto :goto_3

    .line 258
    .line 259
    :cond_a
    if-nez p6, :cond_b

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    goto :goto_4

    .line 264
    .line 265
    .line 266
    :cond_b
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 267
    :cond_c
    :goto_4
    return-object v0
.end method

.method private static c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne p0, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 30
    move-result-object p0

    .line 31
    :goto_0
    return-object p0
.end method

.method private static d([Landroid/animation/Keyframe;FII)V
    .locals 2

    .line 1
    .line 2
    sub-int v0, p3, p2

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x2

    .line 5
    int-to-float v0, v0

    .line 6
    div-float/2addr p1, v0

    .line 7
    .line 8
    :goto_0
    if-gt p2, p3, :cond_0

    .line 9
    .line 10
    aget-object v0, p0, p2

    .line 11
    .line 12
    add-int/lit8 v1, p2, -0x1

    .line 13
    .line 14
    aget-object v1, p0, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 18
    move-result v1

    .line 19
    add-float/2addr v1, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private static e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    .line 13
    :goto_0
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v0, v2

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    move v5, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v5, v2

    .line 27
    .line 28
    :goto_2
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v4, v2

    .line 33
    :goto_3
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x3

    .line 35
    .line 36
    if-ne p1, v6, :cond_7

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :cond_4
    if-eqz v5, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_6

    .line 53
    :cond_5
    move p1, v7

    .line 54
    goto :goto_4

    .line 55
    :cond_6
    move p1, v2

    .line 56
    .line 57
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 58
    move v6, v1

    .line 59
    goto :goto_5

    .line 60
    :cond_8
    move v6, v2

    .line 61
    :goto_5
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x2

    .line 63
    .line 64
    if-ne p1, v9, :cond_d

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Landroidx/core/graphics/PathParser;->d(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->d(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    if-nez p2, :cond_9

    .line 83
    .line 84
    if-eqz p3, :cond_1e

    .line 85
    .line 86
    :cond_9
    if-eqz p2, :cond_c

    .line 87
    .line 88
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 92
    .line 93
    if-eqz p3, :cond_b

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p3}, Landroidx/core/graphics/PathParser;->b([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    .line 97
    move-result v3

    .line 98
    .line 99
    if-eqz v3, :cond_a

    .line 100
    .line 101
    new-array p0, v9, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object p2, p0, v2

    .line 104
    .line 105
    aput-object p3, p0, v1

    .line 106
    .line 107
    .line 108
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 109
    move-result-object p0

    .line 110
    :goto_6
    move-object v8, p0

    .line 111
    .line 112
    goto/16 :goto_10

    .line 113
    .line 114
    :cond_a
    new-instance p2, Landroid/view/InflateException;

    .line 115
    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    const-string p4, " Can\'t morph from "

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p1, " to "

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    .line 141
    .line 142
    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p2

    .line 144
    .line 145
    :cond_b
    new-array p0, v1, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object p2, p0, v2

    .line 148
    .line 149
    .line 150
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 151
    move-result-object p0

    .line 152
    goto :goto_6

    .line 153
    .line 154
    :cond_c
    if-eqz p3, :cond_1e

    .line 155
    .line 156
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 160
    .line 161
    new-array p1, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object p3, p1, v2

    .line 164
    .line 165
    .line 166
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 167
    move-result-object v8

    .line 168
    .line 169
    goto/16 :goto_10

    .line 170
    .line 171
    :cond_d
    if-ne p1, v7, :cond_e

    .line 172
    .line 173
    .line 174
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->a()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 175
    move-result-object p1

    .line 176
    goto :goto_7

    .line 177
    :cond_e
    move-object p1, v8

    .line 178
    :goto_7
    const/4 v7, 0x5

    .line 179
    const/4 v10, 0x0

    .line 180
    .line 181
    if-eqz v6, :cond_14

    .line 182
    .line 183
    if-eqz v3, :cond_12

    .line 184
    .line 185
    if-ne v0, v7, :cond_f

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 189
    move-result p2

    .line 190
    goto :goto_8

    .line 191
    .line 192
    .line 193
    :cond_f
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 194
    move-result p2

    .line 195
    .line 196
    :goto_8
    if-eqz v5, :cond_11

    .line 197
    .line 198
    if-ne v4, v7, :cond_10

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 202
    move-result p0

    .line 203
    goto :goto_9

    .line 204
    .line 205
    .line 206
    :cond_10
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 207
    move-result p0

    .line 208
    .line 209
    :goto_9
    new-array p3, v9, [F

    .line 210
    .line 211
    aput p2, p3, v2

    .line 212
    .line 213
    aput p0, p3, v1

    .line 214
    .line 215
    .line 216
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 217
    move-result-object p0

    .line 218
    :goto_a
    move-object v8, p0

    .line 219
    .line 220
    goto/16 :goto_f

    .line 221
    .line 222
    :cond_11
    new-array p0, v1, [F

    .line 223
    .line 224
    aput p2, p0, v2

    .line 225
    .line 226
    .line 227
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 228
    move-result-object p0

    .line 229
    goto :goto_a

    .line 230
    .line 231
    :cond_12
    if-ne v4, v7, :cond_13

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 235
    move-result p0

    .line 236
    goto :goto_b

    .line 237
    .line 238
    .line 239
    :cond_13
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 240
    move-result p0

    .line 241
    .line 242
    :goto_b
    new-array p2, v1, [F

    .line 243
    .line 244
    aput p0, p2, v2

    .line 245
    .line 246
    .line 247
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 248
    move-result-object p0

    .line 249
    goto :goto_a

    .line 250
    .line 251
    :cond_14
    if-eqz v3, :cond_1a

    .line 252
    .line 253
    if-ne v0, v7, :cond_15

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 257
    move-result p2

    .line 258
    float-to-int p2, p2

    .line 259
    goto :goto_c

    .line 260
    .line 261
    .line 262
    :cond_15
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 263
    move-result v0

    .line 264
    .line 265
    if-eqz v0, :cond_16

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 269
    move-result p2

    .line 270
    goto :goto_c

    .line 271
    .line 272
    .line 273
    :cond_16
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 274
    move-result p2

    .line 275
    .line 276
    :goto_c
    if-eqz v5, :cond_19

    .line 277
    .line 278
    if-ne v4, v7, :cond_17

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 282
    move-result p0

    .line 283
    float-to-int p0, p0

    .line 284
    goto :goto_d

    .line 285
    .line 286
    .line 287
    :cond_17
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 288
    move-result v0

    .line 289
    .line 290
    if-eqz v0, :cond_18

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 294
    move-result p0

    .line 295
    goto :goto_d

    .line 296
    .line 297
    .line 298
    :cond_18
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 299
    move-result p0

    .line 300
    .line 301
    .line 302
    :goto_d
    filled-new-array {p2, p0}, [I

    .line 303
    move-result-object p0

    .line 304
    .line 305
    .line 306
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 307
    move-result-object v8

    .line 308
    goto :goto_f

    .line 309
    .line 310
    .line 311
    :cond_19
    filled-new-array {p2}, [I

    .line 312
    move-result-object p0

    .line 313
    .line 314
    .line 315
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 316
    move-result-object v8

    .line 317
    goto :goto_f

    .line 318
    .line 319
    :cond_1a
    if-eqz v5, :cond_1d

    .line 320
    .line 321
    if-ne v4, v7, :cond_1b

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 325
    move-result p0

    .line 326
    float-to-int p0, p0

    .line 327
    goto :goto_e

    .line 328
    .line 329
    .line 330
    :cond_1b
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 331
    move-result p2

    .line 332
    .line 333
    if-eqz p2, :cond_1c

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 337
    move-result p0

    .line 338
    goto :goto_e

    .line 339
    .line 340
    .line 341
    :cond_1c
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 342
    move-result p0

    .line 343
    .line 344
    .line 345
    :goto_e
    filled-new-array {p0}, [I

    .line 346
    move-result-object p0

    .line 347
    .line 348
    .line 349
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 350
    move-result-object v8

    .line 351
    .line 352
    :cond_1d
    :goto_f
    if-eqz v8, :cond_1e

    .line 353
    .line 354
    if-eqz p1, :cond_1e

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 358
    :cond_1e
    :goto_10
    return-object v8
.end method

.method private static f(Landroid/content/res/TypedArray;II)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    move v2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget p1, p1, Landroid/util/TypedValue;->type:I

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move p1, v1

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v0, v1

    .line 26
    .line 27
    :goto_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget p0, p0, Landroid/util/TypedValue;->type:I

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move p0, v1

    .line 32
    .line 33
    :goto_3
    if-eqz v2, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_5

    .line 40
    .line 41
    :cond_4
    if-eqz v0, :cond_6

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 45
    move-result p0

    .line 46
    .line 47
    if-eqz p0, :cond_6

    .line 48
    :cond_5
    const/4 v1, 0x3

    .line 49
    :cond_6
    return v1
.end method

.method private static g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    const-string/jumbo p1, "value"

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p3, p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->t(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p1, Landroid/util/TypedValue;->type:I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p2, 0x3

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    return p2
.end method

.method private static h(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->j(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->k(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static k(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Can\'t load animation resource ID #0x"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 17
    :cond_0
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :goto_0
    :try_start_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    throw p1

    .line 52
    .line 53
    :goto_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    :goto_2
    if-eqz v1, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    :cond_1
    throw p0
.end method

.method private static l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    new-instance p4, Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p4, v0, p1, p5, p6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->q(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 23
    .line 24
    const-string p2, "interpolator"

    .line 25
    const/4 p3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p6, p2, p3, p3}, Landroidx/core/content/res/TypedArrayUtils;->l(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 29
    move-result p2

    .line 30
    .line 31
    if-lez p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    :cond_2
    return-object p4
.end method

.method private static m(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    .line 10
    const-string p3, "fraction"

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p5, p3, v0, p2}, Landroidx/core/content/res/TypedArrayUtils;->j(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    const-string/jumbo p3, "value"

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p5, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->t(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    move v4, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v1

    .line 30
    :goto_0
    const/4 v5, 0x4

    .line 31
    .line 32
    if-ne p4, v5, :cond_2

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget p4, v2, Landroid/util/TypedValue;->type:I

    .line 37
    .line 38
    .line 39
    invoke-static {p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->h(I)Z

    .line 40
    move-result p4

    .line 41
    .line 42
    if-eqz p4, :cond_1

    .line 43
    move p4, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move p4, v1

    .line 46
    .line 47
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 48
    .line 49
    if-eqz p4, :cond_4

    .line 50
    .line 51
    if-eq p4, v3, :cond_3

    .line 52
    .line 53
    if-eq p4, v0, :cond_3

    .line 54
    const/4 p2, 0x0

    .line 55
    goto :goto_2

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-static {p1, p5, p3, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 59
    move-result p3

    .line 60
    .line 61
    .line 62
    invoke-static {p2, p3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 63
    move-result-object p2

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const/4 p4, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p5, p3, v1, p4}, Landroidx/core/content/res/TypedArrayUtils;->j(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    .line 69
    move-result p3

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 73
    move-result-object p2

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    if-nez p4, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 80
    move-result-object p2

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-static {p2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    :goto_2
    const-string p3, "interpolator"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p5, p3, v3, v1}, Landroidx/core/content/res/TypedArrayUtils;->l(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 91
    move-result p3

    .line 92
    .line 93
    if-lez p3, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->a(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p0}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-object p2
.end method

.method private static n(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Landroid/animation/ObjectAnimator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, v7

    .line 11
    move v5, p4

    .line 12
    move-object v6, p5

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->l(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 16
    return-object v7
.end method

.method private static o(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x3

    .line 8
    .line 9
    if-eq v2, v3, :cond_4

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eq v2, v4, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "keyframe"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x4

    .line 26
    .line 27
    if-ne p5, v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 31
    move-result-object p5

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2, p5, p3}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->g(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    .line 35
    move-result p5

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 39
    move-result-object v5

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move v6, p5

    .line 44
    move-object v7, p3

    .line 45
    .line 46
    .line 47
    invoke-static/range {v2 .. v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->m(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_4
    if-eqz v1, :cond_f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result p0

    .line 71
    .line 72
    if-lez p0, :cond_f

    .line 73
    const/4 p1, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    check-cast p2, Landroid/animation/Keyframe;

    .line 80
    .line 81
    add-int/lit8 p3, p0, -0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    check-cast p3, Landroid/animation/Keyframe;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    .line 91
    move-result v0

    .line 92
    .line 93
    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    .line 95
    cmpg-float v4, v0, v2

    .line 96
    const/4 v5, 0x0

    .line 97
    .line 98
    if-gez v4, :cond_6

    .line 99
    .line 100
    cmpg-float v0, v0, v5

    .line 101
    .line 102
    if-gez v0, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 106
    goto :goto_1

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result v0

    .line 111
    .line 112
    .line 113
    invoke-static {p3, v2}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    .line 114
    move-result-object p3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    .line 119
    add-int/lit8 p0, p0, 0x1

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/animation/Keyframe;->getFraction()F

    .line 123
    move-result p3

    .line 124
    .line 125
    cmpl-float v0, p3, v5

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    cmpg-float p3, p3, v5

    .line 130
    .line 131
    if-gez p3, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v5}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-static {p2, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->c(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    .line 144
    add-int/lit8 p0, p0, 0x1

    .line 145
    .line 146
    :cond_8
    :goto_2
    new-array p2, p0, [Landroid/animation/Keyframe;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    .line 151
    :goto_3
    if-ge p1, p0, :cond_e

    .line 152
    .line 153
    aget-object p3, p2, p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    .line 157
    move-result v0

    .line 158
    .line 159
    cmpg-float v0, v0, v5

    .line 160
    .line 161
    if-gez v0, :cond_d

    .line 162
    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v5}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 167
    goto :goto_6

    .line 168
    .line 169
    :cond_9
    add-int/lit8 v0, p0, -0x1

    .line 170
    .line 171
    if-ne p1, v0, :cond_a

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 175
    goto :goto_6

    .line 176
    .line 177
    :cond_a
    add-int/lit8 p3, p1, 0x1

    .line 178
    move v1, p1

    .line 179
    .line 180
    :goto_4
    if-ge p3, v0, :cond_c

    .line 181
    .line 182
    aget-object v4, p2, p3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    .line 186
    move-result v4

    .line 187
    .line 188
    cmpl-float v4, v4, v5

    .line 189
    .line 190
    if-ltz v4, :cond_b

    .line 191
    goto :goto_5

    .line 192
    .line 193
    :cond_b
    add-int/lit8 v1, p3, 0x1

    .line 194
    move v8, v1

    .line 195
    move v1, p3

    .line 196
    move p3, v8

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_c
    :goto_5
    add-int/lit8 p3, v1, 0x1

    .line 200
    .line 201
    aget-object p3, p2, p3

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Landroid/animation/Keyframe;->getFraction()F

    .line 205
    move-result p3

    .line 206
    .line 207
    add-int/lit8 v0, p1, -0x1

    .line 208
    .line 209
    aget-object v0, p2, v0

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 213
    move-result v0

    .line 214
    sub-float/2addr p3, v0

    .line 215
    .line 216
    .line 217
    invoke-static {p2, p3, p1, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->d([Landroid/animation/Keyframe;FII)V

    .line 218
    .line 219
    :cond_d
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 220
    goto :goto_3

    .line 221
    .line 222
    .line 223
    :cond_e
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    if-ne p5, v3, :cond_f

    .line 227
    .line 228
    .line 229
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->a()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 230
    move-result-object p0

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 234
    :cond_f
    return-object v0
.end method

.method private static p(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p3

    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v8, v7

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 8
    move-result v0

    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-eq v0, v1, :cond_5

    .line 13
    const/4 v10, 0x1

    .line 14
    .line 15
    if-eq v0, v10, :cond_5

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const-string/jumbo v3, "propertyValuesHolder"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    .line 38
    .line 39
    move-object/from16 v11, p1

    .line 40
    .line 41
    move-object/from16 v12, p2

    .line 42
    .line 43
    move-object/from16 v13, p4

    .line 44
    .line 45
    .line 46
    invoke-static {v11, v12, v13, v0}, Landroidx/core/content/res/TypedArrayUtils;->s(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 47
    move-result-object v14

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "propertyName"

    .line 51
    .line 52
    .line 53
    invoke-static {v14, v6, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    move-result-object v15

    .line 55
    .line 56
    .line 57
    const-string/jumbo v0, "valueType"

    .line 58
    const/4 v1, 0x4

    .line 59
    .line 60
    .line 61
    invoke-static {v14, v6, v0, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 62
    move-result v5

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move-object/from16 v2, p2

    .line 69
    .line 70
    move-object/from16 v3, p3

    .line 71
    move-object v4, v15

    .line 72
    .line 73
    move/from16 v16, v5

    .line 74
    .line 75
    .line 76
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->o(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    move/from16 v1, v16

    .line 82
    .line 83
    .line 84
    invoke-static {v14, v1, v9, v10, v15}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    :cond_1
    if-eqz v0, :cond_3

    .line 88
    .line 89
    if-nez v8, :cond_2

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    .line 94
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    move-object/from16 v11, p1

    .line 104
    .line 105
    move-object/from16 v12, p2

    .line 106
    .line 107
    move-object/from16 v13, p4

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_5
    if-eqz v8, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result v0

    .line 118
    .line 119
    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    .line 120
    .line 121
    :goto_2
    if-ge v9, v0, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    check-cast v1, Landroid/animation/PropertyValuesHolder;

    .line 128
    .line 129
    aput-object v1, v7, v9

    .line 130
    .line 131
    add-int/lit8 v9, v9, 0x1

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    return-object v7
.end method

.method private static q(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1
    .line 2
    const/16 v0, 0x12c

    .line 3
    .line 4
    const-string v1, "duration"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p4, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "startOffset"

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p4, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 19
    move-result v3

    .line 20
    int-to-long v3, v3

    .line 21
    .line 22
    .line 23
    const-string/jumbo v6, "valueType"

    .line 24
    const/4 v7, 0x7

    .line 25
    const/4 v8, 0x4

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p4, v6, v7, v8}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 29
    move-result v6

    .line 30
    .line 31
    .line 32
    const-string/jumbo v7, "valueFrom"

    .line 33
    .line 34
    .line 35
    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->r(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 36
    move-result v7

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    .line 41
    const-string/jumbo v7, "valueTo"

    .line 42
    .line 43
    .line 44
    invoke-static {p4, v7}, Landroidx/core/content/res/TypedArrayUtils;->r(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 45
    move-result v7

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    const/4 v7, 0x6

    .line 49
    const/4 v9, 0x5

    .line 50
    .line 51
    if-ne v6, v8, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v9, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->f(Landroid/content/res/TypedArray;II)I

    .line 55
    move-result v6

    .line 56
    .line 57
    :cond_0
    const-string v10, ""

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v6, v9, v7, v10}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->e(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 61
    move-result-object v7

    .line 62
    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    .line 66
    .line 67
    aput-object v7, v9, v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v0, "repeatCount"

    .line 80
    const/4 v1, 0x3

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p4, v0, v1, v5}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 84
    move-result v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v0, "repeatMode"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p4, v0, v8, v2}, Landroidx/core/content/res/TypedArrayUtils;->k(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 94
    move-result p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p2, v6, p3, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->r(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    :cond_2
    return-void
.end method

.method private static r(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    .line 2
    check-cast p0, Landroid/animation/ObjectAnimator;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v0, "pathData"

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p4, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "propertyXName"

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p4, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "propertyYName"

    .line 24
    const/4 v4, 0x3

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p4, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    move-result-object p4

    .line 29
    .line 30
    if-eq p2, v2, :cond_0

    .line 31
    const/4 v2, 0x4

    .line 32
    .line 33
    :cond_0
    if-nez v1, :cond_2

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    new-instance p0, Landroid/view/InflateException;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, " propertyXName or propertyYName is needed for PathData"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/PathParser;->e(Ljava/lang/String;)Landroid/graphics/Path;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const/high16 p2, 0x3f000000    # 0.5f

    .line 70
    mul-float/2addr p3, p2

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p0, p3, v1, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->s(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_3
    const-string/jumbo p2, "propertyName"

    .line 78
    const/4 p3, 0x0

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p4, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->m(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 86
    :goto_1
    return-void
.end method

.method private static s(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    move-object/from16 v3, p4

    .line 9
    .line 10
    new-instance v4, Landroid/graphics/PathMeasure;

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 15
    .line 16
    new-instance v6, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v7, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object v8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    move v8, v7

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    .line 32
    move-result v9

    .line 33
    add-float/2addr v8, v9

    .line 34
    .line 35
    .line 36
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 44
    move-result v9

    .line 45
    .line 46
    if-nez v9, :cond_0

    .line 47
    .line 48
    new-instance v4, Landroid/graphics/PathMeasure;

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 52
    .line 53
    div-float v0, v8, p2

    .line 54
    float-to-int v0, v0

    .line 55
    const/4 v9, 0x1

    .line 56
    add-int/2addr v0, v9

    .line 57
    .line 58
    const/16 v10, 0x64

    .line 59
    .line 60
    .line 61
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result v0

    .line 63
    .line 64
    new-array v10, v0, [F

    .line 65
    .line 66
    new-array v11, v0, [F

    .line 67
    const/4 v12, 0x2

    .line 68
    .line 69
    new-array v13, v12, [F

    .line 70
    .line 71
    add-int/lit8 v14, v0, -0x1

    .line 72
    int-to-float v14, v14

    .line 73
    div-float/2addr v8, v14

    .line 74
    move v14, v5

    .line 75
    move v15, v14

    .line 76
    :goto_0
    const/4 v12, 0x0

    .line 77
    .line 78
    if-ge v14, v0, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v16

    .line 83
    .line 84
    check-cast v16, Ljava/lang/Float;

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    .line 88
    move-result v16

    .line 89
    .line 90
    sub-float v9, v7, v16

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v9, v13, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 94
    .line 95
    aget v9, v13, v5

    .line 96
    .line 97
    aput v9, v10, v14

    .line 98
    const/4 v9, 0x1

    .line 99
    .line 100
    aget v12, v13, v9

    .line 101
    .line 102
    aput v12, v11, v14

    .line 103
    add-float/2addr v7, v8

    .line 104
    .line 105
    add-int/lit8 v9, v15, 0x1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v12

    .line 110
    .line 111
    if-ge v9, v12, :cond_1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v12

    .line 116
    .line 117
    check-cast v12, Ljava/lang/Float;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 121
    move-result v12

    .line 122
    .line 123
    cmpl-float v12, v7, v12

    .line 124
    .line 125
    if-lez v12, :cond_1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 129
    move v15, v9

    .line 130
    .line 131
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 132
    const/4 v9, 0x1

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_2
    if-eqz v2, :cond_3

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 139
    move-result-object v0

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    move-object v0, v12

    .line 142
    .line 143
    :goto_1
    if-eqz v3, :cond_4

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 147
    move-result-object v12

    .line 148
    .line 149
    :cond_4
    if-nez v0, :cond_5

    .line 150
    const/4 v2, 0x1

    .line 151
    .line 152
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    .line 153
    .line 154
    aput-object v12, v0, v5

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    const/4 v2, 0x1

    .line 160
    .line 161
    if-nez v12, :cond_6

    .line 162
    .line 163
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    .line 164
    .line 165
    aput-object v0, v2, v5

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    const/4 v3, 0x2

    .line 171
    .line 172
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    .line 173
    .line 174
    aput-object v0, v3, v5

    .line 175
    .line 176
    aput-object v12, v3, v2

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 180
    :goto_2
    return-void
.end method
