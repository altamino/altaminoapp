.class Lio/agora/rtc/mediaio/BaseVideoRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame([BIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$buffer"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->val$buffer:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->val$buffer:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->access$000(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    .line 8
    return-void
.end method
