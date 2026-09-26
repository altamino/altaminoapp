.class public Lcom/narvii/share/SharePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentType:Ljava/lang/String;

.field public forceUseImageOriginUrl:Z

.field public mediaUrl:Ljava/lang/String;

.field public needDownloadImg:Z

.field public needTranslateLink:Z

.field public object:Lcom/narvii/model/NVObject;

.field public subject:Ljava/lang/String;

.field public successToastMessage:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public translationTarget:I

.field public uri:Landroid/net/Uri;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public contentType(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->contentType:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    :cond_0
    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, ".mp4"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "video/*"

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_0
    const-string v0, "image/*"

    .line 31
    return-object v0
.end method
