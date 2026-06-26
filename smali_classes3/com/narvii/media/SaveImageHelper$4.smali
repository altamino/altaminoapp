.class Lcom/narvii/media/SaveImageHelper$4;
.super Ljava/lang/Object;
.source "SaveImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;->saveGifImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;

.field final synthetic val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    iput-object p2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ".gif"

    .line 385
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v1}, Lcom/narvii/media/SaveImageHelper;->access$100(Lcom/narvii/media/SaveImageHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 398
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v1}, Lcom/narvii/media/SaveImageHelper;->access$200(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 401
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_3

    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v2, v0, v6, v1}, Lcom/narvii/media/SaveImageHelper;->access$400(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_2

    .line 407
    :try_start_1
    iget-object v3, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v3, v0}, Lcom/narvii/media/SaveImageHelper;->access$500(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 409
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 412
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x0

    .line 413
    invoke-virtual {v1, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 416
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 419
    :goto_1
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    const-string v3, "image/gif"

    invoke-static {v1, v0, v2, v3}, Lcom/narvii/media/SaveImageHelper;->access$600(Lcom/narvii/media/SaveImageHelper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-object v0, v6

    :catch_2
    :goto_2
    move-object v1, v6

    goto :goto_3

    :cond_3
    move-object v0, v6

    move-object v1, v0

    :goto_3
    if-nez v1, :cond_5

    .line 424
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v2}, Lcom/narvii/media/SaveImageHelper;->access$700(Lcom/narvii/media/SaveImageHelper;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v1, v0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v1, :cond_4

    .line 426
    invoke-interface {v1, v6}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    goto :goto_4

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 431
    :cond_5
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v2, v2, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v2, :cond_6

    .line 432
    invoke-interface {v2, v0}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    goto :goto_4

    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 435
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v1}, Lcom/narvii/media/SaveImageHelper;->access$800(Lcom/narvii/media/SaveImageHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->getUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/media/SaveImageHelper;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :cond_8
    const-wide/16 v0, 0x190

    .line 394
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_4
    return-void
.end method
