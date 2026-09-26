.class Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/media/MediaDrm;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/z;->a(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/analytics/PlayerId;->a()Landroid/media/metrics/LogSessionId;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/media3/exoplayer/g1;->a()Landroid/media/metrics/LogSessionId;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/audio/v;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/w;->a(Landroid/media/MediaDrm;[B)Landroid/media/MediaDrm$PlaybackComponent;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/x;->a(Ljava/lang/Object;)Landroid/media/MediaDrm$PlaybackComponent;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/drm/y;->a(Landroid/media/MediaDrm$PlaybackComponent;Landroid/media/metrics/LogSessionId;)V

    .line 30
    :cond_0
    return-void
.end method
