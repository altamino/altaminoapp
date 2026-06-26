.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$receiver$1\n*L\n1#1,1015:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 123
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 125
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setUid(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-static {p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setUser(Lcom/narvii/model/User;)V

    .line 130
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    if-eqz p1, :cond_2

    const v1, 0x7f0900e4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    const v1, 0x7f0807ec

    if-eqz p1, :cond_3

    .line 131
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    if-eqz p1, :cond_4

    .line 132
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 135
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 136
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    .line 141
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.COUPONS_CHANGED"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 143
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMembershipView()V

    .line 144
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$updateMenu(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 147
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 148
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getMembershipService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 152
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 153
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    :goto_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$isUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_a

    .line 155
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    .line 157
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 160
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.PRIVACY_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 161
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getVisitorPrivacyMode()I

    move-result p1

    .line 162
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 163
    iget v0, p2, Lcom/narvii/model/User;->visitPrivacy:I

    if-eq v0, p1, :cond_b

    .line 164
    iput p1, p2, Lcom/narvii/model/User;->visitPrivacy:I

    .line 165
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    :cond_b
    return-void
.end method
