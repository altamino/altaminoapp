.class Lcom/narvii/chat/rtc/RtcService$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

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
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->p(Lcom/narvii/chat/rtc/RtcService;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$8;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 19
    :cond_0
    return-void
.end method
