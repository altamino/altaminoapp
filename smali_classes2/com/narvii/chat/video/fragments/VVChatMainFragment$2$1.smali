.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/video/model/ChannelActionCallback<",
        "Lcom/narvii/video/model/ChannelActionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/video/model/ChannelActionResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 620
    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 622
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    iget-object v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;

    iget-object v1, v1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 617
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;->call(Lcom/narvii/video/model/ChannelActionResult;)V

    return-void
.end method
