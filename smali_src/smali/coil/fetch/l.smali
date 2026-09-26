.class public final Lcoil/fetch/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/l$b;,
        Lcoil/fetch/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceUriFetcher.kt\ncoil/fetch/ResourceUriFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 4 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,100:1\n1#2:101\n45#3:102\n28#4:103\n*S KotlinDebug\n*F\n+ 1 ResourceUriFetcher.kt\ncoil/fetch/ResourceUriFetcher\n*L\n58#1:102\n58#1:103\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/fetch/l$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIME_TYPE_XML:Ljava/lang/String; = "text/xml"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final data:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/request/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/fetch/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/fetch/l$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/fetch/l;->Companion:Lcoil/fetch/l$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcoil/request/m;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/fetch/l;->data:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 8
    return-void
.end method

.method private final b(Landroid/net/Uri;)Ljava/lang/Void;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Invalid android.resource URI: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcoil/fetch/l;->data:Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lcoil/fetch/l;->data:Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iget-object v2, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcoil/request/m;->g()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    :goto_1
    new-instance v4, Landroid/util/TypedValue;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0, v4, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    .line 83
    iget-object v1, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 84
    .line 85
    const/16 v6, 0x2f

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x6

    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v5, v1

    .line 91
    .line 92
    .line 93
    invoke-static/range {v5 .. v10}, Lkotlin/text/k;->h0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 94
    move-result v4

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 98
    move-result v5

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v1}, Lcoil/util/i;->k(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    const-string/jumbo v4, "text/xml"

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v4

    .line 122
    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v0}, Lcoil/util/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object p1

    .line 138
    :goto_2
    move-object v4, p1

    .line 139
    goto :goto_3

    .line 140
    .line 141
    .line 142
    :cond_2
    invoke-static {v2, v3, v0}, Lcoil/util/d;->d(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object p1

    .line 144
    goto :goto_2

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-static {v4}, Lcoil/util/i;->w(Landroid/graphics/drawable/Drawable;)Z

    .line 148
    move-result p1

    .line 149
    .line 150
    new-instance v0, Lcoil/fetch/g;

    .line 151
    .line 152
    if-eqz p1, :cond_3

    .line 153
    .line 154
    sget-object v3, Lcoil/util/k;->INSTANCE:Lcoil/util/k;

    .line 155
    .line 156
    iget-object v1, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lcoil/request/m;->f()Landroid/graphics/Bitmap$Config;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    iget-object v1, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcoil/request/m;->n()Lcoil/size/i;

    .line 166
    move-result-object v6

    .line 167
    .line 168
    iget-object v1, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcoil/request/m;->m()Lcoil/size/h;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    iget-object v1, p0, Lcoil/fetch/l;->options:Lcoil/request/m;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcoil/request/m;->c()Z

    .line 178
    move-result v8

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {v3 .. v8}, Lcoil/util/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/i;Lcoil/size/h;Z)Landroid/graphics/Bitmap;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    .line 190
    .line 191
    invoke-direct {v4, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 192
    .line 193
    :cond_3
    sget-object v1, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v4, p1, v1}, Lcoil/fetch/g;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;)V

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_4
    new-instance v4, Landroid/util/TypedValue;

    .line 200
    .line 201
    .line 202
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    new-instance v5, Lcoil/fetch/m;

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 212
    move-result-object v3

    .line 213
    .line 214
    .line 215
    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    new-instance v6, Lcoil/decode/r;

    .line 219
    .line 220
    iget v4, v4, Landroid/util/TypedValue;->density:I

    .line 221
    .line 222
    .line 223
    invoke-direct {v6, p1, v0, v4}, Lcoil/decode/r;-><init>(Ljava/lang/String;II)V

    .line 224
    .line 225
    .line 226
    invoke-static {v3, v2, v6}, Lcoil/decode/q;->b(Lokio/BufferedSource;Landroid/content/Context;Lcoil/decode/p$a;)Lcoil/decode/p;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    sget-object v0, Lcoil/decode/f;->DISK:Lcoil/decode/f;

    .line 230
    .line 231
    .line 232
    invoke-direct {v5, p1, v1, v0}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 233
    move-object v0, v5

    .line 234
    :goto_4
    return-object v0

    .line 235
    .line 236
    :cond_5
    iget-object p1, p0, Lcoil/fetch/l;->data:Landroid/net/Uri;

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcoil/fetch/l;->b(Landroid/net/Uri;)Ljava/lang/Void;

    .line 240
    .line 241
    new-instance p1, Lw7/i;

    .line 242
    .line 243
    .line 244
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 245
    throw p1

    .line 246
    .line 247
    :cond_6
    iget-object p1, p0, Lcoil/fetch/l;->data:Landroid/net/Uri;

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1}, Lcoil/fetch/l;->b(Landroid/net/Uri;)Ljava/lang/Void;

    .line 251
    .line 252
    new-instance p1, Lw7/i;

    .line 253
    .line 254
    .line 255
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 256
    throw p1
.end method
