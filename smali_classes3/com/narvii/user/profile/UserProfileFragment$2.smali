.class Lcom/narvii/user/profile/UserProfileFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "UserProfileFragment.java"


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

    .line 441
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$000(Lcom/narvii/user/profile/UserProfileFragment;)V

    goto/16 :goto_0

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, "id"

    .line 447
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 448
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$100(Lcom/narvii/user/profile/UserProfileFragment;)V

    goto/16 :goto_0

    .line 450
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "cid"

    .line 451
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 452
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->onSteakRepairSuccessed()V

    .line 453
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 454
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.WALLET_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 458
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 459
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.PRIVACY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 462
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_4

    .line 465
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p2}, Lcom/narvii/user/profile/UserProfileFragment;->access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getVisitorPrivacyMode()I

    move-result p2

    .line 466
    iget v0, p1, Lcom/narvii/model/User;->visitPrivacy:I

    if-eq v0, p2, :cond_4

    .line 467
    iput p2, p1, Lcom/narvii/model/User;->visitPrivacy:I

    .line 468
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$2;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    :cond_4
    :goto_0
    return-void
.end method
