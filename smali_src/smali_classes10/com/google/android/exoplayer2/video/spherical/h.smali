.class public final synthetic Lcom/google/android/exoplayer2/video/spherical/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/spherical/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/spherical/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/h;->a:Lcom/google/android/exoplayer2/video/spherical/i;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/h;->a:Lcom/google/android/exoplayer2/video/spherical/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/i;->c(Lcom/google/android/exoplayer2/video/spherical/i;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
