.class public Lio/agora/rtc/audio/AgoraAudioFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public channels:I

.field public frequency:I

.field public pcm:[B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lio/agora/rtc/audio/AgoraAudioFrame;->type:I

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    iput v0, p0, Lio/agora/rtc/audio/AgoraAudioFrame;->channels:I

    .line 10
    .line 11
    .line 12
    const v0, 0xac44

    .line 13
    .line 14
    iput v0, p0, Lio/agora/rtc/audio/AgoraAudioFrame;->frequency:I

    .line 15
    return-void
.end method
