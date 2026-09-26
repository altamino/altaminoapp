.class public interface abstract Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
.end method

.method public abstract b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;)V
.end method

.method public abstract c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
.end method

.method public abstract d(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
.end method

.method public abstract e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Landroidx/media3/exoplayer/offline/DownloadManager;)V
.end method

.method public abstract g(Landroidx/media3/exoplayer/offline/DownloadManager;)V
.end method
