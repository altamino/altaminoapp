.class Lcom/narvii/media/MediaLoader$2;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaLoader$2;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/media/MediaLoader$2;->val$uri:Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/media/MediaLoader$2;->this$0:Lcom/narvii/media/MediaLoader;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$2;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/narvii/media/MediaLoader;->a(Lcom/narvii/media/MediaLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void

    .line 31
    .line 32
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$2;->val$uri:Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    const/16 v4, 0x1000

    .line 54
    .line 55
    new-array v4, v4, [B

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 59
    move-result v5

    .line 60
    const/4 v6, -0x1

    .line 61
    .line 62
    if-eq v5, v6, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :catch_1
    :try_start_2
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    .line 90
    :catch_2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$2;->val$callback:Lcom/narvii/util/Callback;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 98
    :cond_3
    :goto_2
    return-void
.end method
