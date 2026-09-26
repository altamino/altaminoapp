.class public Lcom/google/android/exoplayer2/video/g;
.super Lcom/google/android/exoplayer2/mediacodec/m;
.source "SourceFile"


# instance fields
.field public final isSurfaceValid:Z

.field public final surfaceIdentityHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/mediacodec/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/m;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/video/g;->surfaceIdentityHashCode:I

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    .line 23
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/g;->isSurfaceValid:Z

    .line 24
    return-void
.end method
