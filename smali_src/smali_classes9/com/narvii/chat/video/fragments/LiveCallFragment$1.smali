.class Lcom/narvii/chat/video/fragments/LiveCallFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInviteButtonClicked()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    iget v3, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->x(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->w(Lcom/narvii/chat/video/fragments/LiveCallFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->onInviteButtonClicked()V

    .line 24
    return-void
.end method

.method public onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->y(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    .line 7
    return-void
.end method
