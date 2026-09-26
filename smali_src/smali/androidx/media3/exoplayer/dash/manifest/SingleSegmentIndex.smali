.class final Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final uri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;->uri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 6
    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 0

    .line 1
    return-wide p3
.end method

.method public b(JJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public c(JJ)J
    .locals 0

    .line 1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public d(JJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public e(J)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public f()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/SingleSegmentIndex;->uri:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public i(JJ)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x1

    return-wide p1
.end method
