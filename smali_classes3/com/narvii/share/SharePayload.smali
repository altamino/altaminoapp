.class public Lcom/narvii/share/SharePayload;
.super Ljava/lang/Object;
.source "SharePayload.java"


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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video/*"

    return-object v0

    :cond_0
    const-string v0, "image/*"

    return-object v0
.end method
