.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "ChannelInviteMemberListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InviteNewUSerListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 493
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->access$000(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b05f3

    .line 503
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteNewUSerListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->inviteMembers()V

    .line 513
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
