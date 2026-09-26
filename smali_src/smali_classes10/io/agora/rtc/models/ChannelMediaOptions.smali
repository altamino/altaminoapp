.class public Lio/agora/rtc/models/ChannelMediaOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public autoSubscribeAudio:Z

.field public autoSubscribeVideo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/models/ChannelMediaOptions;->autoSubscribeAudio:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lio/agora/rtc/models/ChannelMediaOptions;->autoSubscribeVideo:Z

    .line 9
    return-void
.end method
