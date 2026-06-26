.class Lcom/narvii/chat/rtc/RtcService$8;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/rtc/RtcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$1000(Lcom/narvii/chat/rtc/RtcService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    :cond_0
    return-void
.end method
