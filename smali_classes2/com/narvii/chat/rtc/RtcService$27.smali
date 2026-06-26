.class Lcom/narvii/chat/rtc/RtcService$27;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchNetworkStatusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;I)V
    .locals 0

    .line 2062
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$27;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$27;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V
    .locals 1

    .line 2065
    iget v0, p0, Lcom/narvii/chat/rtc/RtcService$27;->val$status:I

    invoke-interface {p1, v0}, Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;->onNetworkStatusUpdated(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2062
    check-cast p1, Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$27;->call(Lcom/narvii/chat/video/events/MyNetworkStatusChangeListener;)V

    return-void
.end method
