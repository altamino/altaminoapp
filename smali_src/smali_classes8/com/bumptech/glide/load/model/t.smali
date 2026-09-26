.class public Lcom/bumptech/glide/load/model/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/t;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 6
    return-void
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
    check-cast p1, Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/t;->c(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z
    .locals 4
    .param p1    # Ljava/io/InputStream;
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
    const-string p3, "StreamEncoder"

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/t;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    const-class v2, [B

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, [B

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 25
    move-result p2

    .line 26
    const/4 v2, -0x1

    .line 27
    .line 28
    if-eq p2, v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    move-object v2, v3

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    move-object v2, v3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    .line 46
    :catch_1
    iget-object p1, p0, Lcom/bumptech/glide/load/model/t;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->e(Ljava/lang/Object;)V

    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :catch_2
    move-exception p1

    .line 55
    :goto_1
    const/4 p2, 0x3

    .line 56
    .line 57
    .line 58
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 64
    .line 65
    .line 66
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    :cond_1
    if-eqz v2, :cond_2

    .line 69
    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    .line 73
    :catch_3
    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/load/model/t;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->e(Ljava/lang/Object;)V

    .line 77
    :goto_2
    return v1

    .line 78
    .line 79
    :goto_3
    if-eqz v2, :cond_3

    .line 80
    .line 81
    .line 82
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 83
    .line 84
    :catch_4
    :cond_3
    iget-object p2, p0, Lcom/bumptech/glide/load/model/t;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->e(Ljava/lang/Object;)V

    .line 88
    throw p1
.end method
