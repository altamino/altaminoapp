.class Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;
.super Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothStreamingMediaParser"
.end annotation


# static fields
.field private static final KEY_DURATION:Ljava/lang/String; = "Duration"

.field private static final KEY_DVR_WINDOW_LENGTH:Ljava/lang/String; = "DVRWindowLength"

.field private static final KEY_IS_LIVE:Ljava/lang/String; = "IsLive"

.field private static final KEY_LOOKAHEAD_COUNT:Ljava/lang/String; = "LookaheadCount"

.field private static final KEY_MAJOR_VERSION:Ljava/lang/String; = "MajorVersion"

.field private static final KEY_MINOR_VERSION:Ljava/lang/String; = "MinorVersion"

.field private static final KEY_TIME_SCALE:Ljava/lang/String; = "TimeScale"

.field public static final TAG:Ljava/lang/String; = "SmoothStreamingMedia"


# instance fields
.field private duration:J

.field private dvrWindowLength:J

.field private isLive:Z

.field private lookAheadCount:I

.field private majorVersion:I

.field private minorVersion:I

.field private protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final streamElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;",
            ">;"
        }
    .end annotation
.end field

.field private timescale:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "SmoothStreamingMedia"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const/4 p1, -0x1

    .line 7
    .line 8
    iput p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 27
    .line 28
    check-cast p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 31
    :cond_2
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-array v13, v0, [Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->streamElements:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    new-instance v1, Landroidx/media3/common/DrmInitData;

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    new-array v3, v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 23
    .line 24
    new-instance v4, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 27
    .line 28
    iget-object v6, v5, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v7, "video/mp4"

    .line 32
    .line 33
    iget-object v5, v5, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;->data:[B

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v6, v7, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 37
    const/4 v5, 0x0

    .line 38
    .line 39
    aput-object v4, v3, v5

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v3}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 43
    move v3, v5

    .line 44
    .line 45
    :goto_0
    if-ge v3, v0, :cond_2

    .line 46
    .line 47
    aget-object v4, v13, v3

    .line 48
    .line 49
    iget v6, v4, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    .line 50
    const/4 v7, 0x2

    .line 51
    .line 52
    if-eq v6, v7, :cond_0

    .line 53
    .line 54
    if-ne v6, v2, :cond_1

    .line 55
    .line 56
    :cond_0
    iget-object v4, v4, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Landroidx/media3/common/Format;

    .line 57
    move v6, v5

    .line 58
    :goto_1
    array-length v7, v4

    .line 59
    .line 60
    if-ge v6, v7, :cond_1

    .line 61
    .line 62
    aget-object v7, v4, v6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v1}, Landroidx/media3/common/Format$Builder;->O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    aput-object v7, v4, v6

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 85
    .line 86
    iget v2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->majorVersion:I

    .line 87
    .line 88
    iget v3, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->minorVersion:I

    .line 89
    .line 90
    iget-wide v4, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    .line 91
    .line 92
    iget-wide v6, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->duration:J

    .line 93
    .line 94
    iget-wide v8, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->dvrWindowLength:J

    .line 95
    .line 96
    iget v10, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    .line 97
    .line 98
    iget-boolean v11, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->isLive:Z

    .line 99
    .line 100
    iget-object v12, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->protectionElement:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 101
    move-object v1, v0

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;-><init>(IIJJJIZLandroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$ProtectionElement;[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;)V

    .line 105
    return-object v0
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "MajorVersion"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->majorVersion:I

    .line 9
    .line 10
    const-string v0, "MinorVersion"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->minorVersion:I

    .line 17
    .line 18
    .line 19
    const-wide/32 v0, 0x989680

    .line 20
    .line 21
    const-string v2, "TimeScale"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    iput-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    .line 28
    .line 29
    const-string v0, "Duration"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->duration:J

    .line 36
    .line 37
    const-string v0, "DVRWindowLength"

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 43
    move-result-wide v0

    .line 44
    .line 45
    iput-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->dvrWindowLength:J

    .line 46
    .line 47
    const-string v0, "LookaheadCount"

    .line 48
    const/4 v1, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 52
    move-result v0

    .line 53
    .line 54
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->lookAheadCount:I

    .line 55
    .line 56
    const-string v0, "IsLive"

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 61
    move-result p1

    .line 62
    .line 63
    iput-boolean p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->isLive:Z

    .line 64
    .line 65
    iget-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->timescale:J

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
