.class public Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;
.super Landroidx/media3/exoplayer/dash/manifest/Representation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final contentLength:J

.field private final indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    const/4 v9, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/dash/manifest/Representation;-><init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Representation$1;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    move-object v1, p4

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, v10, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->c()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, v10, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 40
    .line 41
    move-object/from16 v1, p9

    .line 42
    .line 43
    iput-object v1, v10, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    .line 44
    .line 45
    move-wide/from16 v1, p10

    .line 46
    .line 47
    iput-wide v1, v10, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    .line 54
    .line 55
    new-instance v3, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 56
    const/4 v4, 0x0

    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    move-object p1, v3

    .line 60
    move-object p2, v4

    .line 61
    move-wide p3, v5

    .line 62
    .line 63
    move-wide/from16 p5, p10

    .line 64
    .line 65
    .line 66
    invoke-direct/range {p1 .. p6}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V

    .line 70
    .line 71
    :goto_0
    iput-object v0, v10, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    .line 72
    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public l()Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    return-object v0
.end method
