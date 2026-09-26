.class public Lio/agora/rtc/video/ChannelMediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public channelName:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "token",
            "uid"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lio/agora/rtc/video/ChannelMediaInfo;->token:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lio/agora/rtc/video/ChannelMediaInfo;->uid:I

    .line 10
    return-void
.end method
