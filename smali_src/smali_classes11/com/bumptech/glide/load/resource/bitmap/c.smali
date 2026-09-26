.class public Lcom/bumptech/glide/load/resource/bitmap/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPRESSION_FORMAT:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPRESSION_QUALITY:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x5a

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/h;

    .line 15
    .line 16
    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/load/h;->e(Ljava/lang/String;)Lcom/bumptech/glide/load/h;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/h;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/i;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Landroid/graphics/Bitmap$CompressFormat;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    return-object p2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 23
    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/c;->c(Lcom/bumptech/glide/load/engine/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lcom/bumptech/glide/load/c;->TRANSFORMED:Lcom/bumptech/glide/load/c;

    .line 3
    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/v;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .locals 7
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/i;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "BitmapEncoder"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/c;->d(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/i;)Landroid/graphics/Bitmap$CompressFormat;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    const-string v4, "encode: [%dx%d] %s"

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v2, v3, v1}, La1/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_QUALITY:Lcom/bumptech/glide/load/h;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v4}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    const/4 v5, 0x0

    .line 51
    .line 52
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    .line 57
    :try_start_2
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    new-instance p2, Lcom/bumptech/glide/load/data/c;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v6, v5}, Lcom/bumptech/glide/load/data/c;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    move-object v5, p2

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    move-object v5, v6

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    :catch_0
    move-exception p2

    .line 74
    move-object v5, v6

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    move-object v5, v6

    .line 77
    .line 78
    .line 79
    :goto_0
    :try_start_3
    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    .line 84
    .line 85
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    goto :goto_5

    .line 89
    :catch_1
    :goto_1
    const/4 p2, 0x1

    .line 90
    goto :goto_3

    .line 91
    :catchall_2
    move-exception p1

    .line 92
    goto :goto_4

    .line 93
    :catch_2
    move-exception p2

    .line 94
    :goto_2
    const/4 v4, 0x3

    .line 95
    .line 96
    .line 97
    :try_start_5
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 98
    move-result v4

    .line 99
    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    const-string v4, "Failed to encode Bitmap"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    .line 107
    :cond_1
    if-eqz v5, :cond_2

    .line 108
    .line 109
    .line 110
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    :catch_3
    :cond_2
    const/4 p2, 0x0

    .line 112
    :goto_3
    const/4 v4, 0x2

    .line 113
    .line 114
    .line 115
    :try_start_7
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 116
    move-result v4

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v5, "Compressed with type: "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, " of size "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/bumptech/glide/util/k;->g(Landroid/graphics/Bitmap;)I

    .line 140
    move-result v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v1, " in "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 152
    move-result-wide v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, ", options format: "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/c;->COMPRESSION_FORMAT:Lcom/bumptech/glide/load/h;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string p3, ", hasAlpha: "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 178
    move-result p1

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    .line 190
    .line 191
    :cond_3
    invoke-static {}, La1/b;->d()V

    .line 192
    return p2

    .line 193
    .line 194
    :goto_4
    if-eqz v5, :cond_4

    .line 195
    .line 196
    .line 197
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 198
    :catch_4
    :cond_4
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 199
    .line 200
    .line 201
    :goto_5
    invoke-static {}, La1/b;->d()V

    .line 202
    throw p1
.end method
