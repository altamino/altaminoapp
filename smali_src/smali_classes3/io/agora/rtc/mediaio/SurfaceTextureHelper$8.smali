.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->dispose()V
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
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

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
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$802(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$700(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$900(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    .line 20
    :cond_0
    return-void
.end method
