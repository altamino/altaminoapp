.class Lcom/narvii/amino/CommunityJoinBarFragment$1;
.super Ljava/lang/Object;
.source "CommunityJoinBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/CommunityJoinBarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityJoinBarFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityJoinBarFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 90
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    invoke-interface {v0, p1}, Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;->onEnterCommunity(Lcom/narvii/model/Community;)V

    .line 98
    :cond_1
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    const-string v0, "Source"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    iget-object v3, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    iget-boolean p1, v3, Lcom/narvii/model/Community;->_isFaked:Z

    if-eqz p1, :cond_2

    .line 100
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_2
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    if-eqz v0, :cond_4

    .line 106
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    invoke-interface {v0, p1}, Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;->onJoinCommunity(Lcom/narvii/model/Community;)V

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    invoke-static {p1}, Lcom/narvii/amino/CommunityJoinBarFragment;->access$000(Lcom/narvii/amino/CommunityJoinBarFragment;)V

    :goto_0
    return-void
.end method
