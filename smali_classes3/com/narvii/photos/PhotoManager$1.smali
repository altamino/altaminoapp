.class Lcom/narvii/photos/PhotoManager$1;
.super Ljava/lang/Thread;
.source "PhotoManager.java"


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

    .line 341
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$1;->this$0:Lcom/narvii/photos/PhotoManager;

    iput-object p2, p0, Lcom/narvii/photos/PhotoManager$1;->val$path:Ljava/io/File;

    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 347
    :try_start_0
    new-instance v2, Lcom/narvii/util/SafeFileOutputStream;

    iget-object v3, p0, Lcom/narvii/photos/PhotoManager$1;->val$path:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$1;->val$bmp:Landroid/graphics/Bitmap;

    const/16 v3, 0x3c

    invoke-static {v0, v3, v2}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 354
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 358
    :catch_1
    :cond_0
    throw v2

    :catch_2
    nop

    :goto_1
    if-eqz v0, :cond_1

    .line 354
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_2
    return-void
.end method
