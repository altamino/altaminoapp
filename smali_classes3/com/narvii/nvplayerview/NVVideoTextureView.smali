.class public Lcom/narvii/nvplayerview/NVVideoTextureView;
.super Landroid/view/TextureView;
.source "NVVideoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/narvii/nvplayerview/IRenderView;


# instance fields
.field private surface:Landroid/view/Surface;

.field private surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 32
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    .line 33
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz p1, :cond_0

    .line 34
    iget-object p2, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceCreated(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceDestroyed(Landroid/view/Surface;)V

    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    .line 51
    new-instance v0, Lcom/narvii/nvplayerview/NVVideoTextureView$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/nvplayerview/NVVideoTextureView$1;-><init>(Lcom/narvii/nvplayerview/NVVideoTextureView;Landroid/graphics/SurfaceTexture;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoTextureView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, p3}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
