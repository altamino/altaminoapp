.class public Lcom/narvii/youtube/YoutubeVideo;
.super Ljava/lang/Object;
.source "YoutubeVideo.java"


# instance fields
.field public averageBitrate:I

.field public mimeType:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/narvii/youtube/YoutubeVideo;->averageBitrate:I

    return-void
.end method
