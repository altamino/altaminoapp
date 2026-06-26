.class public final synthetic Lcom/google/android/exoplayer2/offline/DownloadCursor$-CC;
.super Ljava/lang/Object;
.source "DownloadCursor.java"


# direct methods
.method public static $default$moveToNext(Lcom/google/android/exoplayer2/offline/DownloadCursor;)Z
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/offline/DownloadCursor;

    .line 82
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
