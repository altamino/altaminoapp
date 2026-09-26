.class public Lio/agora/rtc/video/ViERenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g_localRenderer:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/view/SurfaceView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static setLocalView(Landroid/view/SurfaceView;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "local",
            "top",
            "left",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    .line 5
    sput-object p0, Lio/agora/rtc/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    sput-object p0, Lio/agora/rtc/video/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 13
    :goto_0
    return-void
.end method
