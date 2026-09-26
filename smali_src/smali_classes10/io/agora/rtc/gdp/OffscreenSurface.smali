.class public Lio/agora/rtc/gdp/OffscreenSurface;
.super Lio/agora/rtc/gdp/EglSurfaceBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/agora/rtc/gdp/EglCore;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglCore",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/gdp/EglSurfaceBase;-><init>(Lio/agora/rtc/gdp/EglCore;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lio/agora/rtc/gdp/EglSurfaceBase;->createOffscreenSurface(II)V

    .line 7
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->releaseEglSurface()V

    .line 4
    return-void
.end method
