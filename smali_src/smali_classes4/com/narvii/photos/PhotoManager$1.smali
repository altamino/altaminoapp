.class Lcom/narvii/photos/PhotoManager$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/photos/PhotoManager;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/photos/PhotoManager;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$1;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/photos/PhotoManager$1;->val$path:Ljava/io/File;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :try_start_0
    new-instance v2, Lcom/narvii/util/SafeFileOutputStream;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/narvii/photos/PhotoManager$1;->val$path:Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    const/16 v3, 0x3c

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3, v2}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 21
    goto :goto_2

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-object v0, v2

    .line 25
    goto :goto_1

    .line 26
    :catchall_1
    move-exception v2

    .line 27
    move-object v4, v2

    .line 28
    move-object v2, v0

    .line 29
    move-object v0, v4

    .line 30
    .line 31
    :goto_0
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 35
    :catch_1
    :cond_0
    throw v0

    .line 36
    .line 37
    :catch_2
    :goto_1
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 41
    :catch_3
    :cond_1
    :goto_2
    return-void
.end method
