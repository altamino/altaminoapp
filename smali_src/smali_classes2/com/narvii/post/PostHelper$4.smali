.class Lcom/narvii/post/PostHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v0, "VIDEO "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 23
    .line 24
    iget v0, v0, Lcom/narvii/post/PostHelper;->photoIndex:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, ": "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    :cond_0
    iget-object p3, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 56
    .line 57
    iget-object v0, p3, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p3, p2, p1, p4}, Lcom/narvii/post/PostListener;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :cond_1
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/model/Media;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/narvii/post/PostHelper;->uploadedUrlMap:Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/post/PostHelper;->photo:Lcom/narvii/photos/PhotoManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 27
    .line 28
    iget p2, p1, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    iput p2, p1, Lcom/narvii/post/PostHelper;->videoIndex:I

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->step()V

    .line 39
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    int-to-double v0, p2

    .line 4
    .line 5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 6
    mul-double/2addr v0, v2

    .line 7
    int-to-double p2, p3

    .line 8
    div-double/2addr v0, p2

    .line 9
    double-to-int p2, v0

    .line 10
    .line 11
    iput p2, p1, Lcom/narvii/post/PostHelper;->photoProgress:I

    .line 12
    .line 13
    iget-boolean p2, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getProgress()I

    .line 23
    move-result p3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/post/PostHelper$4;->this$0:Lcom/narvii/post/PostHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, p1, p3, v0}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    .line 33
    :cond_0
    return-void
.end method
