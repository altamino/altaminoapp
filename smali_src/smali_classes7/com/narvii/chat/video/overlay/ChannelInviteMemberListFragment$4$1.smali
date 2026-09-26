.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->u(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    :cond_0
    return-void
.end method
