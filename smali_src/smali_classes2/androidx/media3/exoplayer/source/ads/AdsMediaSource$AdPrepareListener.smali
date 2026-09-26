.class final Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareListener"
.end annotation


# instance fields
.field private final adUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroid/net/Uri;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    .line 8
    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->e(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->f(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    return-void
.end method

.method private synthetic e(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->y0(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 9
    .line 10
    iget v2, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 11
    .line 12
    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->c(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;II)V

    .line 16
    return-void
.end method

.method private synthetic f(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->y0(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 9
    .line 10
    iget v2, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 11
    .line 12
    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->d(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;IILjava/io/IOException;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->w0(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Landroidx/media3/exoplayer/source/ads/c;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/ads/c;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->x0(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v7, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/media3/exoplayer/source/LoadEventInfo;->a()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    new-instance v4, Landroidx/media3/datasource/DataSpec;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v5

    .line 24
    move-object v1, v7

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->a(Ljava/lang/Exception;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x6

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v7, v3, v1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->w(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->w0(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroid/os/Handler;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    new-instance v1, Landroidx/media3/exoplayer/source/ads/d;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/d;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
