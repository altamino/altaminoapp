.class Lcom/narvii/user/profile/UserProfileFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->K(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string p1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "id"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result p2

    .line 46
    .line 47
    if-ne p1, p2, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->G(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    const-string p1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const-string p1, "cid"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    move-result p1

    .line 72
    .line 73
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 79
    move-result p2

    .line 80
    .line 81
    if-ne p1, p2, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->onSteakRepairSuccessed()V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    const/4 p2, 0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 123
    :cond_3
    :goto_0
    return-void
.end method
