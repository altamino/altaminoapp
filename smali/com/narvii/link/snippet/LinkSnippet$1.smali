.class Lcom/narvii/link/snippet/LinkSnippet$1;
.super Ljava/lang/Object;
.source "LinkSnippet.java"

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

    .line 134
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "linkSnippet"

    const/4 v1, 0x1

    const-string v2, ".png"

    .line 137
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->createTmpFile(ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 140
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    iget-object v5, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$bmp:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image compress spent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$1$1;

    invoke-direct {v0, p0, v1}, Lcom/narvii/link/snippet/LinkSnippet$1$1;-><init>(Lcom/narvii/link/snippet/LinkSnippet$1;Ljava/io/File;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    nop

    const-string v1, "compress jpeg fail"

    .line 144
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
