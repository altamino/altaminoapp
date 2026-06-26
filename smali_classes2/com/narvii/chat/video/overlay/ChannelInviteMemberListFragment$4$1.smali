.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;
.super Ljava/lang/Object;
.source "ChannelInviteMemberListFragment.java"

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

    .line 532
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4$1;->this$1:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$4;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->access$200(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
