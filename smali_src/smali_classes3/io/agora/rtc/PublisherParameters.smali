.class public Lio/agora/rtc/PublisherParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public audiobitrate:I

.field public audiochannels:I

.field public audiosamplerate:I

.field public bitrate:I

.field public defaultLayout:I

.field public extraInfo:Ljava/lang/String;

.field public framerate:I

.field public height:I

.field public injectStreamHeight:I

.field public injectStreamUrl:Ljava/lang/String;

.field public injectStreamWidth:I

.field public lifecycle:I

.field public owner:Z

.field public publishUrl:Ljava/lang/String;

.field public rawStreamUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x168

    .line 6
    .line 7
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->width:I

    .line 8
    .line 9
    const/16 v0, 0x280

    .line 10
    .line 11
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->height:I

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->framerate:I

    .line 16
    .line 17
    const/16 v0, 0x1f4

    .line 18
    .line 19
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->bitrate:I

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->defaultLayout:I

    .line 23
    .line 24
    const/16 v1, 0x7d00

    .line 25
    .line 26
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiosamplerate:I

    .line 27
    .line 28
    .line 29
    const v1, 0xcb20

    .line 30
    .line 31
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiobitrate:I

    .line 32
    .line 33
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->audiochannels:I

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    iput-boolean v1, p0, Lio/agora/rtc/PublisherParameters;->owner:Z

    .line 37
    .line 38
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->lifecycle:I

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->publishUrl:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->rawStreamUrl:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->extraInfo:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->injectStreamUrl:Ljava/lang/String;

    .line 48
    .line 49
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamWidth:I

    .line 50
    .line 51
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamHeight:I

    .line 52
    return-void
.end method
