.class public Lio/agora/rtc/live/LiveTranscoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;,
        Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;,
        Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;,
        Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;,
        Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;
    }
.end annotation


# static fields
.field public static final LBHQ:Ljava/lang/String; = "lbhq"

.field public static final VEO:Ljava/lang/String; = "veo"


# instance fields
.field private advancedFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public audioBitrate:I

.field public audioChannels:I

.field public audioCodecProfile:Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;

.field public audioSampleRate:Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;

.field public backgroundColor:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public backgroundImage:Lio/agora/rtc/video/AgoraImage;

.field public height:I

.field public lowLatency:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public metadata:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private transcodingUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;",
            ">;"
        }
    .end annotation
.end field

.field public userConfigExtraInfo:Ljava/lang/String;

.field public userCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public videoBitrate:I

.field public videoCodecProfile:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

.field public videoCodecType:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

.field public videoFramerate:I

.field public videoGop:I

.field public watermark:Lio/agora/rtc/video/AgoraImage;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x168

    .line 6
    .line 7
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->width:I

    .line 8
    .line 9
    const/16 v0, 0x280

    .line 10
    .line 11
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->height:I

    .line 12
    .line 13
    const/16 v0, 0x190

    .line 14
    .line 15
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->videoBitrate:I

    .line 16
    .line 17
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->HIGH:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 18
    .line 19
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->videoCodecProfile:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    .line 20
    .line 21
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->H264:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    .line 22
    .line 23
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->videoCodecType:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    .line 24
    .line 25
    const/16 v0, 0x1e

    .line 26
    .line 27
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->videoGop:I

    .line 28
    .line 29
    const/16 v0, 0xf

    .line 30
    .line 31
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->videoFramerate:I

    .line 32
    .line 33
    new-instance v0, Lio/agora/rtc/video/AgoraImage;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Lio/agora/rtc/video/AgoraImage;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->watermark:Lio/agora/rtc/video/AgoraImage;

    .line 39
    .line 40
    new-instance v0, Lio/agora/rtc/video/AgoraImage;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Lio/agora/rtc/video/AgoraImage;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundImage:Lio/agora/rtc/video/AgoraImage;

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    iput-boolean v0, p0, Lio/agora/rtc/live/LiveTranscoding;->lowLatency:Z

    .line 49
    .line 50
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;

    .line 51
    .line 52
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->audioSampleRate:Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;

    .line 53
    .line 54
    const/16 v0, 0x30

    .line 55
    .line 56
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->audioBitrate:I

    .line 57
    const/4 v0, 0x1

    .line 58
    .line 59
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->audioChannels:I

    .line 60
    .line 61
    sget-object v0, Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;->LC_AAC:Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;

    .line 62
    .line 63
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->audioCodecProfile:Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;

    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 71
    .line 72
    new-instance v0, Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->advancedFeatures:Ljava/util/Map;

    .line 78
    .line 79
    const/high16 v0, -0x1000000

    .line 80
    .line 81
    iput v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    .line 82
    const/4 v0, 0x0

    .line 83
    .line 84
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public addUser(Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->uid:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->userCount:I

    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, -0x2

    .line 28
    return p1
.end method

.method public getAdvancedFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->advancedFeatures:Ljava/util/Map;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    return v0
.end method

.method public getBlue()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRed()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getUserCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getUsers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    return-object v1
.end method

.method public removeUser(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, -0x2

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 29
    move-result p1

    .line 30
    .line 31
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->userCount:I

    .line 32
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public setAdvancedFeatures(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "featureName",
            "opened"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->advancedFeatures:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    return-void
.end method

.method public setBackgroundColor(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "red",
            "green",
            "blue"
        }
    .end annotation

    .line 2
    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    return-void
.end method

.method public setBlue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blue"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getRed()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getGreen()I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x10

    .line 11
    .line 12
    shl-int/lit8 v1, v1, 0x8

    .line 13
    or-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    .line 16
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    .line 17
    return-void
.end method

.method public setGreen(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "green"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getRed()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getBlue()I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 v0, v0, 0x10

    .line 11
    .line 12
    shl-int/lit8 p1, p1, 0x8

    .line 13
    or-int/2addr p1, v0

    .line 14
    or-int/2addr p1, v1

    .line 15
    .line 16
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    .line 17
    return-void
.end method

.method public setRed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "red"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getGreen()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/agora/rtc/live/LiveTranscoding;->getBlue()I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x10

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x8

    .line 13
    or-int/2addr p1, v0

    .line 14
    or-int/2addr p1, v1

    .line 15
    .line 16
    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    .line 17
    return-void
.end method

.method public setUsers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "users"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;

    iget-object v1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 3
    iget v2, v0, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->userCount:I

    return-void
.end method

.method public setUsers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "users"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lio/agora/rtc/live/LiveTranscoding;->transcodingUsers:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/live/LiveTranscoding;->userCount:I

    return-void
.end method
