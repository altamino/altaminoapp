.class Lcom/narvii/post/PostHelper$3;
.super Ljava/lang/Object;
.source "PostHelper.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


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

    .line 263
    iput-object p1, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    iget-boolean v0, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p1, :cond_1

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMG "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    iget v0, v0, Lcom/narvii/post/PostHelper;->photoIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_0
    iget-object p3, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, p3, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    invoke-interface {v0, p3, p2, p1, p4}, Lcom/narvii/post/PostListener;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, v0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object p1, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    iget p2, p1, Lcom/narvii/post/PostHelper;->photoIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/narvii/post/PostHelper;->photoIndex:I

    const/4 p2, 0x0

    .line 268
    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 269
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->step()V

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, p3

    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 286
    iget-boolean p2, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getProgress()I

    move-result p3

    iget-object v0, p0, Lcom/narvii/post/PostHelper$3;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    move-result v0

    invoke-interface {p2, p1, p3, v0}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    :cond_0
    return-void
.end method
