.class Lcom/narvii/amino/CommunityJoinBarFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 10
    .line 11
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;->onEnterCommunity(Lcom/narvii/model/Community;)V

    .line 29
    .line 30
    :cond_1
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 33
    .line 34
    const-string v0, "Source"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p1, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 46
    .line 47
    iget-boolean p1, v3, Lcom/narvii/model/Community;->_isFaked:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 77
    .line 78
    iget-object v0, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object p1, p1, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p1}, Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;->onJoinCommunity(Lcom/narvii/model/Community;)V

    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment$1;->this$0:Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/narvii/amino/CommunityJoinBarFragment;->n(Lcom/narvii/amino/CommunityJoinBarFragment;)V

    .line 91
    :goto_0
    return-void
.end method
