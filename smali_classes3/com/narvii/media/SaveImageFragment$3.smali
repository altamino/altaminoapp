.class Lcom/narvii/media/SaveImageFragment$3;
.super Lcom/android/volley/Request;
.source "SaveImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageFragment;

.field uri:Landroid/net/Uri;

.field final synthetic val$origUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    iput-object p5, p0, Lcom/narvii/media/SaveImageFragment$3;->val$origUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/media/SaveImageFragment$3;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 2

    .line 239
    instance-of v0, p1, Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {v0}, Lcom/narvii/media/SaveImageFragment;->access$200(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 241
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageFragment;->access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 242
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object v1, v0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v1, :cond_0

    .line 243
    check-cast p1, Ljava/io/File;

    invoke-interface {v1, p1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$3;->val$origUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageFragment;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {p1, v1}, Lcom/narvii/media/SaveImageFragment;->access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 252
    new-instance p1, Lcom/narvii/media/SaveImageFragment$3$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/media/SaveImageFragment$3$1;-><init>(Lcom/narvii/media/SaveImageFragment$3;Lcom/android/volley/Request;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 200
    :try_start_0
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 201
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3;->val$origUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageFragment;->addWatermark([BLjava/lang/String;)[B

    move-result-object p1

    .line 202
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 204
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/media/SaveImageFragment;->access$300(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    const/4 v3, 0x0

    invoke-static {v2, v1, p1, v3}, Lcom/narvii/media/SaveImageFragment;->access$400(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    invoke-static {v1}, Lcom/narvii/media/SaveImageFragment;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 211
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 213
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$3;->this$0:Lcom/narvii/media/SaveImageFragment;

    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3;->val$origUrl:Ljava/lang/String;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p1, v2, v1, v0}, Lcom/narvii/media/SaveImageFragment;->access$500(Lcom/narvii/media/SaveImageFragment;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$3;->uri:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 218
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "fail to save image to gallery"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 222
    :cond_1
    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 224
    :cond_2
    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "malformed image data"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    .line 227
    :cond_3
    new-instance v0, Lcom/android/volley/VolleyError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to download image data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to decode downloaded image data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
