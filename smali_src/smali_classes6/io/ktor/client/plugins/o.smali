.class public final Lio/ktor/client/plugins/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/o$a;,
        Lio/ktor/client/plugins/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1054#2:182\n766#2:183\n857#2,2:184\n1045#2:186\n1855#2,2:187\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n*L\n38#1:182\n39#1:183\n39#1:184,2\n39#1:186\n42#1:187,2\n47#1:189,2\n*E\n"
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/o$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final acceptCharsetHeader:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestCharset:Ljava/nio/charset/Charset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responseCharsetFallback:Ljava/nio/charset/Charset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/o$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/o$b;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/o;->Plugin:Lio/ktor/client/plugins/o$b;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "HttpPlainText"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/o;->key:Lio/ktor/util/a;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)V
    .locals 8
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "charsets"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "charsetQuality"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "responseCharsetFallback"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p4, p0, Lio/ktor/client/plugins/o;->responseCharsetFallback:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/collections/p0;->C(Ljava/util/Map;)Ljava/util/List;

    .line 24
    move-result-object p4

    .line 25
    .line 26
    check-cast p4, Ljava/lang/Iterable;

    .line 27
    .line 28
    new-instance v0, Lio/ktor/client/plugins/o$d;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lio/ktor/client/plugins/o$d;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p4, v0}, Lkotlin/collections/t;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 35
    move-result-object p4

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    move-object v2, v1

    .line 56
    .line 57
    check-cast v2, Ljava/nio/charset/Charset;

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    xor-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    new-instance p1, Lio/ktor/client/plugins/o$c;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1}, Lio/ktor/client/plugins/o$c;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p1}, Lkotlin/collections/t;->L0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    move-object v0, p1

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Iterable;

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v1

    .line 95
    .line 96
    const-string v2, ","

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    check-cast v1, Ljava/nio/charset/Charset;

    .line 105
    .line 106
    .line 107
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 108
    move-result v3

    .line 109
    .line 110
    if-lez v3, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-static {v1}, Lq7/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move-object v0, p4

    .line 123
    .line 124
    check-cast v0, Ljava/lang/Iterable;

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v1

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    check-cast v1, Lw7/u;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    check-cast v3, Ljava/nio/charset/Charset;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    check-cast v1, Ljava/lang/Number;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 156
    move-result v1

    .line 157
    .line 158
    .line 159
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 160
    move-result v4

    .line 161
    .line 162
    if-lez v4, :cond_4

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_4
    float-to-double v4, v1

    .line 167
    .line 168
    const-wide/16 v6, 0x0

    .line 169
    .line 170
    cmpg-double v6, v6, v4

    .line 171
    .line 172
    if-gtz v6, :cond_5

    .line 173
    .line 174
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 175
    .line 176
    cmpg-double v4, v4, v6

    .line 177
    .line 178
    if-gtz v4, :cond_5

    .line 179
    .line 180
    const/16 v4, 0x64

    .line 181
    int-to-float v4, v4

    .line 182
    mul-float/2addr v4, v1

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Lg8/a;->c(F)I

    .line 186
    move-result v1

    .line 187
    int-to-double v4, v1

    .line 188
    .line 189
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 190
    div-double/2addr v4, v6

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Lq7/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v3, ";q="

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    goto :goto_2

    .line 219
    .line 220
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    const-string p2, "Check failed."

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    move-result-object p2

    .line 227
    .line 228
    .line 229
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    throw p1

    .line 231
    .line 232
    .line 233
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 234
    move-result v0

    .line 235
    .line 236
    if-nez v0, :cond_7

    .line 237
    .line 238
    iget-object v0, p0, Lio/ktor/client/plugins/o;->responseCharsetFallback:Ljava/nio/charset/Charset;

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Lq7/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p2

    .line 250
    .line 251
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 252
    .line 253
    .line 254
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    iput-object p2, p0, Lio/ktor/client/plugins/o;->acceptCharsetHeader:Ljava/lang/String;

    .line 257
    .line 258
    if-nez p3, :cond_9

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 262
    move-result-object p1

    .line 263
    move-object p3, p1

    .line 264
    .line 265
    check-cast p3, Ljava/nio/charset/Charset;

    .line 266
    .line 267
    if-nez p3, :cond_9

    .line 268
    .line 269
    .line 270
    invoke-static {p4}, Lkotlin/collections/t;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    check-cast p1, Lw7/u;

    .line 274
    .line 275
    if-eqz p1, :cond_8

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    check-cast p1, Ljava/nio/charset/Charset;

    .line 282
    :goto_3
    move-object p3, p1

    .line 283
    goto :goto_4

    .line 284
    :cond_8
    const/4 p1, 0x0

    .line 285
    goto :goto_3

    .line 286
    .line 287
    :goto_4
    if-nez p3, :cond_9

    .line 288
    .line 289
    sget-object p3, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 290
    .line 291
    :cond_9
    iput-object p3, p0, Lio/ktor/client/plugins/o;->requestCharset:Ljava/nio/charset/Charset;

    .line 292
    return-void
.end method

.method public static final synthetic a()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/o;->key:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/o;Li7/d;Ljava/lang/String;Lio/ktor/http/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/o;->e(Li7/d;Ljava/lang/String;Lio/ktor/http/c;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Li7/d;Ljava/lang/String;Lio/ktor/http/c;)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    sget-object v0, Lio/ktor/http/c$c;->INSTANCE:Lio/ktor/http/c$c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/http/c$c;->a()Lio/ktor/http/c;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p3

    .line 11
    .line 12
    :goto_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lio/ktor/http/d;->a(Lio/ktor/http/i;)Ljava/nio/charset/Charset;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    if-nez p3, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-object p3, p0, Lio/ktor/client/plugins/o;->requestCharset:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-static {}, Lio/ktor/client/plugins/p;->a()Lorg/slf4j/a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v3, "Sending request body to "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, " as text/plain with charset "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, p1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    new-instance p1, Lk7/c;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p3}, Lio/ktor/http/d;->b(Lio/ktor/http/c;Ljava/nio/charset/Charset;)Lio/ktor/http/c;

    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x4

    .line 65
    const/4 v7, 0x0

    .line 66
    move-object v2, p1

    .line 67
    move-object v3, p2

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v2 .. v7}, Lk7/c;-><init>(Ljava/lang/String;Lio/ktor/http/c;Lio/ktor/http/v;ILkotlin/jvm/internal/k;)V

    .line 71
    return-object p1
.end method


# virtual methods
.method public final c(Li7/d;)V
    .locals 4
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lio/ktor/http/o;->d()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lio/ktor/util/v;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/p;->a()Lorg/slf4j/a;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "Adding Accept-Charset="

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v3, p0, Lio/ktor/client/plugins/o;->acceptCharsetHeader:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, " to "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lio/ktor/http/o;->d()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object v1, p0, Lio/ktor/client/plugins/o;->acceptCharsetHeader:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lio/ktor/util/v;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final d(Lio/ktor/client/call/b;Lr7/m;)Ljava/lang/String;
    .locals 4
    .param p1    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lr7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "call"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "body"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/ktor/http/s;->a(Lio/ktor/http/q;)Ljava/nio/charset/Charset;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lio/ktor/client/plugins/o;->responseCharsetFallback:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/p;->a()Lorg/slf4j/a;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "Reading response body for "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p1, " as String with charset "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, p1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 63
    const/4 p1, 0x2

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v0, v2, p1, v1}, Lr7/s;->e(Lr7/m;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
