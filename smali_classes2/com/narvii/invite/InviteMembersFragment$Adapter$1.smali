.class Lcom/narvii/invite/InviteMembersFragment$Adapter$1;
.super Landroid/os/CountDownTimer;
.source "InviteMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteMembersFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

.field final synthetic val$countDown:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;JJLandroid/widget/TextView;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iput-object p6, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->val$countDown:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->val$countDown:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v2, v2, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    invoke-static {v0, v1, v2}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->access$200(Lcom/narvii/invite/InviteMembersFragment$Adapter;Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object p2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$1;->val$countDown:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    iget-object v0, v0, Lcom/narvii/invite/NewInvitationResponse;->communityInvitation:Lcom/narvii/invite/Invitation;

    invoke-static {p1, p2, v0}, Lcom/narvii/invite/InviteMembersFragment$Adapter;->access$200(Lcom/narvii/invite/InviteMembersFragment$Adapter;Landroid/widget/TextView;Lcom/narvii/invite/Invitation;)V

    return-void
.end method
