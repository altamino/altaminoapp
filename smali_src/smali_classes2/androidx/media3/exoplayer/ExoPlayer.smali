.class public interface abstract Landroidx/media3/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayer$Builder;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;,
        Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$TextComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETACH_SURFACE_TIMEOUT_MS:J = 0x7d0L
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public static final DEFAULT_RELEASE_TIMEOUT_MS:J = 0x1f4L
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field


# virtual methods
.method public abstract D()Landroidx/media3/exoplayer/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract F()Landroidx/media3/exoplayer/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract H(Z)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract I()Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract M()Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract O(Landroidx/media3/exoplayer/source/MediaSource;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end method

.method public abstract a(Landroidx/media3/exoplayer/source/MediaSource;)V
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
