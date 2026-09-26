.class Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;",
        ">;"
    }
.end annotation


# instance fields
.field public endOffset:J

.field public endOffsetIndex:I

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 6
    .line 7
    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)I
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 3
    .line 4
    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/Util;->o(JJ)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->a(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
