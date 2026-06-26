.class Lcom/narvii/chat/rtc/RtcService$20;
.super Ljava/lang/Object;
.source "RtcService.java"

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

    .line 1899
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$20;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$errorCode:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$wsError:Lcom/narvii/util/ws/WsError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V
    .locals 2

    .line 1902
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$errorCode:I

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$20;->val$wsError:Lcom/narvii/util/ws/WsError;

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/video/events/LiveChannelErrorListener;->onLiveChannelError(ILcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1899
    check-cast p1, Lcom/narvii/chat/video/events/LiveChannelErrorListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$20;->call(Lcom/narvii/chat/video/events/LiveChannelErrorListener;)V

    return-void
.end method
