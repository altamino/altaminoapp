.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private index:I

.field private mediaItem:Landroidx/media3/common/MediaItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaSourceHoldersBuilder:Lcom/google/common/collect/a0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0$a<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/a0$a;

    .line 10
    return-void
.end method
