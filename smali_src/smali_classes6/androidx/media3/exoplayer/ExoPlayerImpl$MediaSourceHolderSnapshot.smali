.class final Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field private timeline:Landroidx/media3/common/Timeline;

.field private final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    .line 8
    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;Landroidx/media3/common/Timeline;)Landroidx/media3/common/Timeline;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroidx/media3/common/Timeline;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method
