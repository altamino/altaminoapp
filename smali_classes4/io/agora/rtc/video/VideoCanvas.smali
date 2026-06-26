.class public Lio/agora/rtc/video/VideoCanvas;
.super Ljava/lang/Object;
.source "VideoCanvas.java"


# static fields
.field public static final RENDER_MODE_ADAPTIVE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RENDER_MODE_FIT:I = 0x2

.field public static final RENDER_MODE_HIDDEN:I = 0x1


# instance fields
.field public renderMode:I

.field public uid:I

.field public view:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/SurfaceView;

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/SurfaceView;

    .line 49
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 50
    iput p3, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    return-void
.end method
