.class public Lcom/narvii/nvplayerview/NVVideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public addSurfaceListener(Lcom/narvii/nvplayerview/ISurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1, p3, p4}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceSizeChanged(Landroid/view/Surface;II)V

    .line 12
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceCreated(Landroid/view/Surface;)V

    .line 14
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surfaceListener:Lcom/narvii/nvplayerview/ISurfaceListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/ISurfaceListener;->surfaceDestroyed(Landroid/view/Surface;)V

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoSurfaceView;->surface:Landroid/view/Surface;

    .line 15
    return-void
.end method
