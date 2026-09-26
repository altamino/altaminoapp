.class Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;
.super Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/GLTextureView;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/GLTextureView;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "withDepthBuffer"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;->this$0:Lio/agora/rtc/video/GLTextureView;

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/16 v4, 0x8

    .line 9
    const/4 v5, 0x0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/16 p2, 0x10

    .line 14
    :goto_0
    move v6, p2

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    const/4 v7, 0x0

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;-><init>(Lio/agora/rtc/video/GLTextureView;IIIIII)V

    .line 24
    return-void
.end method
