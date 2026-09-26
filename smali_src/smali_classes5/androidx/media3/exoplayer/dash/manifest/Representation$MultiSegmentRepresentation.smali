.class public Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;
.super Landroidx/media3/exoplayer/dash/manifest/Representation;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field final segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p6    # Ljava/util/List;
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
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v9, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v1, p1

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    .line 8
    move-object/from16 v6, p6

    .line 9
    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    move-object/from16 v8, p8

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/dash/manifest/Representation;-><init>(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Representation$1;)V

    .line 16
    move-object v1, p5

    .line 17
    .line 18
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 19
    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->h(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->d(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public c(JJ)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->f(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public d(JJ)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->i(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public e(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->g(J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->e()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public g(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->k(Landroidx/media3/exoplayer/dash/manifest/Representation;J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->j(J)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public h()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->l()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(JJ)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->c(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .locals 0

    .line 1
    return-object p0
.end method

.method public l()Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
