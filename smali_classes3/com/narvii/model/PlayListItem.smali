.class public Lcom/narvii/model/PlayListItem;
.super Ljava/lang/Object;
.source "PlayListItem.java"


# static fields
.field public static final PLAY_STATUS_PAUSE:I = 0x3

.field public static final PLAY_STATUS_PLAYING:I = 0x2

.field public static final PLAY_STATUS_READY:I = 0x1

.field public static final TYPE_LOCAL_MUSIC:I = 0x3

.field public static final TYPE_LOCAL_VIDEO:I = 0x1

.field public static final TYPE_YOUTUBE:I = 0x2


# instance fields
.field public albumId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public author:Ljava/lang/String;

.field public duration:D

.field public isDone:Z

.field public localMediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public needUploadThumbnail:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public songId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalMedia()Z
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/narvii/model/PlayListItem;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 66
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
