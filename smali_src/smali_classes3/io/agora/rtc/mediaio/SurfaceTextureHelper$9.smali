.class Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureToYuv(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

.field final synthetic val$result:[Lio/agora/rtc/gl/VideoFrame$I420Buffer;

.field final synthetic val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;[Lio/agora/rtc/gl/VideoFrame$I420Buffer;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$textureBuffer",
            "val$result"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->val$result:[Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$1000(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/gl/YuvConverter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 11
    .line 12
    new-instance v1, Lio/agora/rtc/gl/YuvConverter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lio/agora/rtc/gl/YuvConverter;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$1002(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Lio/agora/rtc/gl/YuvConverter;)Lio/agora/rtc/gl/YuvConverter;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->val$result:[Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 21
    .line 22
    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$1000(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Lio/agora/rtc/gl/YuvConverter;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$9;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lio/agora/rtc/gl/YuvConverter;->convert(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    aput-object v1, v0, v2

    .line 36
    return-void
.end method
