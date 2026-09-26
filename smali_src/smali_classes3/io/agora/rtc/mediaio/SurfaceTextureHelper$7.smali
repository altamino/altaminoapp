.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$702(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$800(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$900(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$600(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 26
    :goto_0
    return-void
.end method
