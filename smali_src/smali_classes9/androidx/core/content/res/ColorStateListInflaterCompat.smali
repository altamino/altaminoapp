.class public final Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 25
    .line 26
    const-string p1, "No start tag found"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "selector"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ColorStateListInflaterCompat;->e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, ": invalid color state list tag "

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0
.end method

.method private static c()Landroid/util/TypedValue;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroid/util/TypedValue;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/util/TypedValue;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method

.method public static d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    .line 12
    const-string p1, "CSLCompat"

    .line 13
    .line 14
    const-string p2, "Failed to inflate ColorStateList."

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method private static e(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    add-int/2addr v3, v4

    .line 13
    .line 14
    const/16 v5, 0x14

    .line 15
    .line 16
    new-array v6, v5, [[I

    .line 17
    .line 18
    new-array v5, v5, [I

    .line 19
    const/4 v8, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    move-result v9

    .line 24
    .line 25
    if-eq v9, v4, :cond_a

    .line 26
    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 29
    move-result v10

    .line 30
    .line 31
    if-ge v10, v3, :cond_0

    .line 32
    const/4 v11, 0x3

    .line 33
    .line 34
    if-eq v9, v11, :cond_a

    .line 35
    :cond_0
    const/4 v11, 0x2

    .line 36
    .line 37
    if-ne v9, v11, :cond_9

    .line 38
    .line 39
    if-gt v10, v3, :cond_9

    .line 40
    .line 41
    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 43
    move-result-object v9

    .line 44
    .line 45
    const-string v10, "item"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v9

    .line 50
    .line 51
    if-nez v9, :cond_1

    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2, v1, v9}, Landroidx/core/content/res/ColorStateListInflaterCompat;->h(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    .line 62
    const/4 v11, -0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    move-result v12

    .line 67
    .line 68
    .line 69
    const v13, -0xff01

    .line 70
    .line 71
    if-eq v12, v11, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v12}, Landroidx/core/content/res/ColorStateListInflaterCompat;->f(Landroid/content/res/Resources;I)Z

    .line 75
    move-result v11

    .line 76
    .line 77
    if-nez v11, :cond_2

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 81
    move-result-object v10

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v10, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 85
    move-result-object v10

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 89
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :catch_0
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 96
    move-result v10

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 101
    move-result v10

    .line 102
    .line 103
    :goto_1
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 107
    move-result v12

    .line 108
    .line 109
    const/high16 v13, 0x3f800000    # 1.0f

    .line 110
    .line 111
    if-eqz v12, :cond_3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 115
    move-result v13

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_3
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 122
    move-result v12

    .line 123
    .line 124
    if-eqz v12, :cond_4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 128
    move-result v13

    .line 129
    .line 130
    :cond_4
    :goto_2
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    const/16 v12, 0x1f

    .line 133
    .line 134
    const/high16 v14, -0x40800000    # -1.0f

    .line 135
    .line 136
    if-lt v11, v12, :cond_5

    .line 137
    .line 138
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_android_lStar:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 142
    move-result v12

    .line 143
    .line 144
    if-eqz v12, :cond_5

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 148
    move-result v11

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_5
    sget v11, Landroidx/core/R$styleable;->ColorStateListItem_lStar:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 155
    move-result v11

    .line 156
    .line 157
    .line 158
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    .line 160
    .line 161
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 162
    move-result v9

    .line 163
    .line 164
    new-array v12, v9, [I

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    .line 168
    :goto_4
    if-ge v14, v9, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 172
    move-result v4

    .line 173
    .line 174
    .line 175
    const v7, 0x10101a5

    .line 176
    .line 177
    if-eq v4, v7, :cond_7

    .line 178
    .line 179
    .line 180
    const v7, 0x101031f

    .line 181
    .line 182
    if-eq v4, v7, :cond_7

    .line 183
    .line 184
    sget v7, Landroidx/core/R$attr;->alpha:I

    .line 185
    .line 186
    if-eq v4, v7, :cond_7

    .line 187
    .line 188
    sget v7, Landroidx/core/R$attr;->lStar:I

    .line 189
    .line 190
    if-eq v4, v7, :cond_7

    .line 191
    .line 192
    add-int/lit8 v7, v15, 0x1

    .line 193
    const/4 v0, 0x0

    .line 194
    .line 195
    .line 196
    invoke-interface {v1, v14, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    .line 197
    move-result v16

    .line 198
    .line 199
    if-eqz v16, :cond_6

    .line 200
    goto :goto_5

    .line 201
    :cond_6
    neg-int v4, v4

    .line 202
    .line 203
    :goto_5
    aput v4, v12, v15

    .line 204
    move v15, v7

    .line 205
    .line 206
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 207
    const/4 v4, 0x1

    .line 208
    .line 209
    move-object/from16 v0, p0

    .line 210
    goto :goto_4

    .line 211
    .line 212
    .line 213
    :cond_8
    invoke-static {v12, v15}, Landroid/util/StateSet;->trimStateSet([II)[I

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    invoke-static {v10, v13, v11}, Landroidx/core/content/res/ColorStateListInflaterCompat;->g(IFF)I

    .line 218
    move-result v4

    .line 219
    .line 220
    .line 221
    invoke-static {v5, v8, v4}, Landroidx/core/content/res/GrowingArrayUtils;->a([III)[I

    .line 222
    move-result-object v5

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v8, v0}, Landroidx/core/content/res/GrowingArrayUtils;->b([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 227
    move-object v6, v0

    .line 228
    .line 229
    check-cast v6, [[I

    .line 230
    .line 231
    add-int/lit8 v8, v8, 0x1

    .line 232
    :cond_9
    :goto_6
    const/4 v4, 0x1

    .line 233
    .line 234
    move-object/from16 v0, p0

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_a
    new-array v0, v8, [I

    .line 239
    .line 240
    new-array v1, v8, [[I

    .line 241
    const/4 v2, 0x0

    .line 242
    .line 243
    .line 244
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .line 249
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 250
    .line 251
    .line 252
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 253
    return-object v2
.end method

.method private static f(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/core/content/res/ColorStateListInflaterCompat;->c()Landroid/util/TypedValue;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 9
    .line 10
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 11
    .line 12
    const/16 p1, 0x1c

    .line 13
    .line 14
    if-lt p0, p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x1f

    .line 17
    .line 18
    if-gt p0, p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method private static g(IFF)I
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p2, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    .line 10
    cmpg-float v0, p2, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    .line 17
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float v2, p1, v2

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    return p0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    mul-float/2addr v2, p1

    .line 31
    .line 32
    const/high16 p1, 0x3f000000    # 0.5f

    .line 33
    add-float/2addr v2, p1

    .line 34
    float-to-int p1, v2

    .line 35
    .line 36
    const/16 v2, 0xff

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->b(III)I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Landroidx/core/content/res/CamColor;->c(I)Landroidx/core/content/res/CamColor;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->j()F

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->i()F

    .line 54
    move-result p0

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p0, p2}, Landroidx/core/content/res/CamColor;->m(FFF)I

    .line 58
    move-result p0

    .line 59
    .line 60
    .line 61
    :cond_2
    const p2, 0xffffff

    .line 62
    and-int/2addr p0, p2

    .line 63
    .line 64
    shl-int/lit8 p1, p1, 0x18

    .line 65
    or-int/2addr p0, p1

    .line 66
    return p0
.end method

.method private static h(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method
