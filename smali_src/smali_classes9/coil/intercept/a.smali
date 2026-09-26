.class public final Lcoil/intercept/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/intercept/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/intercept/a$b;,
        Lcoil/intercept/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\ncoil/util/-Utils\n+ 4 Logs.kt\ncoil/util/-Logs\n*L\n1#1,302:1\n1#2:303\n1#2:305\n1#2:307\n178#3:304\n182#3:306\n21#4,4:308\n21#4,4:312\n21#4,4:316\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n*L\n116#1:305\n117#1:307\n116#1:304\n117#1:306\n230#1:308,4\n262#1:312,4\n268#1:316,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/intercept/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EngineInterceptor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final imageLoader:Lcoil/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcoil/util/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memoryCacheService:Lcoil/memory/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestService:Lcoil/request/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/intercept/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/intercept/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/intercept/a;->Companion:Lcoil/intercept/a$a;

    return-void
.end method

.method public constructor <init>(Lcoil/e;Lcoil/request/o;Lcoil/util/q;)V
    .locals 1
    .param p1    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/util/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/intercept/a;->imageLoader:Lcoil/e;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/intercept/a;->requestService:Lcoil/request/o;

    .line 8
    .line 9
    new-instance p3, Lcoil/memory/c;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p3, p1, p2, v0}, Lcoil/memory/c;-><init>(Lcoil/e;Lcoil/request/o;Lcoil/util/q;)V

    .line 14
    .line 15
    iput-object p3, p0, Lcoil/intercept/a;->memoryCacheService:Lcoil/memory/c;

    .line 16
    return-void
.end method

.method public static final synthetic b(Lcoil/intercept/a;Landroid/graphics/drawable/Drawable;Lcoil/request/m;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcoil/intercept/a;->g(Landroid/graphics/drawable/Drawable;Lcoil/request/m;Ljava/util/List;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcoil/intercept/a;Lcoil/fetch/m;Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lcoil/intercept/a;->h(Lcoil/fetch/m;Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcoil/intercept/a;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcoil/intercept/a;->i(Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcoil/intercept/a;Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lcoil/intercept/a;->j(Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcoil/intercept/a;)Lcoil/memory/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/intercept/a;->memoryCacheService:Lcoil/memory/c;

    .line 3
    return-object p0
.end method

.method private final g(Landroid/graphics/drawable/Drawable;Lcoil/request/m;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcoil/request/m;",
            "Ljava/util/List<",
            "+",
            "Lg0/a;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    move-object p3, p1

    .line 6
    .line 7
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Lcoil/util/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcoil/util/i;->q()[Landroid/graphics/Bitmap$Config;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lkotlin/collections/l;->F([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    return-object p3

    .line 27
    .line 28
    :cond_0
    sget-object v1, Lcoil/util/k;->INSTANCE:Lcoil/util/k;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcoil/request/m;->f()Landroid/graphics/Bitmap$Config;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcoil/request/m;->n()Lcoil/size/i;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcoil/request/m;->m()Lcoil/size/h;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcoil/request/m;->c()Z

    .line 44
    move-result v6

    .line 45
    move-object v2, p1

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v1 .. v6}, Lcoil/util/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/i;Lcoil/size/h;Z)Landroid/graphics/Bitmap;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private final h(Lcoil/fetch/m;Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/fetch/m;",
            "Lcoil/b;",
            "Lcoil/request/h;",
            "Ljava/lang/Object;",
            "Lcoil/request/m;",
            "Lcoil/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    instance-of v1, v0, Lcoil/intercept/a$c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lcoil/intercept/a$c;

    .line 10
    .line 11
    iget v2, v1, Lcoil/intercept/a$c;->label:I

    .line 12
    .line 13
    const/high16 v3, -0x80000000

    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    sub-int/2addr v2, v3

    .line 19
    .line 20
    iput v2, v1, Lcoil/intercept/a$c;->label:I

    .line 21
    .line 22
    move-object/from16 v2, p0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v1, Lcoil/intercept/a$c;

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v0}, Lcoil/intercept/a$c;-><init>(Lcoil/intercept/a;Lkotlin/coroutines/d;)V

    .line 31
    .line 32
    :goto_0
    iget-object v0, v1, Lcoil/intercept/a$c;->result:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget v4, v1, Lcoil/intercept/a$c;->label:I

    .line 39
    const/4 v5, 0x1

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    iget v4, v1, Lcoil/intercept/a$c;->I$0:I

    .line 46
    .line 47
    iget-object v6, v1, Lcoil/intercept/a$c;->L$7:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, Lcoil/decode/i;

    .line 50
    .line 51
    iget-object v7, v1, Lcoil/intercept/a$c;->L$6:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v7, Lcoil/c;

    .line 54
    .line 55
    iget-object v8, v1, Lcoil/intercept/a$c;->L$5:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v8, Lcoil/request/m;

    .line 58
    .line 59
    iget-object v9, v1, Lcoil/intercept/a$c;->L$4:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v10, v1, Lcoil/intercept/a$c;->L$3:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v10, Lcoil/request/h;

    .line 64
    .line 65
    iget-object v11, v1, Lcoil/intercept/a$c;->L$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v11, Lcoil/b;

    .line 68
    .line 69
    iget-object v12, v1, Lcoil/intercept/a$c;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v12, Lcoil/fetch/m;

    .line 72
    .line 73
    iget-object v13, v1, Lcoil/intercept/a$c;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v13, Lcoil/intercept/a;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 79
    move-object v14, v10

    .line 80
    move-object v10, v1

    .line 81
    move-object v1, v11

    .line 82
    move-object v11, v3

    .line 83
    move-object v3, v14

    .line 84
    move-object v15, v9

    .line 85
    move v9, v4

    .line 86
    move-object v4, v15

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .line 102
    move-object/from16 v4, p4

    .line 103
    .line 104
    move-object/from16 v6, p5

    .line 105
    .line 106
    move-object/from16 v7, p6

    .line 107
    move v8, v0

    .line 108
    move-object v9, v1

    .line 109
    move-object v13, v2

    .line 110
    move-object v10, v3

    .line 111
    .line 112
    move-object/from16 v0, p1

    .line 113
    .line 114
    move-object/from16 v1, p2

    .line 115
    .line 116
    move-object/from16 v3, p3

    .line 117
    .line 118
    :goto_1
    iget-object v11, v13, Lcoil/intercept/a;->imageLoader:Lcoil/e;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v6, v11, v8}, Lcoil/b;->i(Lcoil/fetch/m;Lcoil/request/m;Lcoil/e;I)Lw7/u;

    .line 122
    move-result-object v8

    .line 123
    .line 124
    if-eqz v8, :cond_7

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Lw7/u;->c()Ljava/lang/Object;

    .line 128
    move-result-object v11

    .line 129
    .line 130
    check-cast v11, Lcoil/decode/i;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Lw7/u;->d()Ljava/lang/Object;

    .line 134
    move-result-object v8

    .line 135
    .line 136
    check-cast v8, Ljava/lang/Number;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 140
    move-result v8

    .line 141
    add-int/2addr v8, v5

    .line 142
    .line 143
    .line 144
    invoke-interface {v7, v3, v11, v6}, Lcoil/c;->q(Lcoil/request/h;Lcoil/decode/i;Lcoil/request/m;)V

    .line 145
    .line 146
    iput-object v13, v9, Lcoil/intercept/a$c;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v0, v9, Lcoil/intercept/a$c;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v1, v9, Lcoil/intercept/a$c;->L$2:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v3, v9, Lcoil/intercept/a$c;->L$3:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v4, v9, Lcoil/intercept/a$c;->L$4:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v6, v9, Lcoil/intercept/a$c;->L$5:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v7, v9, Lcoil/intercept/a$c;->L$6:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v11, v9, Lcoil/intercept/a$c;->L$7:Ljava/lang/Object;

    .line 161
    .line 162
    iput v8, v9, Lcoil/intercept/a$c;->I$0:I

    .line 163
    .line 164
    iput v5, v9, Lcoil/intercept/a$c;->label:I

    .line 165
    .line 166
    .line 167
    invoke-interface {v11, v9}, Lcoil/decode/i;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 168
    move-result-object v12

    .line 169
    .line 170
    if-ne v12, v10, :cond_3

    .line 171
    return-object v10

    .line 172
    :cond_3
    move-object v14, v12

    .line 173
    move-object v12, v0

    .line 174
    move-object v0, v14

    .line 175
    move v15, v8

    .line 176
    move-object v8, v6

    .line 177
    move-object v6, v11

    .line 178
    move-object v11, v10

    .line 179
    move-object v10, v9

    .line 180
    move v9, v15

    .line 181
    .line 182
    :goto_2
    check-cast v0, Lcoil/decode/g;

    .line 183
    .line 184
    .line 185
    invoke-interface {v7, v3, v6, v8, v0}, Lcoil/c;->m(Lcoil/request/h;Lcoil/decode/i;Lcoil/request/m;Lcoil/decode/g;)V

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    new-instance v1, Lcoil/intercept/a$b;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcoil/decode/g;->a()Landroid/graphics/drawable/Drawable;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lcoil/decode/g;->b()Z

    .line 197
    move-result v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12}, Lcoil/fetch/m;->a()Lcoil/decode/f;

    .line 201
    move-result-object v4

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Lcoil/fetch/m;->b()Lcoil/decode/p;

    .line 205
    move-result-object v5

    .line 206
    .line 207
    instance-of v6, v5, Lcoil/decode/o;

    .line 208
    const/4 v7, 0x0

    .line 209
    .line 210
    if-eqz v6, :cond_4

    .line 211
    .line 212
    check-cast v5, Lcoil/decode/o;

    .line 213
    goto :goto_3

    .line 214
    :cond_4
    move-object v5, v7

    .line 215
    .line 216
    :goto_3
    if-eqz v5, :cond_5

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5}, Lcoil/decode/o;->l()Ljava/lang/String;

    .line 220
    move-result-object v7

    .line 221
    .line 222
    .line 223
    :cond_5
    invoke-direct {v1, v3, v0, v4, v7}, Lcoil/intercept/a$b;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;Ljava/lang/String;)V

    .line 224
    return-object v1

    .line 225
    :cond_6
    move-object v6, v8

    .line 226
    move v8, v9

    .line 227
    move-object v9, v10

    .line 228
    move-object v10, v11

    .line 229
    move-object v0, v12

    .line 230
    goto :goto_1

    .line 231
    .line 232
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    const-string v1, "Unable to create a decoder that supports: "

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v1
.end method

.method private final i(Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "Ljava/lang/Object;",
            "Lcoil/request/m;",
            "Lcoil/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v0, p5

    .line 5
    .line 6
    instance-of v1, v0, Lcoil/intercept/a$d;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcoil/intercept/a$d;

    .line 12
    .line 13
    iget v2, v1, Lcoil/intercept/a$d;->label:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    sub-int/2addr v2, v3

    .line 21
    .line 22
    iput v2, v1, Lcoil/intercept/a$d;->label:I

    .line 23
    :goto_0
    move-object v0, v1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance v1, Lcoil/intercept/a$d;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v8, v0}, Lcoil/intercept/a$d;-><init>(Lcoil/intercept/a;Lkotlin/coroutines/d;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :goto_1
    iget-object v1, v0, Lcoil/intercept/a$d;->result:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 36
    move-result-object v9

    .line 37
    .line 38
    iget v2, v0, Lcoil/intercept/a$d;->label:I

    .line 39
    const/4 v10, 0x3

    .line 40
    const/4 v11, 0x2

    .line 41
    const/4 v3, 0x1

    .line 42
    const/4 v12, 0x0

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eq v2, v3, :cond_3

    .line 47
    .line 48
    if-eq v2, v11, :cond_2

    .line 49
    .line 50
    if-ne v2, v10, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    .line 65
    :cond_2
    iget-object v2, v0, Lcoil/intercept/a$d;->L$4:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 68
    .line 69
    iget-object v3, v0, Lcoil/intercept/a$d;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Lkotlin/jvm/internal/p0;

    .line 72
    .line 73
    iget-object v4, v0, Lcoil/intercept/a$d;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Lcoil/c;

    .line 76
    .line 77
    iget-object v5, v0, Lcoil/intercept/a$d;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcoil/request/h;

    .line 80
    .line 81
    iget-object v6, v0, Lcoil/intercept/a$d;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Lcoil/intercept/a;

    .line 84
    .line 85
    .line 86
    :try_start_0
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :cond_3
    iget-object v2, v0, Lcoil/intercept/a$d;->L$7:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 96
    .line 97
    iget-object v3, v0, Lcoil/intercept/a$d;->L$6:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Lkotlin/jvm/internal/p0;

    .line 100
    .line 101
    iget-object v4, v0, Lcoil/intercept/a$d;->L$5:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, Lkotlin/jvm/internal/p0;

    .line 104
    .line 105
    iget-object v5, v0, Lcoil/intercept/a$d;->L$4:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Lkotlin/jvm/internal/p0;

    .line 108
    .line 109
    iget-object v6, v0, Lcoil/intercept/a$d;->L$3:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v6, Lcoil/c;

    .line 112
    .line 113
    iget-object v7, v0, Lcoil/intercept/a$d;->L$2:Ljava/lang/Object;

    .line 114
    .line 115
    iget-object v13, v0, Lcoil/intercept/a$d;->L$1:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v13, Lcoil/request/h;

    .line 118
    .line 119
    iget-object v14, v0, Lcoil/intercept/a$d;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v14, Lcoil/intercept/a;

    .line 122
    .line 123
    .line 124
    :try_start_1
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    move-object v15, v3

    .line 126
    .line 127
    move-object/from16 v19, v4

    .line 128
    move-object v3, v5

    .line 129
    .line 130
    move-object/from16 v21, v7

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    move-object v2, v3

    .line 135
    .line 136
    goto/16 :goto_8

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 140
    .line 141
    new-instance v13, Lkotlin/jvm/internal/p0;

    .line 142
    .line 143
    .line 144
    invoke-direct {v13}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 145
    .line 146
    move-object/from16 v1, p3

    .line 147
    .line 148
    iput-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 149
    .line 150
    new-instance v14, Lkotlin/jvm/internal/p0;

    .line 151
    .line 152
    .line 153
    invoke-direct {v14}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 154
    .line 155
    iget-object v1, v8, Lcoil/intercept/a;->imageLoader:Lcoil/e;

    .line 156
    .line 157
    .line 158
    invoke-interface {v1}, Lcoil/e;->getComponents()Lcoil/b;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    iput-object v1, v14, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 162
    .line 163
    new-instance v15, Lkotlin/jvm/internal/p0;

    .line 164
    .line 165
    .line 166
    invoke-direct {v15}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 167
    .line 168
    :try_start_2
    iget-object v1, v8, Lcoil/intercept/a;->requestService:Lcoil/request/o;

    .line 169
    .line 170
    iget-object v2, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Lcoil/request/m;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcoil/request/o;->a(Lcoil/request/m;)Z

    .line 176
    move-result v1

    .line 177
    .line 178
    if-nez v1, :cond_5

    .line 179
    .line 180
    iget-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 181
    .line 182
    move-object/from16 v16, v1

    .line 183
    .line 184
    check-cast v16, Lcoil/request/m;

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 189
    .line 190
    const/16 v19, 0x0

    .line 191
    .line 192
    const/16 v20, 0x0

    .line 193
    .line 194
    const/16 v21, 0x0

    .line 195
    .line 196
    const/16 v22, 0x0

    .line 197
    .line 198
    const/16 v23, 0x0

    .line 199
    .line 200
    const/16 v24, 0x0

    .line 201
    .line 202
    const/16 v25, 0x0

    .line 203
    .line 204
    const/16 v26, 0x0

    .line 205
    .line 206
    const/16 v27, 0x0

    .line 207
    .line 208
    const/16 v28, 0x0

    .line 209
    .line 210
    const/16 v29, 0x0

    .line 211
    .line 212
    const/16 v30, 0x0

    .line 213
    .line 214
    const/16 v31, 0x0

    .line 215
    .line 216
    const/16 v32, 0x7ffd

    .line 217
    .line 218
    const/16 v33, 0x0

    .line 219
    .line 220
    .line 221
    invoke-static/range {v16 .. v33}, Lcoil/request/m;->b(Lcoil/request/m;Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/i;Lcoil/size/h;ZZZLjava/lang/String;Lokhttp3/Headers;Lcoil/request/q;Lcoil/request/n;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;ILjava/lang/Object;)Lcoil/request/m;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    iput-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 225
    goto :goto_2

    .line 226
    :catchall_2
    move-exception v0

    .line 227
    move-object v2, v15

    .line 228
    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    .line 232
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcoil/request/h;->w()Lw7/u;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    if-nez v1, :cond_6

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Lcoil/request/h;->o()Lcoil/decode/i$a;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    :cond_6
    iget-object v1, v14, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v1, Lcoil/b;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lcoil/b;->h()Lcoil/b$a;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p1 .. p1}, Lcoil/request/h;->w()Lw7/u;

    .line 253
    move-result-object v2

    .line 254
    const/4 v4, 0x0

    .line 255
    .line 256
    if-eqz v2, :cond_7

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Lcoil/b$a;->g()Ljava/util/List;

    .line 260
    move-result-object v5

    .line 261
    .line 262
    .line 263
    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcoil/request/h;->o()Lcoil/decode/i$a;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    if-eqz v2, :cond_8

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcoil/b$a;->f()Ljava/util/List;

    .line 273
    move-result-object v5

    .line 274
    .line 275
    .line 276
    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_8
    invoke-virtual {v1}, Lcoil/b$a;->e()Lcoil/b;

    .line 280
    move-result-object v1

    .line 281
    .line 282
    iput-object v1, v14, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 283
    .line 284
    :cond_9
    iget-object v1, v14, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 285
    move-object v2, v1

    .line 286
    .line 287
    check-cast v2, Lcoil/b;

    .line 288
    .line 289
    iget-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 290
    move-object v5, v1

    .line 291
    .line 292
    check-cast v5, Lcoil/request/m;

    .line 293
    .line 294
    iput-object v8, v0, Lcoil/intercept/a$d;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    move-object/from16 v7, p1

    .line 297
    .line 298
    iput-object v7, v0, Lcoil/intercept/a$d;->L$1:Ljava/lang/Object;

    .line 299
    .line 300
    move-object/from16 v6, p2

    .line 301
    .line 302
    iput-object v6, v0, Lcoil/intercept/a$d;->L$2:Ljava/lang/Object;

    .line 303
    .line 304
    move-object/from16 v4, p4

    .line 305
    .line 306
    iput-object v4, v0, Lcoil/intercept/a$d;->L$3:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v13, v0, Lcoil/intercept/a$d;->L$4:Ljava/lang/Object;

    .line 309
    .line 310
    iput-object v14, v0, Lcoil/intercept/a$d;->L$5:Ljava/lang/Object;

    .line 311
    .line 312
    iput-object v15, v0, Lcoil/intercept/a$d;->L$6:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v15, v0, Lcoil/intercept/a$d;->L$7:Ljava/lang/Object;

    .line 315
    .line 316
    iput v3, v0, Lcoil/intercept/a$d;->label:I

    .line 317
    .line 318
    move-object/from16 v1, p0

    .line 319
    .line 320
    move-object/from16 v3, p1

    .line 321
    .line 322
    move-object/from16 v4, p2

    .line 323
    .line 324
    move-object/from16 v6, p4

    .line 325
    move-object v7, v0

    .line 326
    .line 327
    .line 328
    invoke-direct/range {v1 .. v7}, Lcoil/intercept/a;->j(Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    if-ne v1, v9, :cond_a

    .line 332
    return-object v9

    .line 333
    .line 334
    :cond_a
    move-object/from16 v21, p2

    .line 335
    .line 336
    move-object/from16 v6, p4

    .line 337
    move-object v3, v13

    .line 338
    .line 339
    move-object/from16 v19, v14

    .line 340
    move-object v2, v15

    .line 341
    .line 342
    move-object/from16 v13, p1

    .line 343
    move-object v14, v8

    .line 344
    .line 345
    :goto_3
    iput-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 346
    .line 347
    iget-object v1, v15, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 348
    move-object v2, v1

    .line 349
    .line 350
    check-cast v2, Lcoil/fetch/h;

    .line 351
    .line 352
    instance-of v4, v2, Lcoil/fetch/m;

    .line 353
    .line 354
    if-eqz v4, :cond_c

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13}, Lcoil/request/h;->n()Lkotlinx/coroutines/k0;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    new-instance v2, Lcoil/intercept/a$e;

    .line 361
    .line 362
    const/16 v24, 0x0

    .line 363
    .line 364
    move-object/from16 v16, v2

    .line 365
    .line 366
    move-object/from16 v17, v14

    .line 367
    .line 368
    move-object/from16 v18, v15

    .line 369
    .line 370
    move-object/from16 v20, v13

    .line 371
    .line 372
    move-object/from16 v22, v3

    .line 373
    .line 374
    move-object/from16 v23, v6

    .line 375
    .line 376
    .line 377
    invoke-direct/range {v16 .. v24}, Lcoil/intercept/a$e;-><init>(Lcoil/intercept/a;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lcoil/request/h;Ljava/lang/Object;Lkotlin/jvm/internal/p0;Lcoil/c;Lkotlin/coroutines/d;)V

    .line 378
    .line 379
    iput-object v14, v0, Lcoil/intercept/a$d;->L$0:Ljava/lang/Object;

    .line 380
    .line 381
    iput-object v13, v0, Lcoil/intercept/a$d;->L$1:Ljava/lang/Object;

    .line 382
    .line 383
    iput-object v6, v0, Lcoil/intercept/a$d;->L$2:Ljava/lang/Object;

    .line 384
    .line 385
    iput-object v3, v0, Lcoil/intercept/a$d;->L$3:Ljava/lang/Object;

    .line 386
    .line 387
    iput-object v15, v0, Lcoil/intercept/a$d;->L$4:Ljava/lang/Object;

    .line 388
    .line 389
    iput-object v12, v0, Lcoil/intercept/a$d;->L$5:Ljava/lang/Object;

    .line 390
    .line 391
    iput-object v12, v0, Lcoil/intercept/a$d;->L$6:Ljava/lang/Object;

    .line 392
    .line 393
    iput-object v12, v0, Lcoil/intercept/a$d;->L$7:Ljava/lang/Object;

    .line 394
    .line 395
    iput v11, v0, Lcoil/intercept/a$d;->label:I

    .line 396
    .line 397
    .line 398
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 399
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 400
    .line 401
    if-ne v1, v9, :cond_b

    .line 402
    return-object v9

    .line 403
    :cond_b
    move-object v4, v6

    .line 404
    move-object v5, v13

    .line 405
    move-object v6, v14

    .line 406
    move-object v2, v15

    .line 407
    .line 408
    :goto_4
    :try_start_3
    check-cast v1, Lcoil/intercept/a$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    move-object v15, v2

    .line 410
    move-object v2, v6

    .line 411
    move-object v6, v4

    .line 412
    move-object v4, v5

    .line 413
    .line 414
    move-object/from16 v34, v3

    .line 415
    move-object v3, v1

    .line 416
    .line 417
    move-object/from16 v1, v34

    .line 418
    goto :goto_5

    .line 419
    .line 420
    :cond_c
    :try_start_4
    instance-of v2, v2, Lcoil/fetch/g;

    .line 421
    .line 422
    if-eqz v2, :cond_12

    .line 423
    .line 424
    new-instance v2, Lcoil/intercept/a$b;

    .line 425
    .line 426
    check-cast v1, Lcoil/fetch/g;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Lcoil/fetch/g;->b()Landroid/graphics/drawable/Drawable;

    .line 430
    move-result-object v1

    .line 431
    .line 432
    iget-object v4, v15, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v4, Lcoil/fetch/g;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Lcoil/fetch/g;->c()Z

    .line 438
    move-result v4

    .line 439
    .line 440
    iget-object v5, v15, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v5, Lcoil/fetch/g;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5}, Lcoil/fetch/g;->a()Lcoil/decode/f;

    .line 446
    move-result-object v5

    .line 447
    .line 448
    .line 449
    invoke-direct {v2, v1, v4, v5, v12}, Lcoil/intercept/a$b;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 450
    move-object v1, v3

    .line 451
    move-object v4, v13

    .line 452
    move-object v3, v2

    .line 453
    move-object v2, v14

    .line 454
    .line 455
    :goto_5
    iget-object v5, v15, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 456
    .line 457
    instance-of v7, v5, Lcoil/fetch/m;

    .line 458
    .line 459
    if-eqz v7, :cond_d

    .line 460
    .line 461
    check-cast v5, Lcoil/fetch/m;

    .line 462
    goto :goto_6

    .line 463
    :cond_d
    move-object v5, v12

    .line 464
    .line 465
    :goto_6
    if-eqz v5, :cond_e

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5}, Lcoil/fetch/m;->b()Lcoil/decode/p;

    .line 469
    move-result-object v5

    .line 470
    .line 471
    if-eqz v5, :cond_e

    .line 472
    .line 473
    .line 474
    invoke-static {v5}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 475
    .line 476
    :cond_e
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 477
    move-object v5, v1

    .line 478
    .line 479
    check-cast v5, Lcoil/request/m;

    .line 480
    .line 481
    iput-object v12, v0, Lcoil/intercept/a$d;->L$0:Ljava/lang/Object;

    .line 482
    .line 483
    iput-object v12, v0, Lcoil/intercept/a$d;->L$1:Ljava/lang/Object;

    .line 484
    .line 485
    iput-object v12, v0, Lcoil/intercept/a$d;->L$2:Ljava/lang/Object;

    .line 486
    .line 487
    iput-object v12, v0, Lcoil/intercept/a$d;->L$3:Ljava/lang/Object;

    .line 488
    .line 489
    iput-object v12, v0, Lcoil/intercept/a$d;->L$4:Ljava/lang/Object;

    .line 490
    .line 491
    iput-object v12, v0, Lcoil/intercept/a$d;->L$5:Ljava/lang/Object;

    .line 492
    .line 493
    iput-object v12, v0, Lcoil/intercept/a$d;->L$6:Ljava/lang/Object;

    .line 494
    .line 495
    iput-object v12, v0, Lcoil/intercept/a$d;->L$7:Ljava/lang/Object;

    .line 496
    .line 497
    iput v10, v0, Lcoil/intercept/a$d;->label:I

    .line 498
    move-object v7, v0

    .line 499
    .line 500
    .line 501
    invoke-virtual/range {v2 .. v7}, Lcoil/intercept/a;->k(Lcoil/intercept/a$b;Lcoil/request/h;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 502
    move-result-object v1

    .line 503
    .line 504
    if-ne v1, v9, :cond_f

    .line 505
    return-object v9

    .line 506
    .line 507
    :cond_f
    :goto_7
    check-cast v1, Lcoil/intercept/a$b;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Lcoil/intercept/a$b;->e()Landroid/graphics/drawable/Drawable;

    .line 511
    move-result-object v0

    .line 512
    .line 513
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 514
    .line 515
    if-eqz v2, :cond_10

    .line 516
    move-object v12, v0

    .line 517
    .line 518
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 519
    .line 520
    :cond_10
    if-eqz v12, :cond_11

    .line 521
    .line 522
    .line 523
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 524
    move-result-object v0

    .line 525
    .line 526
    if-eqz v0, :cond_11

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 530
    :cond_11
    return-object v1

    .line 531
    .line 532
    :cond_12
    :try_start_5
    new-instance v0, Lw7/s;

    .line 533
    .line 534
    .line 535
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 536
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 537
    .line 538
    :goto_8
    iget-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 539
    .line 540
    instance-of v2, v1, Lcoil/fetch/m;

    .line 541
    .line 542
    if-eqz v2, :cond_13

    .line 543
    move-object v12, v1

    .line 544
    .line 545
    check-cast v12, Lcoil/fetch/m;

    .line 546
    .line 547
    :cond_13
    if-eqz v12, :cond_14

    .line 548
    .line 549
    .line 550
    invoke-virtual {v12}, Lcoil/fetch/m;->b()Lcoil/decode/p;

    .line 551
    move-result-object v1

    .line 552
    .line 553
    if-eqz v1, :cond_14

    .line 554
    .line 555
    .line 556
    invoke-static {v1}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 557
    :cond_14
    throw v0
.end method

.method private final j(Lcoil/b;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/b;",
            "Lcoil/request/h;",
            "Ljava/lang/Object;",
            "Lcoil/request/m;",
            "Lcoil/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p6, Lcoil/intercept/a$f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p6

    .line 6
    .line 7
    check-cast v0, Lcoil/intercept/a$f;

    .line 8
    .line 9
    iget v1, v0, Lcoil/intercept/a$f;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcoil/intercept/a$f;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/intercept/a$f;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p6}, Lcoil/intercept/a$f;-><init>(Lcoil/intercept/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p6, v0, Lcoil/intercept/a$f;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/intercept/a$f;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lcoil/intercept/a$f;->I$0:I

    .line 40
    .line 41
    iget-object p2, v0, Lcoil/intercept/a$f;->L$6:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lcoil/fetch/i;

    .line 44
    .line 45
    iget-object p3, v0, Lcoil/intercept/a$f;->L$5:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p3, Lcoil/c;

    .line 48
    .line 49
    iget-object p4, v0, Lcoil/intercept/a$f;->L$4:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p4, Lcoil/request/m;

    .line 52
    .line 53
    iget-object p5, v0, Lcoil/intercept/a$f;->L$3:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v2, v0, Lcoil/intercept/a$f;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lcoil/request/h;

    .line 58
    .line 59
    iget-object v4, v0, Lcoil/intercept/a$f;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Lcoil/b;

    .line 62
    .line 63
    iget-object v5, v0, Lcoil/intercept/a$f;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Lcoil/intercept/a;

    .line 66
    .line 67
    .line 68
    invoke-static {p6}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 69
    move-object v6, v0

    .line 70
    move v0, p1

    .line 71
    move-object p1, v4

    .line 72
    move-object v4, v1

    .line 73
    move-object v1, v6

    .line 74
    move-object v7, v2

    .line 75
    move-object v2, p2

    .line 76
    move-object p2, v7

    .line 77
    move-object v8, p5

    .line 78
    move-object p5, p3

    .line 79
    move-object p3, v8

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {p6}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 92
    const/4 p6, 0x0

    .line 93
    move-object v5, p0

    .line 94
    .line 95
    :goto_1
    iget-object v2, v5, Lcoil/intercept/a;->imageLoader:Lcoil/e;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p3, p4, v2, p6}, Lcoil/b;->j(Ljava/lang/Object;Lcoil/request/m;Lcoil/e;I)Lw7/u;

    .line 99
    move-result-object p6

    .line 100
    .line 101
    if-eqz p6, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {p6}, Lw7/u;->c()Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    check-cast v2, Lcoil/fetch/i;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p6}, Lw7/u;->d()Ljava/lang/Object;

    .line 111
    move-result-object p6

    .line 112
    .line 113
    check-cast p6, Ljava/lang/Number;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 117
    move-result p6

    .line 118
    add-int/2addr p6, v3

    .line 119
    .line 120
    .line 121
    invoke-interface {p5, p2, v2, p4}, Lcoil/c;->h(Lcoil/request/h;Lcoil/fetch/i;Lcoil/request/m;)V

    .line 122
    .line 123
    iput-object v5, v0, Lcoil/intercept/a$f;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p1, v0, Lcoil/intercept/a$f;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object p2, v0, Lcoil/intercept/a$f;->L$2:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object p3, v0, Lcoil/intercept/a$f;->L$3:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object p4, v0, Lcoil/intercept/a$f;->L$4:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object p5, v0, Lcoil/intercept/a$f;->L$5:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v2, v0, Lcoil/intercept/a$f;->L$6:Ljava/lang/Object;

    .line 136
    .line 137
    iput p6, v0, Lcoil/intercept/a$f;->I$0:I

    .line 138
    .line 139
    iput v3, v0, Lcoil/intercept/a$f;->label:I

    .line 140
    .line 141
    .line 142
    invoke-interface {v2, v0}, Lcoil/fetch/i;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 143
    move-result-object v4

    .line 144
    .line 145
    if-ne v4, v1, :cond_3

    .line 146
    return-object v1

    .line 147
    :cond_3
    move-object v6, v0

    .line 148
    move v0, p6

    .line 149
    move-object p6, v4

    .line 150
    move-object v4, v1

    .line 151
    move-object v1, v6

    .line 152
    .line 153
    :goto_2
    check-cast p6, Lcoil/fetch/h;

    .line 154
    .line 155
    .line 156
    :try_start_0
    invoke-interface {p5, p2, v2, p4, p6}, Lcoil/c;->f(Lcoil/request/h;Lcoil/fetch/i;Lcoil/request/m;Lcoil/fetch/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    if-eqz p6, :cond_4

    .line 159
    return-object p6

    .line 160
    :cond_4
    move p6, v0

    .line 161
    move-object v0, v1

    .line 162
    move-object v1, v4

    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    .line 166
    instance-of p2, p6, Lcoil/fetch/m;

    .line 167
    .line 168
    if-eqz p2, :cond_5

    .line 169
    .line 170
    check-cast p6, Lcoil/fetch/m;

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const/4 p6, 0x0

    .line 173
    .line 174
    :goto_3
    if-eqz p6, :cond_6

    .line 175
    .line 176
    .line 177
    invoke-virtual {p6}, Lcoil/fetch/m;->b()Lcoil/decode/p;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    if-eqz p2, :cond_6

    .line 181
    .line 182
    .line 183
    invoke-static {p2}, Lcoil/util/i;->d(Ljava/io/Closeable;)V

    .line 184
    :cond_6
    throw p1

    .line 185
    .line 186
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    const-string p2, "Unable to create a fetcher that supports: "

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    .line 210
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    throw p2
.end method


# virtual methods
.method public a(Lcoil/intercept/b$a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lcoil/intercept/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/b$a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/request/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lcoil/intercept/a$g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcoil/intercept/a$g;

    .line 8
    .line 9
    iget v1, v0, Lcoil/intercept/a$g;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcoil/intercept/a$g;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/intercept/a$g;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcoil/intercept/a$g;-><init>(Lcoil/intercept/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lcoil/intercept/a$g;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/intercept/a$g;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcoil/intercept/a$g;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcoil/intercept/b$a;

    .line 42
    .line 43
    iget-object v0, v0, Lcoil/intercept/a$g;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcoil/intercept/a;

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    :catchall_0
    move-exception p2

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-interface {p1}, Lcoil/intercept/b$a;->a()Lcoil/request/h;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcoil/request/h;->m()Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcoil/intercept/b$a;->getSize()Lcoil/size/i;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcoil/util/i;->h(Lcoil/intercept/b$a;)Lcoil/c;

    .line 79
    move-result-object v9

    .line 80
    .line 81
    iget-object v4, p0, Lcoil/intercept/a;->requestService:Lcoil/request/o;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v6, v2}, Lcoil/request/o;->f(Lcoil/request/h;Lcoil/size/i;)Lcoil/request/m;

    .line 85
    move-result-object v8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Lcoil/request/m;->m()Lcoil/size/h;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-interface {v9, v6, p2}, Lcoil/c;->l(Lcoil/request/h;Ljava/lang/Object;)V

    .line 93
    .line 94
    iget-object v5, p0, Lcoil/intercept/a;->imageLoader:Lcoil/e;

    .line 95
    .line 96
    .line 97
    invoke-interface {v5}, Lcoil/e;->getComponents()Lcoil/b;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p2, v8}, Lcoil/b;->g(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    .line 105
    invoke-interface {v9, v6, v7}, Lcoil/c;->g(Lcoil/request/h;Ljava/lang/Object;)V

    .line 106
    .line 107
    iget-object p2, p0, Lcoil/intercept/a;->memoryCacheService:Lcoil/memory/c;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v6, v7, v8, v9}, Lcoil/memory/c;->f(Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;)Lcoil/memory/MemoryCache$Key;

    .line 111
    move-result-object v10

    .line 112
    .line 113
    if-eqz v10, :cond_3

    .line 114
    .line 115
    iget-object p2, p0, Lcoil/intercept/a;->memoryCacheService:Lcoil/memory/c;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v6, v10, v2, v4}, Lcoil/memory/c;->a(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/size/i;Lcoil/size/h;)Lcoil/memory/MemoryCache$b;

    .line 119
    move-result-object p2

    .line 120
    goto :goto_1

    .line 121
    :catchall_1
    move-exception p2

    .line 122
    move-object v0, p0

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    const/4 p2, 0x0

    .line 125
    .line 126
    :goto_1
    if-eqz p2, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcoil/intercept/a;->memoryCacheService:Lcoil/memory/c;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1, v6, v10, p2}, Lcoil/memory/c;->g(Lcoil/intercept/b$a;Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)Lcoil/request/p;

    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v6}, Lcoil/request/h;->v()Lkotlinx/coroutines/k0;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    new-instance v2, Lcoil/intercept/a$h;

    .line 140
    const/4 v12, 0x0

    .line 141
    move-object v4, v2

    .line 142
    move-object v5, p0

    .line 143
    move-object v11, p1

    .line 144
    .line 145
    .line 146
    invoke-direct/range {v4 .. v12}, Lcoil/intercept/a$h;-><init>(Lcoil/intercept/a;Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;Lcoil/memory/MemoryCache$Key;Lcoil/intercept/b$a;Lkotlin/coroutines/d;)V

    .line 147
    .line 148
    iput-object p0, v0, Lcoil/intercept/a$g;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p1, v0, Lcoil/intercept/a$g;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, v0, Lcoil/intercept/a$g;->label:I

    .line 153
    .line 154
    .line 155
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 156
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .line 158
    if-ne p2, v1, :cond_5

    .line 159
    return-object v1

    .line 160
    :cond_5
    :goto_2
    return-object p2

    .line 161
    .line 162
    :goto_3
    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    .line 163
    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    iget-object v0, v0, Lcoil/intercept/a;->requestService:Lcoil/request/o;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Lcoil/intercept/b$a;->a()Lcoil/request/h;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p1, p2}, Lcoil/request/o;->b(Lcoil/request/h;Ljava/lang/Throwable;)Lcoil/request/e;

    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :cond_6
    throw p2
.end method

.method public final k(Lcoil/intercept/a$b;Lcoil/request/h;Lcoil/request/m;Lcoil/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcoil/intercept/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/a$b;",
            "Lcoil/request/h;",
            "Lcoil/request/m;",
            "Lcoil/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/intercept/a$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcoil/request/h;->O()Ljava/util/List;

    .line 4
    move-result-object v4

    .line 5
    .line 6
    .line 7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcoil/intercept/a$b;->e()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcoil/request/h;->g()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2}, Lcoil/request/h;->N()Lkotlinx/coroutines/k0;

    .line 30
    move-result-object v8

    .line 31
    .line 32
    new-instance v9, Lcoil/intercept/a$i;

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v0, v9

    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p1

    .line 37
    move-object v3, p3

    .line 38
    move-object v5, p4

    .line 39
    move-object v6, p2

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v7}, Lcoil/intercept/a$i;-><init>(Lcoil/intercept/a;Lcoil/intercept/a$b;Lcoil/request/m;Ljava/util/List;Lcoil/c;Lcoil/request/h;Lkotlin/coroutines/d;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v8, v9, p5}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
