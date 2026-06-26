.class Lcom/narvii/media/SaveImageHelper$3;
.super Lcom/android/volley/Request;
.source "SaveImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;

.field uri:Landroid/net/Uri;

.field final synthetic val$origUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iput-object p5, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/media/SaveImageHelper$3;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/io/File;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->access$200(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 363
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->access$002(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 364
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v1, v0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {v1, p1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 312
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/media/SaveImageHelper$3;->deliverResponse(Ljava/io/File;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 319
    :try_start_0
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to   image data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 320
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->addWatermark([BLjava/lang/String;)[B

    move-result-object p1

    .line 321
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 322
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 323
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 325
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 326
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/media/SaveImageHelper;->access$300(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    const/4 v3, 0x0

    invoke-static {v2, v1, p1, v3}, Lcom/narvii/media/SaveImageHelper;->access$400(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {v2, v1}, Lcom/narvii/media/SaveImageHelper;->access$500(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 330
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 331
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/media/SaveImageHelper;->access$600(Lcom/narvii/media/SaveImageHelper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    .line 337
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->access$700(Lcom/narvii/media/SaveImageHelper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 338
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "fail to save image to gallery"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 342
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_4

    .line 343
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->access$800(Lcom/narvii/media/SaveImageHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->getUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    .line 345
    :cond_4
    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 347
    :cond_5
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "malformed image data"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to decode downloaded image data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
