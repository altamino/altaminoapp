.class public Lcom/narvii/feed/BackgroundPostHelper;
.super Lcom/narvii/post/PostHelper;
.source "SourceFile"


# instance fields
.field backgroundUrl:Ljava/lang/String;

.field mediaGot:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/post/PostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/image/BackgroundSource;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/feed/BackgroundPostHelper;->mediaGot:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/narvii/feed/BackgroundPostHelper;->mediaGot:Z

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/image/BackgroundSource;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/feed/BackgroundPostHelper;->backgroundUrl:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPostHelper;->backgroundUrl:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string p1, "post-background"

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/PostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method
