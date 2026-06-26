.class Lcom/narvii/master/CommunityDetailFragment$4;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->sendInviteCodeRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdentifyError(Ljava/lang/String;)V
    .locals 1

    .line 575
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$302(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    return-void
.end method

.method public onIdentifySuccess(Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$302(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 548
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$402(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-boolean v1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$502(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 553
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$500(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v0, "affiliations"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 555
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v0, v0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "loginAhead"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "autoJoin"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 560
    :cond_2
    sget-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    :goto_0
    if-eqz v0, :cond_4

    .line 562
    invoke-virtual {v0}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 564
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v2, v2, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 565
    iget-object v2, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "community"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object p1, p1, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitation:Lcom/narvii/master/invitation/Invitation;

    if-eqz p1, :cond_5

    .line 567
    iget-object p1, p1, Lcom/narvii/master/invitation/Invitation;->author:Lcom/narvii/model/User;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "inviter"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$4;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
