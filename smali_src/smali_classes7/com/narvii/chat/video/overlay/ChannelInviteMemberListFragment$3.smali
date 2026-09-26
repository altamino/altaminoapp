.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$3;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 10
    return-void
.end method
