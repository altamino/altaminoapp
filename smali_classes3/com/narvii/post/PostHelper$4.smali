.class Lcom/narvii/post/PostHelper$4;
.super Ljava/lang/Object;
.source "PostHelper.java"

# interfaces
.implements Lcom/narvii/photos/VideoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/PostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/PostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget-boolean v0, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p1, :cond_1

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VIDEO "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget v0, v0, Lcom/narvii/post/PostHelper;->photoIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    :cond_0
    iget-object p3, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, p3, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    invoke-interface {v0, p3, p2, p1, p4}, Lcom/narvii/post/PostListener;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/model/Media;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, v0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v1, v0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    iget p2, p1, Lcom/narvii/post/PostHelper;->videoIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/narvii/post/PostHelper;->videoIndex:I

    const/4 p2, 0x0

    .line 298
    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 299
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->step()V

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 4

    .line 315
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    int-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    double-to-int p2, v0

    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 316
    iget-boolean p2, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p2, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getProgress()I

    move-result p3

    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    move-result v0

    invoke-interface {p2, p1, p3, v0}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    :cond_0
    return-void
.end method
