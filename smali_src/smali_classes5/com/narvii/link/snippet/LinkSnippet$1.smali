.class Lcom/narvii/link/snippet/LinkSnippet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/LinkSnippet;->saveSnippetBitmap(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/snippet/LinkSnippet;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    const-string v0, "linkSnippet"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const-string v2, ".png"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->createTmpFile(ZLjava/lang/String;)Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    iget-object v5, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 23
    .line 24
    const/16 v7, 0x64

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v4, v2

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "image compress spent "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "ms"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$1$1;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Lcom/narvii/link/snippet/LinkSnippet$1$1;-><init>(Lcom/narvii/link/snippet/LinkSnippet$1;Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 69
    return-void

    .line 70
    .line 71
    :catchall_0
    const-string v1, "compress jpeg fail"

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method
