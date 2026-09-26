.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;
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
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Setting listener to "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "SurfaceTextureHelper"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$200(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$302(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 38
    .line 39
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$202(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 44
    .line 45
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$400(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$500(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 57
    .line 58
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$3;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$402(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 63
    :cond_0
    return-void
.end method
