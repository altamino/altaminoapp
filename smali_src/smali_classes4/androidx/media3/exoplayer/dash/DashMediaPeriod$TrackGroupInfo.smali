.class final Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
    }
.end annotation


# static fields
.field private static final CATEGORY_EMBEDDED:I = 0x1

.field private static final CATEGORY_MANIFEST_EVENTS:I = 0x2

.field private static final CATEGORY_PRIMARY:I


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedClosedCaptionTrackGroupIndex:I

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method private constructor <init>(II[IIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 8
    .line 9
    iput p2, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 10
    .line 11
    iput p4, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 14
    .line 15
    iput p6, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 16
    .line 17
    iput p7, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 18
    return-void
.end method

.method public static a([II)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v5, -0x1

    .line 6
    const/4 v6, -0x1

    .line 7
    const/4 v7, -0x1

    .line 8
    move-object v0, v8

    .line 9
    move-object v3, p0

    .line 10
    move v4, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    .line 14
    return-object v8
.end method

.method public static b([II)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v5, -0x1

    .line 6
    const/4 v6, -0x1

    .line 7
    const/4 v7, -0x1

    .line 8
    move-object v0, v8

    .line 9
    move-object v3, p0

    .line 10
    move v4, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    .line 14
    return-object v8
.end method

.method public static c(I)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    new-array v3, v0, [I

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, -0x1

    .line 10
    const/4 v6, -0x1

    .line 11
    move-object v0, v8

    .line 12
    move v7, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    .line 16
    return-object v8
.end method

.method public static d(I[IIII)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v7, -0x1

    .line 5
    move-object v0, v8

    .line 6
    move v1, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    .line 14
    return-object v8
.end method
