.class final Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    .line 8
    .line 9
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    .line 10
    .line 11
    iput-wide p5, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    .line 12
    return-void
.end method

.method static synthetic a(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B

    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    .line 3
    return-wide v0
.end method
