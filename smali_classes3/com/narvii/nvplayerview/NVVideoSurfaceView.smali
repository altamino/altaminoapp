.class public Lcom/narvii/nvplayerview/NVVideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "NVVideoSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/narvii/nvplayerview/IRenderView;


# instance fields
.field private surface:Landroid/view/Surface;

.field private surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 38
    iget-object p2, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz p2, :cond_0

    .line 39
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 30
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    .line 31
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceCreated(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceDestroyed(Landroid/view/Surface;)V

    :cond_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    return-void
.end method
