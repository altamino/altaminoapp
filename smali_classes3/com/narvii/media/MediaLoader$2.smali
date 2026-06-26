.class Lcom/narvii/media/MediaLoader$2;
.super Ljava/lang/Thread;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaLoader;->cacheLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaLoader;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/net/Uri;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    iput-object p2, p0, Lcom/narvii/media/MediaLoader$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/media/MediaLoader$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v0, v0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v2, p0, Lcom/narvii/media/MediaLoader$2;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/media/MediaLoader;->access$100(Lcom/narvii/media/MediaLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 225
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 229
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/media/MediaLoader$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 238
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 239
    invoke-virtual {v2, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 242
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V

    .line 245
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    if-eqz v0, :cond_3

    .line 252
    :try_start_2
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 256
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_4

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method
