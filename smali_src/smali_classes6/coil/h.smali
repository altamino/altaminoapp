.class public final Lcoil/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 ComponentRegistry.kt\ncoil/ComponentRegistry$Builder\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Utils.kt\ncoil/util/-Utils\n+ 6 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 7 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 8 Logs.kt\ncoil/util/-Logs\n*L\n1#1,298:1\n276#1,15:328\n276#1,15:347\n49#2,4:299\n138#3:303\n138#3:304\n138#3:305\n138#3:306\n138#3:307\n138#3:308\n146#3:309\n146#3:310\n154#3:311\n154#3:312\n154#3:313\n154#3:314\n154#3:315\n154#3:316\n154#3:317\n154#3:318\n1#4:319\n1#4:321\n171#5:320\n45#6:322\n28#7:323\n21#8,4:324\n21#8,4:343\n21#8,4:362\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n*L\n243#1:328,15\n257#1:347,15\n78#1:299,4\n85#1:303\n86#1:304\n87#1:305\n88#1:306\n89#1:307\n90#1:308\n92#1:309\n93#1:310\n95#1:311\n96#1:312\n97#1:313\n98#1:314\n99#1:315\n100#1:316\n101#1:317\n102#1:318\n172#1:321\n172#1:320\n173#1:322\n173#1:323\n240#1:324,4\n254#1:343,4\n263#1:362,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUEST_TYPE_ENQUEUE:I = 0x0

.field private static final REQUEST_TYPE_EXECUTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RealImageLoader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callFactoryLazy:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final componentRegistry:Lcoil/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final components:Lcoil/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaults:Lcoil/request/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCache$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCacheLazy:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lcoil/disk/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventListenerFactory:Lcoil/c$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcoil/util/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memoryCache$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memoryCacheLazy:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/util/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestService:Lcoil/request/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemCallbacks:Lcoil/util/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/h$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/h;->Companion:Lcoil/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcoil/request/b;Lw7/m;Lw7/m;Lw7/m;Lcoil/c$d;Lcoil/b;Lcoil/util/n;Lcoil/util/q;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lw7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lw7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lw7/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcoil/c$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcoil/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcoil/util/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcoil/util/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil/request/b;",
            "Lw7/m<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;",
            "Lw7/m<",
            "+",
            "Lcoil/disk/a;",
            ">;",
            "Lw7/m<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "Lcoil/c$d;",
            "Lcoil/b;",
            "Lcoil/util/n;",
            "Lcoil/util/q;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/h;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/h;->defaults:Lcoil/request/b;

    .line 8
    .line 9
    iput-object p3, p0, Lcoil/h;->memoryCacheLazy:Lw7/m;

    .line 10
    .line 11
    iput-object p4, p0, Lcoil/h;->diskCacheLazy:Lw7/m;

    .line 12
    .line 13
    iput-object p5, p0, Lcoil/h;->callFactoryLazy:Lw7/m;

    .line 14
    .line 15
    iput-object p6, p0, Lcoil/h;->eventListenerFactory:Lcoil/c$d;

    .line 16
    .line 17
    iput-object p7, p0, Lcoil/h;->componentRegistry:Lcoil/b;

    .line 18
    .line 19
    iput-object p8, p0, Lcoil/h;->options:Lcoil/util/n;

    .line 20
    const/4 p2, 0x1

    .line 21
    const/4 p6, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p6, p2, p6}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 29
    move-result-object p9

    .line 30
    .line 31
    .line 32
    invoke-virtual {p9}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    .line 33
    move-result-object p9

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p9}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    sget-object p9, Lkotlinx/coroutines/l0;->Key:Lkotlinx/coroutines/l0$b;

    .line 40
    .line 41
    new-instance v0, Lcoil/h$f;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p9, p0}, Lcoil/h$f;-><init>(Lkotlinx/coroutines/l0$b;Lcoil/h;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    iput-object p2, p0, Lcoil/h;->scope:Lkotlinx/coroutines/o0;

    .line 55
    .line 56
    new-instance p2, Lcoil/util/s;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p8}, Lcoil/util/n;->d()Z

    .line 60
    move-result p9

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p0, p1, p9}, Lcoil/util/s;-><init>(Lcoil/h;Landroid/content/Context;Z)V

    .line 64
    .line 65
    iput-object p2, p0, Lcoil/h;->systemCallbacks:Lcoil/util/s;

    .line 66
    .line 67
    new-instance p1, Lcoil/request/o;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p0, p2, p6}, Lcoil/request/o;-><init>(Lcoil/e;Lcoil/util/s;Lcoil/util/q;)V

    .line 71
    .line 72
    iput-object p1, p0, Lcoil/h;->requestService:Lcoil/request/o;

    .line 73
    .line 74
    iput-object p3, p0, Lcoil/h;->memoryCache$delegate:Lw7/m;

    .line 75
    .line 76
    iput-object p4, p0, Lcoil/h;->diskCache$delegate:Lw7/m;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p7}, Lcoil/b;->h()Lcoil/b$a;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    new-instance p7, Le0/c;

    .line 83
    .line 84
    .line 85
    invoke-direct {p7}, Le0/c;-><init>()V

    .line 86
    .line 87
    const-class p9, Lokhttp3/HttpUrl;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 91
    move-result-object p3

    .line 92
    .line 93
    new-instance p7, Le0/g;

    .line 94
    .line 95
    .line 96
    invoke-direct {p7}, Le0/g;-><init>()V

    .line 97
    .line 98
    const-class p9, Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 102
    move-result-object p3

    .line 103
    .line 104
    new-instance p7, Le0/b;

    .line 105
    .line 106
    .line 107
    invoke-direct {p7}, Le0/b;-><init>()V

    .line 108
    .line 109
    const-class p9, Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    new-instance p7, Le0/f;

    .line 116
    .line 117
    .line 118
    invoke-direct {p7}, Le0/f;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 122
    move-result-object p3

    .line 123
    .line 124
    new-instance p7, Le0/e;

    .line 125
    .line 126
    .line 127
    invoke-direct {p7}, Le0/e;-><init>()V

    .line 128
    .line 129
    const-class v0, Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p7, v0}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 133
    move-result-object p3

    .line 134
    .line 135
    new-instance p7, Le0/a;

    .line 136
    .line 137
    .line 138
    invoke-direct {p7}, Le0/a;-><init>()V

    .line 139
    .line 140
    const-class v0, [B

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, p7, v0}, Lcoil/b$a;->d(Le0/d;Ljava/lang/Class;)Lcoil/b$a;

    .line 144
    move-result-object p3

    .line 145
    .line 146
    new-instance p7, Ld0/c;

    .line 147
    .line 148
    .line 149
    invoke-direct {p7}, Ld0/c;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->c(Ld0/b;Ljava/lang/Class;)Lcoil/b$a;

    .line 153
    move-result-object p3

    .line 154
    .line 155
    new-instance p7, Ld0/a;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p8}, Lcoil/util/n;->a()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    .line 162
    invoke-direct {p7, v0}, Ld0/a;-><init>(Z)V

    .line 163
    .line 164
    const-class v0, Ljava/io/File;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p7, v0}, Lcoil/b$a;->c(Ld0/b;Ljava/lang/Class;)Lcoil/b$a;

    .line 168
    move-result-object p3

    .line 169
    .line 170
    new-instance p7, Lcoil/fetch/k$b;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p8}, Lcoil/util/n;->e()Z

    .line 174
    move-result v1

    .line 175
    .line 176
    .line 177
    invoke-direct {p7, p5, p4, v1}, Lcoil/fetch/k$b;-><init>(Lw7/m;Lw7/m;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, p7, p9}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 181
    move-result-object p3

    .line 182
    .line 183
    new-instance p4, Lcoil/fetch/j$a;

    .line 184
    .line 185
    .line 186
    invoke-direct {p4}, Lcoil/fetch/j$a;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p4, v0}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 190
    move-result-object p3

    .line 191
    .line 192
    new-instance p4, Lcoil/fetch/a$a;

    .line 193
    .line 194
    .line 195
    invoke-direct {p4}, Lcoil/fetch/a$a;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p4, p9}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 199
    move-result-object p3

    .line 200
    .line 201
    new-instance p4, Lcoil/fetch/e$a;

    .line 202
    .line 203
    .line 204
    invoke-direct {p4}, Lcoil/fetch/e$a;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, p4, p9}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 208
    move-result-object p3

    .line 209
    .line 210
    new-instance p4, Lcoil/fetch/l$b;

    .line 211
    .line 212
    .line 213
    invoke-direct {p4}, Lcoil/fetch/l$b;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, p4, p9}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 217
    move-result-object p3

    .line 218
    .line 219
    new-instance p4, Lcoil/fetch/f$a;

    .line 220
    .line 221
    .line 222
    invoke-direct {p4}, Lcoil/fetch/f$a;-><init>()V

    .line 223
    .line 224
    const-class p5, Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3, p4, p5}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 228
    move-result-object p3

    .line 229
    .line 230
    new-instance p4, Lcoil/fetch/b$a;

    .line 231
    .line 232
    .line 233
    invoke-direct {p4}, Lcoil/fetch/b$a;-><init>()V

    .line 234
    .line 235
    const-class p5, Landroid/graphics/Bitmap;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p3, p4, p5}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 239
    move-result-object p3

    .line 240
    .line 241
    new-instance p4, Lcoil/fetch/c$a;

    .line 242
    .line 243
    .line 244
    invoke-direct {p4}, Lcoil/fetch/c$a;-><init>()V

    .line 245
    .line 246
    const-class p5, Ljava/nio/ByteBuffer;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p4, p5}, Lcoil/b$a;->b(Lcoil/fetch/i$a;Ljava/lang/Class;)Lcoil/b$a;

    .line 250
    move-result-object p3

    .line 251
    .line 252
    new-instance p4, Lcoil/decode/d$c;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p8}, Lcoil/util/n;->c()I

    .line 256
    move-result p5

    .line 257
    .line 258
    .line 259
    invoke-virtual {p8}, Lcoil/util/n;->b()Lcoil/decode/l;

    .line 260
    move-result-object p7

    .line 261
    .line 262
    .line 263
    invoke-direct {p4, p5, p7}, Lcoil/decode/d$c;-><init>(ILcoil/decode/l;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, p4}, Lcoil/b$a;->a(Lcoil/decode/i$a;)Lcoil/b$a;

    .line 267
    move-result-object p3

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3}, Lcoil/b$a;->e()Lcoil/b;

    .line 271
    move-result-object p3

    .line 272
    .line 273
    iput-object p3, p0, Lcoil/h;->components:Lcoil/b;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcoil/h;->getComponents()Lcoil/b;

    .line 277
    move-result-object p3

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3}, Lcoil/b;->c()Ljava/util/List;

    .line 281
    move-result-object p3

    .line 282
    .line 283
    check-cast p3, Ljava/util/Collection;

    .line 284
    .line 285
    new-instance p4, Lcoil/intercept/a;

    .line 286
    .line 287
    .line 288
    invoke-direct {p4, p0, p1, p6}, Lcoil/intercept/a;-><init>(Lcoil/e;Lcoil/request/o;Lcoil/util/q;)V

    .line 289
    .line 290
    .line 291
    invoke-static {p3, p4}, Lkotlin/collections/t;->E0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 292
    move-result-object p1

    .line 293
    .line 294
    iput-object p1, p0, Lcoil/h;->interceptors:Ljava/util/List;

    .line 295
    .line 296
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 297
    const/4 p3, 0x0

    .line 298
    .line 299
    .line 300
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 301
    .line 302
    iput-object p1, p0, Lcoil/h;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Lcoil/util/s;->c()V

    .line 306
    return-void
.end method

.method public static final synthetic e(Lcoil/h;Lcoil/request/h;ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcoil/h;->g(Lcoil/request/h;ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcoil/h;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/h;->interceptors:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private final g(Lcoil/request/h;ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 20
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "I",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/request/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    instance-of v3, v2, Lcoil/h$d;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    move-object v3, v2

    .line 12
    .line 13
    check-cast v3, Lcoil/h$d;

    .line 14
    .line 15
    iget v4, v3, Lcoil/h$d;->label:I

    .line 16
    .line 17
    const/high16 v5, -0x80000000

    .line 18
    .line 19
    and-int v6, v4, v5

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    sub-int/2addr v4, v5

    .line 23
    .line 24
    iput v4, v3, Lcoil/h$d;->label:I

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v3, Lcoil/h$d;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v1, v2}, Lcoil/h$d;-><init>(Lcoil/h;Lkotlin/coroutines/d;)V

    .line 31
    .line 32
    :goto_0
    iget-object v2, v3, Lcoil/h$d;->result:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    iget v5, v3, Lcoil/h$d;->label:I

    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    if-eq v5, v8, :cond_3

    .line 47
    .line 48
    if-eq v5, v7, :cond_2

    .line 49
    .line 50
    if-ne v5, v6, :cond_1

    .line 51
    .line 52
    iget-object v0, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 53
    move-object v4, v0

    .line 54
    .line 55
    check-cast v4, Lcoil/c;

    .line 56
    .line 57
    iget-object v0, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 58
    move-object v5, v0

    .line 59
    .line 60
    check-cast v5, Lcoil/request/h;

    .line 61
    .line 62
    iget-object v0, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 63
    move-object v6, v0

    .line 64
    .line 65
    check-cast v6, Lcoil/request/RequestDelegate;

    .line 66
    .line 67
    iget-object v0, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 68
    move-object v3, v0

    .line 69
    .line 70
    check-cast v3, Lcoil/h;

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    goto/16 :goto_8

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0

    .line 87
    .line 88
    :cond_2
    iget-object v0, v3, Lcoil/h$d;->L$4:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/graphics/Bitmap;

    .line 91
    .line 92
    iget-object v5, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v5, Lcoil/c;

    .line 95
    .line 96
    iget-object v7, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v7, Lcoil/request/h;

    .line 99
    .line 100
    iget-object v8, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v8, Lcoil/request/RequestDelegate;

    .line 103
    .line 104
    iget-object v10, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v10, Lcoil/h;

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    move-object/from16 v17, v0

    .line 112
    .line 113
    goto/16 :goto_7

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    move-object v4, v5

    .line 116
    move-object v5, v7

    .line 117
    move-object v6, v8

    .line 118
    move-object v3, v10

    .line 119
    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_3
    iget-object v0, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 123
    move-object v5, v0

    .line 124
    .line 125
    check-cast v5, Lcoil/c;

    .line 126
    .line 127
    iget-object v0, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 128
    move-object v8, v0

    .line 129
    .line 130
    check-cast v8, Lcoil/request/h;

    .line 131
    .line 132
    iget-object v0, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 133
    move-object v10, v0

    .line 134
    .line 135
    check-cast v10, Lcoil/request/RequestDelegate;

    .line 136
    .line 137
    iget-object v0, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 138
    move-object v11, v0

    .line 139
    .line 140
    check-cast v11, Lcoil/h;

    .line 141
    .line 142
    .line 143
    :try_start_2
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    goto :goto_2

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    move-object v4, v5

    .line 147
    move-object v5, v8

    .line 148
    move-object v6, v10

    .line 149
    :goto_1
    move-object v3, v11

    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 155
    .line 156
    iget-object v2, v1, Lcoil/h;->requestService:Lcoil/request/o;

    .line 157
    .line 158
    .line 159
    invoke-interface {v3}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    .line 163
    invoke-static {v5}, Lkotlinx/coroutines/f2;->l(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;

    .line 164
    move-result-object v5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0, v5}, Lcoil/request/o;->g(Lcoil/request/h;Lkotlinx/coroutines/b2;)Lcoil/request/RequestDelegate;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcoil/request/RequestDelegate;->a()V

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v9, v8, v9}, Lcoil/request/h;->R(Lcoil/request/h;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/h$a;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcoil/h;->a()Lcoil/request/b;

    .line 179
    move-result-object v5

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v5}, Lcoil/request/h$a;->c(Lcoil/request/b;)Lcoil/request/h$a;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcoil/request/h$a;->a()Lcoil/request/h;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    iget-object v0, v1, Lcoil/h;->eventListenerFactory:Lcoil/c$d;

    .line 190
    .line 191
    .line 192
    invoke-interface {v0, v5}, Lcoil/c$d;->a(Lcoil/request/h;)Lcoil/c;

    .line 193
    move-result-object v10

    .line 194
    .line 195
    .line 196
    :try_start_3
    invoke-virtual {v5}, Lcoil/request/h;->m()Ljava/lang/Object;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    sget-object v11, Lcoil/request/j;->INSTANCE:Lcoil/request/j;

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-nez v0, :cond_10

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Lcoil/request/RequestDelegate;->c()V

    .line 209
    .line 210
    if-nez p2, :cond_6

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Lcoil/request/h;->z()Landroidx/lifecycle/Lifecycle;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    iput-object v1, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object v2, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 219
    .line 220
    iput-object v5, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 221
    .line 222
    iput-object v10, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 223
    .line 224
    iput v8, v3, Lcoil/h$d;->label:I

    .line 225
    .line 226
    .line 227
    invoke-static {v0, v3}, Lcoil/util/-Lifecycles;->a(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 228
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 229
    .line 230
    if-ne v0, v4, :cond_5

    .line 231
    return-object v4

    .line 232
    :cond_5
    move-object v11, v1

    .line 233
    move-object v8, v5

    .line 234
    move-object v5, v10

    .line 235
    move-object v10, v2

    .line 236
    :goto_2
    move-object v2, v10

    .line 237
    goto :goto_3

    .line 238
    :catchall_3
    move-exception v0

    .line 239
    move-object v3, v1

    .line 240
    move-object v6, v2

    .line 241
    move-object v4, v10

    .line 242
    .line 243
    goto/16 :goto_a

    .line 244
    :cond_6
    move-object v11, v1

    .line 245
    move-object v8, v5

    .line 246
    move-object v5, v10

    .line 247
    .line 248
    .line 249
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Lcoil/h;->d()Lcoil/memory/MemoryCache;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    if-eqz v0, :cond_8

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Lcoil/request/h;->G()Lcoil/memory/MemoryCache$Key;

    .line 256
    move-result-object v10

    .line 257
    .line 258
    if-eqz v10, :cond_7

    .line 259
    .line 260
    .line 261
    invoke-interface {v0, v10}, Lcoil/memory/MemoryCache;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 262
    move-result-object v0

    .line 263
    goto :goto_4

    .line 264
    :catchall_4
    move-exception v0

    .line 265
    move-object v6, v2

    .line 266
    move-object v4, v5

    .line 267
    move-object v5, v8

    .line 268
    goto :goto_1

    .line 269
    :cond_7
    move-object v0, v9

    .line 270
    .line 271
    :goto_4
    if-eqz v0, :cond_8

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 275
    move-result-object v0

    .line 276
    goto :goto_5

    .line 277
    :cond_8
    move-object v0, v9

    .line 278
    .line 279
    :goto_5
    if-eqz v0, :cond_9

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 283
    move-result-object v10

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v10

    .line 288
    .line 289
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 290
    .line 291
    .line 292
    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 293
    goto :goto_6

    .line 294
    .line 295
    .line 296
    :cond_9
    invoke-virtual {v8}, Lcoil/request/h;->F()Landroid/graphics/drawable/Drawable;

    .line 297
    move-result-object v12

    .line 298
    .line 299
    .line 300
    :goto_6
    invoke-virtual {v8}, Lcoil/request/h;->M()Lf0/a;

    .line 301
    move-result-object v10

    .line 302
    .line 303
    if-eqz v10, :cond_a

    .line 304
    .line 305
    .line 306
    invoke-interface {v10, v12}, Lf0/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 307
    .line 308
    .line 309
    :cond_a
    invoke-interface {v5, v8}, Lcoil/c;->b(Lcoil/request/h;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Lcoil/request/h;->A()Lcoil/request/h$b;

    .line 313
    move-result-object v10

    .line 314
    .line 315
    if-eqz v10, :cond_b

    .line 316
    .line 317
    .line 318
    invoke-interface {v10, v8}, Lcoil/request/h$b;->b(Lcoil/request/h;)V

    .line 319
    .line 320
    .line 321
    :cond_b
    invoke-interface {v5, v8}, Lcoil/c;->r(Lcoil/request/h;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 325
    move-result-object v10

    .line 326
    .line 327
    iput-object v11, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v2, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v8, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v5, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v0, v3, Lcoil/h$d;->L$4:Ljava/lang/Object;

    .line 336
    .line 337
    iput v7, v3, Lcoil/h$d;->label:I

    .line 338
    .line 339
    .line 340
    invoke-interface {v10, v3}, Lcoil/size/j;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 341
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 342
    .line 343
    if-ne v7, v4, :cond_c

    .line 344
    return-object v4

    .line 345
    .line 346
    :cond_c
    move-object/from16 v17, v0

    .line 347
    move-object v10, v11

    .line 348
    .line 349
    move-object/from16 v19, v8

    .line 350
    move-object v8, v2

    .line 351
    move-object v2, v7

    .line 352
    .line 353
    move-object/from16 v7, v19

    .line 354
    :goto_7
    :try_start_5
    move-object v15, v2

    .line 355
    .line 356
    check-cast v15, Lcoil/size/i;

    .line 357
    .line 358
    .line 359
    invoke-interface {v5, v7, v15}, Lcoil/c;->o(Lcoil/request/h;Lcoil/size/i;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7}, Lcoil/request/h;->y()Lkotlinx/coroutines/k0;

    .line 363
    move-result-object v0

    .line 364
    .line 365
    new-instance v2, Lcoil/h$e;

    .line 366
    .line 367
    const/16 v18, 0x0

    .line 368
    move-object v12, v2

    .line 369
    move-object v13, v7

    .line 370
    move-object v14, v10

    .line 371
    .line 372
    move-object/from16 v16, v5

    .line 373
    .line 374
    .line 375
    invoke-direct/range {v12 .. v18}, Lcoil/h$e;-><init>(Lcoil/request/h;Lcoil/h;Lcoil/size/i;Lcoil/c;Landroid/graphics/Bitmap;Lkotlin/coroutines/d;)V

    .line 376
    .line 377
    iput-object v10, v3, Lcoil/h$d;->L$0:Ljava/lang/Object;

    .line 378
    .line 379
    iput-object v8, v3, Lcoil/h$d;->L$1:Ljava/lang/Object;

    .line 380
    .line 381
    iput-object v7, v3, Lcoil/h$d;->L$2:Ljava/lang/Object;

    .line 382
    .line 383
    iput-object v5, v3, Lcoil/h$d;->L$3:Ljava/lang/Object;

    .line 384
    .line 385
    iput-object v9, v3, Lcoil/h$d;->L$4:Ljava/lang/Object;

    .line 386
    .line 387
    iput v6, v3, Lcoil/h$d;->label:I

    .line 388
    .line 389
    .line 390
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 391
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 392
    .line 393
    if-ne v2, v4, :cond_d

    .line 394
    return-object v4

    .line 395
    :cond_d
    move-object v4, v5

    .line 396
    move-object v5, v7

    .line 397
    move-object v6, v8

    .line 398
    move-object v3, v10

    .line 399
    .line 400
    :goto_8
    :try_start_6
    check-cast v2, Lcoil/request/i;

    .line 401
    .line 402
    instance-of v0, v2, Lcoil/request/p;

    .line 403
    .line 404
    if-eqz v0, :cond_e

    .line 405
    move-object v0, v2

    .line 406
    .line 407
    check-cast v0, Lcoil/request/p;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5}, Lcoil/request/h;->M()Lf0/a;

    .line 411
    move-result-object v7

    .line 412
    .line 413
    .line 414
    invoke-direct {v3, v0, v7, v4}, Lcoil/h;->r(Lcoil/request/p;Lf0/a;Lcoil/c;)V

    .line 415
    goto :goto_9

    .line 416
    .line 417
    :cond_e
    instance-of v0, v2, Lcoil/request/e;

    .line 418
    .line 419
    if-eqz v0, :cond_f

    .line 420
    move-object v0, v2

    .line 421
    .line 422
    check-cast v0, Lcoil/request/e;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5}, Lcoil/request/h;->M()Lf0/a;

    .line 426
    move-result-object v7

    .line 427
    .line 428
    .line 429
    invoke-direct {v3, v0, v7, v4}, Lcoil/h;->q(Lcoil/request/e;Lf0/a;Lcoil/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 430
    .line 431
    .line 432
    :cond_f
    :goto_9
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 433
    return-object v2

    .line 434
    .line 435
    :cond_10
    :try_start_7
    new-instance v0, Lcoil/request/k;

    .line 436
    .line 437
    .line 438
    invoke-direct {v0}, Lcoil/request/k;-><init>()V

    .line 439
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 440
    .line 441
    :goto_a
    :try_start_8
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 442
    .line 443
    if-nez v2, :cond_11

    .line 444
    .line 445
    iget-object v2, v3, Lcoil/h;->requestService:Lcoil/request/o;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v5, v0}, Lcoil/request/o;->b(Lcoil/request/h;Ljava/lang/Throwable;)Lcoil/request/e;

    .line 449
    move-result-object v0

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5}, Lcoil/request/h;->M()Lf0/a;

    .line 453
    move-result-object v2

    .line 454
    .line 455
    .line 456
    invoke-direct {v3, v0, v2, v4}, Lcoil/h;->q(Lcoil/request/e;Lf0/a;Lcoil/c;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 460
    return-object v0

    .line 461
    :catchall_5
    move-exception v0

    .line 462
    goto :goto_b

    .line 463
    .line 464
    .line 465
    :cond_11
    :try_start_9
    invoke-direct {v3, v5, v4}, Lcoil/h;->p(Lcoil/request/h;Lcoil/c;)V

    .line 466
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 467
    .line 468
    .line 469
    :goto_b
    invoke-virtual {v6}, Lcoil/request/RequestDelegate;->b()V

    .line 470
    throw v0
.end method

.method private final p(Lcoil/request/h;Lcoil/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p1}, Lcoil/c;->a(Lcoil/request/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcoil/request/h;->A()Lcoil/request/h$b;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1}, Lcoil/request/h$b;->a(Lcoil/request/h;)V

    .line 13
    :cond_0
    return-void
.end method

.method private final q(Lcoil/request/e;Lf0/a;Lcoil/c;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/request/e;->b()Lcoil/request/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, p2, Lcoil/transition/d;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcoil/request/h;->P()Lcoil/transition/c$a;

    .line 19
    move-result-object v1

    .line 20
    move-object v2, p2

    .line 21
    .line 22
    check-cast v2, Lcoil/transition/d;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2, p1}, Lcoil/transition/c$a;->a(Lcoil/transition/d;Lcoil/request/i;)Lcoil/transition/c;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    instance-of v2, v1, Lcoil/transition/b;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Lcoil/request/e;->a()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, v1}, Lf0/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, p2, v1}, Lcoil/c;->j(Lcoil/request/h;Lcoil/transition/c;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Lcoil/transition/c;->a()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-interface {p3, p2, v1}, Lcoil/c;->k(Lcoil/request/h;Lcoil/transition/c;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-interface {p3, v0, p1}, Lcoil/c;->c(Lcoil/request/h;Lcoil/request/e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcoil/request/h;->A()Lcoil/request/h$b;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v0, p1}, Lcoil/request/h$b;->c(Lcoil/request/h;Lcoil/request/e;)V

    .line 68
    :cond_3
    return-void
.end method

.method private final r(Lcoil/request/p;Lf0/a;Lcoil/c;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/request/p;->b()Lcoil/request/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcoil/request/p;->c()Lcoil/decode/f;

    .line 8
    .line 9
    instance-of v1, p2, Lcoil/transition/d;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcoil/request/h;->P()Lcoil/transition/c$a;

    .line 22
    move-result-object v1

    .line 23
    move-object v2, p2

    .line 24
    .line 25
    check-cast v2, Lcoil/transition/d;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, p1}, Lcoil/transition/c$a;->a(Lcoil/transition/d;Lcoil/request/i;)Lcoil/transition/c;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    instance-of v2, v1, Lcoil/transition/b;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lcoil/request/p;->a()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v1}, Lf0/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p2, v1}, Lcoil/c;->j(Lcoil/request/h;Lcoil/transition/c;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Lcoil/transition/c;->a()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, p2, v1}, Lcoil/c;->k(Lcoil/request/h;Lcoil/transition/c;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    invoke-interface {p3, v0, p1}, Lcoil/c;->d(Lcoil/request/h;Lcoil/request/p;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcoil/request/h;->A()Lcoil/request/h$b;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v0, p1}, Lcoil/request/h$b;->d(Lcoil/request/h;Lcoil/request/p;)V

    .line 71
    :cond_3
    return-void
.end method


# virtual methods
.method public a()Lcoil/request/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->defaults:Lcoil/request/b;

    return-object v0
.end method

.method public b(Lcoil/request/h;)Lcoil/request/d;
    .locals 6
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/h;->scope:Lkotlinx/coroutines/o0;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    new-instance v3, Lcoil/h$b;

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v3, p0, p1, v4}, Lcoil/h$b;-><init>(Lcoil/h;Lcoil/request/h;Lkotlin/coroutines/d;)V

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcoil/request/h;->M()Lf0/a;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    instance-of v1, v1, Lf0/b;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcoil/request/h;->M()Lf0/a;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lf0/b;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lf0/b;->getView()Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcoil/util/i;->n(Landroid/view/View;)Lcoil/request/s;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcoil/request/s;->b(Lkotlinx/coroutines/v0;)Lcoil/request/r;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance p1, Lcoil/request/l;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcoil/request/l;-><init>(Lkotlinx/coroutines/v0;)V

    .line 49
    :goto_0
    return-object p1
.end method

.method public c(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcoil/request/h;
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
            "Lcoil/request/h;",
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
    new-instance v0, Lcoil/h$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p0, v1}, Lcoil/h$c;-><init>(Lcoil/request/h;Lcoil/h;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p2}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public d()Lcoil/memory/MemoryCache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/h;->memoryCache$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcoil/memory/MemoryCache;

    .line 9
    return-object v0
.end method

.method public getComponents()Lcoil/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcoil/h;->components:Lcoil/b;

    return-object v0
.end method

.method public final h()Lw7/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/m<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->callFactoryLazy:Lw7/m;

    return-object v0
.end method

.method public final i()Lcoil/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->componentRegistry:Lcoil/b;

    return-object v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final k()Lw7/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/m<",
            "Lcoil/disk/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->diskCacheLazy:Lw7/m;

    return-object v0
.end method

.method public final l()Lcoil/c$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->eventListenerFactory:Lcoil/c$d;

    return-object v0
.end method

.method public final m()Lcoil/util/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lw7/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/m<",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->memoryCacheLazy:Lw7/m;

    return-object v0
.end method

.method public final o()Lcoil/util/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/h;->options:Lcoil/util/n;

    return-object v0
.end method

.method public final s(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/h;->memoryCacheLazy:Lw7/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcoil/memory/MemoryCache;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcoil/memory/MemoryCache;->a(I)V

    .line 16
    :cond_0
    return-void
.end method
