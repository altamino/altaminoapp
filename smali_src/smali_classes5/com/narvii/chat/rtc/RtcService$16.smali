.class Lcom/narvii/chat/rtc/RtcService$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchChannelException(Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/LiveChannelErrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$errorCode:I

.field final synthetic val$wsError:Lcom/narvii/util/ws/WsError;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;ILcom/narvii/util/ws/WsError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$16;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$16;->val$errorCode:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$16;->val$wsError:Lcom/narvii/util/ws/WsError;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 2

    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$16;->val$errorCode:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$16;->val$wsError:Lcom/narvii/util/ws/WsError;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/LiveChannelErrorListener;->onLiveChannelError(ILcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/video/events/LiveChannelErrorListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$16;->call(Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    return-void
.end method
