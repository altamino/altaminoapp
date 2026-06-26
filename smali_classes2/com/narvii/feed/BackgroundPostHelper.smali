.class public Lcom/narvii/feed/BackgroundPostHelper;
.super Lcom/narvii/post/PostHelper;
.source "BackgroundPostHelper.java"


# instance fields
.field backgroundUrl:Ljava/lang/String;

.field mediaGot:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    instance-of v1, v0, Lcom/narvii/image/BackgroundSource;

    if-eqz v1, :cond_1

    .line 26
    iget-boolean v1, p0, Lcom/narvii/feed/BackgroundPostHelper;->mediaGot:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/narvii/feed/BackgroundPostHelper;->mediaGot:Z

    .line 28
    check-cast v0, Lcom/narvii/image/BackgroundSource;

    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPostHelper;->backgroundUrl:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPostHelper;->backgroundUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "post-background"

    return-object p1

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
