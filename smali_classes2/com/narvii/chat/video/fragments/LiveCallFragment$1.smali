.class Lcom/narvii/chat/video/fragments/LiveCallFragment$1;
.super Ljava/lang/Object;
.source "LiveCallFragment.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInviteButtonClicked()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    new-instance v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    iget-object v2, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget v3, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;I)V

    invoke-static {v0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->access$102(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->access$100(Lcom/narvii/chat/video/fragments/LiveCallFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->onInviteButtonClicked()V

    return-void
.end method

.method public onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->access$000(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    return-void
.end method
