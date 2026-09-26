.class Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;
.super Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamIndexParser"
.end annotation


# static fields
.field private static final KEY_DISPLAY_HEIGHT:Ljava/lang/String; = "DisplayHeight"

.field private static final KEY_DISPLAY_WIDTH:Ljava/lang/String; = "DisplayWidth"

.field private static final KEY_FRAGMENT_DURATION:Ljava/lang/String; = "d"

.field private static final KEY_FRAGMENT_REPEAT_COUNT:Ljava/lang/String; = "r"

.field private static final KEY_FRAGMENT_START_TIME:Ljava/lang/String; = "t"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_NAME:Ljava/lang/String; = "Name"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "Subtype"

.field private static final KEY_TIME_SCALE:Ljava/lang/String; = "TimeScale"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field private static final KEY_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final KEY_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final KEY_URL:Ljava/lang/String; = "Url"

.field public static final TAG:Ljava/lang/String; = "StreamIndex"

.field private static final TAG_STREAM_FRAGMENT:Ljava/lang/String; = "c"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private displayHeight:I

.field private displayWidth:I

.field private final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lastChunkDuration:J

.field private maxHeight:I

.field private maxWidth:I

.field private name:Ljava/lang/String;

.field private startTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private timescale:J

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "StreamIndex"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->baseUri:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->formats:Ljava/util/List;

    .line 15
    return-void
.end method

.method private q(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->s(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->type:I

    .line 7
    .line 8
    const-string v1, "Type"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    iget v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->type:I

    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    const-string v3, "Subtype"

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->subType:Ljava/lang/String;

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->subType:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->subType:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    const-string v0, "Name"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->name:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    const-string v0, "Url"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->url:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "MaxWidth"

    .line 63
    const/4 v1, -0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 67
    move-result v0

    .line 68
    .line 69
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->maxWidth:I

    .line 70
    .line 71
    const-string v0, "MaxHeight"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 75
    move-result v0

    .line 76
    .line 77
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->maxHeight:I

    .line 78
    .line 79
    const-string v0, "DisplayWidth"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 83
    move-result v0

    .line 84
    .line 85
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->displayWidth:I

    .line 86
    .line 87
    const-string v0, "DisplayHeight"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 91
    move-result v0

    .line 92
    .line 93
    iput v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->displayHeight:I

    .line 94
    .line 95
    const-string v0, "Language"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iput-object v2, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->language:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    const-string v0, "TimeScale"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 110
    move-result p1

    .line 111
    int-to-long v1, p1

    .line 112
    .line 113
    iput-wide v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->timescale:J

    .line 114
    .line 115
    const-wide/16 v3, -0x1

    .line 116
    .line 117
    cmp-long p1, v1, v3

    .line 118
    .line 119
    if-nez p1, :cond_1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 129
    move-result-wide v0

    .line 130
    .line 131
    iput-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->timescale:J

    .line 132
    .line 133
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method private r(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "t"

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v1, v2, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 18
    move-result-wide v4

    .line 19
    .line 20
    cmp-long v1, v4, v2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 32
    .line 33
    const-wide/16 v8, -0x1

    .line 34
    .line 35
    cmp-long v1, v4, v8

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 40
    sub-int/2addr v0, v7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    iget-wide v4, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 53
    add-long/2addr v4, v0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    const-string p1, "Unable to infer start time"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v6}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 60
    move-result-object p1

    .line 61
    throw p1

    .line 62
    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    const-string v0, "d"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 76
    move-result-wide v0

    .line 77
    .line 78
    iput-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 79
    .line 80
    .line 81
    const-string/jumbo v0, "r"

    .line 82
    .line 83
    const-wide/16 v8, 0x1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v0, v8, v9}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 87
    move-result-wide v0

    .line 88
    .line 89
    cmp-long p1, v0, v8

    .line 90
    .line 91
    if-lez p1, :cond_4

    .line 92
    .line 93
    iget-wide v8, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 94
    .line 95
    cmp-long p1, v8, v2

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_3
    const-string p1, "Repeated chunk with unspecified duration"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v6}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 104
    move-result-object p1

    .line 105
    throw p1

    .line 106
    :cond_4
    :goto_1
    int-to-long v2, v7

    .line 107
    .line 108
    cmp-long p1, v2, v0

    .line 109
    .line 110
    if-gez p1, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-wide v8, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 115
    mul-long/2addr v8, v2

    .line 116
    add-long/2addr v8, v4

    .line 117
    .line 118
    .line 119
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    add-int/lit8 v7, v7, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    return-void
.end method

.method private s(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "Type"

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const-string v1, "audio"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string/jumbo v1, "video"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    const/4 p1, 0x2

    .line 30
    return p1

    .line 31
    .line 32
    .line 33
    :cond_1
    const-string/jumbo v1, "text"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    const/4 p1, 0x3

    .line 41
    return p1

    .line 42
    .line 43
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Invalid key value["

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p1, "]"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 67
    move-result-object p1

    .line 68
    throw p1

    .line 69
    .line 70
    :cond_3
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/media3/common/Format;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->formats:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/Format;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->formats:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-array v1, v1, [Landroidx/media3/common/Format;

    .line 11
    move-object v15, v1

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->formats:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 19
    move-object v2, v1

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->baseUri:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->url:Ljava/lang/String;

    .line 24
    .line 25
    iget v5, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->type:I

    .line 26
    .line 27
    iget-object v6, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->subType:Ljava/lang/String;

    .line 28
    .line 29
    iget-wide v7, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->timescale:J

    .line 30
    .line 31
    iget-object v9, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget v10, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->maxWidth:I

    .line 34
    .line 35
    iget v11, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->maxHeight:I

    .line 36
    .line 37
    iget v12, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->displayWidth:I

    .line 38
    .line 39
    iget v13, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->displayHeight:I

    .line 40
    .line 41
    iget-object v14, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->language:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v19, v1

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->startTimes:Ljava/util/ArrayList;

    .line 46
    .line 47
    move-object/from16 v16, v1

    .line 48
    .line 49
    move-object/from16 v20, v2

    .line 50
    .line 51
    iget-wide v1, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->lastChunkDuration:J

    .line 52
    .line 53
    move-wide/from16 v17, v1

    .line 54
    .line 55
    move-object/from16 v2, v20

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v2 .. v18}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Landroidx/media3/common/Format;Ljava/util/List;J)V

    .line 59
    return-object v19
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "c"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "c"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->r(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;->q(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 20
    :goto_0
    return-void
.end method
