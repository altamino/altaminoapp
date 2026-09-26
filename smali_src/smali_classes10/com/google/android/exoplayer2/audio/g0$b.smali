.class final Lcom/google/android/exoplayer2/audio/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/google/android/exoplayer2/audio/v;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/audio/v;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 6
    return-void
.end method
