.class Lcom/narvii/prefs/SettingsFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field ACCOUNTPROFILE:Lcom/narvii/util/Tag;

.field COPYRIGHT:Lcom/narvii/util/Tag;

.field ClUB:Lcom/narvii/util/Tag;

.field LOGIN:Lcom/narvii/util/Tag;

.field LOGOUT:Lcom/narvii/util/Tag;

.field MEMBERSHIP:Lcom/narvii/util/Tag;

.field WALLET:Lcom/narvii/util/Tag;

.field copyrightHit:I

.field copyrightTime:J

.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 1

    .line 361
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 362
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 339
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "accountProfile"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    .line 340
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "membership"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    .line 341
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "club"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ClUB:Lcom/narvii/util/Tag;

    .line 342
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "wallet"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    .line 343
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "logout"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 344
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "login"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    .line 345
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "copyright"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    .line 363
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 376
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "config"

    .line 377
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 378
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    .line 383
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x64

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v3}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    const v6, 0x7f0f0027

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v1, v1, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isPremiumFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_2
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    const v6, 0x7f0f0731

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    .line 405
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v1}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    move-result v1

    if-nez v1, :cond_3

    .line 406
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0e48

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 407
    const-class v6, Lcom/narvii/account/PushSettingListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 408
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v1}, Lcom/narvii/prefs/SettingsFragment;->isCommunityLevel()Z

    move-result v1

    if-nez v1, :cond_5

    .line 413
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0e15

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 414
    const-class v6, Lcom/narvii/user/list/BlockedListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f00f9

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 418
    const-class v7, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v7}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 419
    iget-object v7, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v8, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v6, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    const-string v7, "privilegeOfChatInviteRequest"

    const-string v8, "privilegeKey"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 422
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    const/high16 v6, -0x10000

    goto :goto_2

    :cond_4
    const v6, -0x7f000001

    :goto_2
    iput v6, v1, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    .line 423
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_5
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v6, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const v7, 0x7f0f0e19

    invoke-virtual {v6, v7}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v7, v6}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 427
    iget-object v6, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v6, v6, Lcom/narvii/prefs/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "returnToSendChat"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 428
    iget-object v6, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v6, v6, Lcom/narvii/prefs/SettingsFragment;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 429
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_6
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0f96

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 433
    const-class v6, Lcom/narvii/master/setting/LanguageSettingFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 434
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_7

    .line 438
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    const v6, 0x7f0f0bca

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 440
    :cond_7
    new-instance v1, Lcom/narvii/list/prefs/PrefsSection;

    const v6, 0x7f0f0788

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_3
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v6, 0x7f0f0f93

    invoke-direct {v1, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 444
    const-class v6, Lcom/narvii/announcement/AnnouncementListFragment;

    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 445
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDevOptions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 483
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0396

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 484
    const-class v1, Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 485
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .line 493
    :cond_8
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->debugPrefsHelper:Lcom/narvii/util/debug/DebugPrefsHelper;

    if-eqz v0, :cond_9

    .line 494
    invoke-virtual {v0, p1}, Lcom/narvii/util/debug/DebugPrefsHelper;->addCells(Ljava/util/List;)V

    :cond_9
    if-eqz v3, :cond_a

    .line 498
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v1, 0x7f0f0f97

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 507
    const-class v1, Lcom/narvii/prefs/StorageFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 508
    iput-boolean v5, v0, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    .line 509
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_a
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_b

    .line 515
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 517
    :cond_b
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_4
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 525
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const p1, 0x7f0b05b6

    .line 527
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090118

    .line 528
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result p3

    invoke-static {p3}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    const p1, 0x7f0b05ae

    .line 531
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090a97

    .line 532
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f090562

    .line 533
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 534
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    const v1, -0x2ffde5

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f080083

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "#40000000"

    .line 536
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 537
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0f0b82

    .line 538
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, -0xd6296e

    .line 539
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 541
    :cond_1
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    move-result p3

    if-nez p3, :cond_2

    const p3, 0x7f0f0b87

    .line 543
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    if-ne p3, v3, :cond_3

    const p3, 0x7f0f0b88

    .line 545
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    if-lez p3, :cond_4

    const/16 v0, 0xe

    if-gt p3, v0, :cond_4

    .line 547
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const v2, 0x7f0f0b89

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    invoke-virtual {p3, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 556
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p3, p3, Lcom/narvii/prefs/SettingsFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p3}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result p3

    if-ltz p3, :cond_6

    const p3, 0x7f0f0b83

    .line 558
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 559
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_6
    const p3, 0x7f0f0b8b

    .line 561
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, -0x818182

    .line 562
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p1

    .line 566
    :cond_7
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_8

    const p1, 0x7f0b05ac

    .line 567
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906a7

    .line 568
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0046

    .line 569
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 570
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 574
    :cond_8
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_9

    const p1, 0x7f0b05ab

    .line 575
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906a4

    .line 576
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0043

    .line 577
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 578
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 583
    :cond_9
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_a

    const p1, 0x7f0b05a6

    .line 584
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const v0, 0x7f0f114e

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->version:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p3, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const v0, 0x7f0f02f8

    .line 586
    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    const v0, 0x7f0f02f7

    .line 587
    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 588
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 591
    :cond_a
    iget-object v1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_10

    const p1, 0x7f0b05a4

    .line 593
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 594
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 595
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    const p3, 0x7f0900e4

    .line 597
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090764

    .line 598
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_b

    move-object v1, v2

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_c

    goto :goto_3

    .line 600
    :cond_c
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p3, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 601
    invoke-virtual {p3, v4}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 602
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p2, p2, Lcom/narvii/prefs/SettingsFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getSecurityLevel()I

    move-result p2

    if-eq p2, v3, :cond_e

    const/4 p3, 0x3

    if-eq p2, p3, :cond_d

    goto :goto_4

    :cond_d
    const v4, 0x7f0804d5

    goto :goto_4

    :cond_e
    const v4, 0x7f0804d6

    :goto_4
    if-eqz v4, :cond_f

    const p2, 0x7f090028

    .line 614
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-object p1

    .line 619
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 352
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 625
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->WALLET:Lcom/narvii/util/Tag;

    const-string v1, "Settings"

    const-string v2, "Source"

    const/4 v3, 0x1

    if-ne p3, v0, :cond_0

    .line 626
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 627
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->MEMBERSHIP:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_1

    .line 632
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->ACCOUNTPROFILE:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_2

    .line 638
    const-class p1, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 639
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_3

    .line 643
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->logout()V

    return v3

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGIN:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_4

    .line 647
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p1}, Lcom/narvii/prefs/SettingsFragment;->login()V

    return v3

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->COPYRIGHT:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_7

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 652
    iget-wide v0, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightTime:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x7d0

    const/4 p3, 0x0

    cmp-long p5, v0, v4

    if-lez p5, :cond_5

    .line 653
    iput-wide p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightTime:J

    .line 654
    iput p3, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    goto :goto_0

    .line 656
    :cond_5
    iget p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    .line 657
    iget p1, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->copyrightHit:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    const-string p1, "/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAUAAA/+4ADkFkb2JlAGTAAAAAAf/bAIQAAgICAgICAgICAgMCAgIDBAMCAgMEBQQEBAQEBQYFBQUFBQUGBgcHCAcHBgkJCgoJCQwMDAwMDAwMDAwMDAwMDAEDAwMFBAUJBgYJDQsJCw0PDg4ODg8PDAwMDAwPDwwMDAwMDA8MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAQABAAwERAAIRAQMRAf/EAIQAAAICAgMBAAAAAAAAAAAAAAcIBQYDBAEJCgIBAAMBAQEAAAAAAAAAAAAAAAECAwAEBRAAAQMDAwMDAQcDBQEAAAAAAQIDBBEFBiESBwAxE0EiCAlRcaEyIxQWgVIV8GGRYkMkEQACAgIDAQEBAQAAAAAAAAAAARECITFBEgNRE2GB/9oADAMBAAIRAxEAPwA1Y9hxUhsNMj091Og3B6DZepsO0YvGbkXVyjjukeGgAuOEfYOwH+506523Yna6PvAciVmKJRt+KSm2o61IRJW4ks7kKSKLXtG0kKJ0B7dB0jkn+oSv4hfpCquT4sBBT7WY0byrSqo7uOqorTTRA60IpX1wYXcKvjaasXSPK91S3KiBIIrqAplSSNOxoeg0K/RoF+ef5nGWTKcxgPMpQ4tyQh6rKimtEpUE7gSAD7h6+vRWeTfoVrGpdgziGVw6xZzaErl2x6nkbrUV00UkkHUfgetbtUpS5WMr47eS064yyl1BrVFPw6t5+iezpqNdZrKhplBS2NAOlak4fQF8zELtknJ0mFdVONW2KgPsuVqlMFISP09TQrWSOw1r3ppsVRBsYWxrwiyRo9ktt1s1vbiDY1bUTI6HAfWqCvcVE6kkVJ6XL2Bk1MyDEbW+I92yaz2uQUBwMTZ8aOsoUNFbXXEmh9D0EnwDtBhbyXDJTzkaHldklvtNF5xmPcIri0NAVLikocJCQO5Ip0WmbsUm58hcRTBJs0zkPEZH7pJYkW5d5t5UrcKFJQXqmv2dK6N8BkX0caJtXIEH+OymxaHYplW6ch3ch2LVwKbCwClwpWpIFD2oehX14Zaj+l+mRpbaFtSGqqp+pp39Cf6kdUdEdNdhztMJJQ2CQlJpVR9Or9IOL0vJ5rflx8peYuReSMrx2eq78ZY9Z5JtjnH7El9hRMQlHlmK2srcLv5wkjYARQH8xKokJMlyxHi/j3H/AIwcgcnZlikK65FacEiKtM+V5C7/ACHNLu4i0rBStNVQ7bCD6B2/WJIPRbYk5gr/ANOybJvHyownF7rj9szWx5fFnQckg36AxdEtxIkN6S2+0qUhwtKZW0mhSRoSk6HrPWzW0Rv1CXVWr5S5/i8DGrViFgxFuFAx212W3x7c0uG/EalKfcEZtvyqeW6pRUqulEjQdZNxMmpoIOQ8dYRxj8Scvye+4faJOZ3FnGcEx24y4ja5TV6uSFZLe5SFqFQ7GiSmIgUNUbCnToNv6ZOWBH4l8s8z4pyfimMcbGRlLV9miM5gcp1xyA6hwFLz6UeRAZU03uXvSpPb3VGnS3orrJROD0q32xuthYSsOOtp9rhFPKipoT/26jTGGdFPQIFvA2tMjVawOu6Dks8HS/8AUO+JWT5Jk925rwq3yLuYEtuDyZbYTLkiVFgrQhyHdkMNhTjraG1KbdCASnYk0pu2hqRK2jBht2A2P5XYPgPA3EWaW5hm+5ZdMz5JmBK1PWayY/Hax7GYL8chJD7kJjzBtRAB3E66HOsbF7Q5DLyDxJxn9MjELPzBg2M3/kXPMklHFF5BNntxY8ND7RkOqWRGeDXn8OxIQgKOo3j1CrIOzs4NniTjziP6mFqvnLvI2A3jCc0wy4xcfevMK5B+LcGWkfukMCjDHkS0lexW9JWApPvPpmoB2dXAr31KsRyvDXuGuG4EGVebel7Jsvk3SEytf+VvF+uZW4UsNpJSWGQhpCNaJoAT0qrOR/N/QtfT7+IWU8cyIvMXKViesGRZM+xa8BxmcktTY8Mkypk6QypJU0pxDIQ2hQCgkqJ27k9ZrA7sdv15YbdYW2aIWnVlfqkjqbrJWorOW8l5OxIyGPZJy7S3blGOw+xtLiikpStRWUmnrok6ffp12uCN0WThzM7yzkqnpjz9yYu0dty7K3qccQlDCF+c7lE0b9xIGu0nT7Q0oOdzI1T9jx+A5Cy6z2eCy9CfMudNt8Zlt2VGcaW24pa2kBTu1K94BJ7dT/gWbOZxMByvHJ2MZpbrbllkyKOonG5UZNxRNbTqlaIwSsrCTQhQHtOtR0IfAGyN4sx7C8ExS0YNiePwsMi2dmhxmLEEBKXVDc64lv8A9Co6qWFLr6qPWa5NUlrWiPdLndsga2ORJHii22R33oi+Te8hRSKJUpZAIJBAr0tkMK5zFk8i5Xe0ogrIsTaFu2qWhZCZLyFradeR7hUJKaJVtVp7gU1r01VCHQIbTyhlFuyZ2FKurtwtAkxGHIclXkCEPKCFKStVSmla96dGFB010W/krA7oy/erzb4rk+BemvMpLKS4tp5KAChQAKqHbVPprTT1ZMjc1eC7giDmmONPuBsvspj0VpRRZfa20Pb3JpSg+716NtEWE75Tcm5P8buD8y5X49iQLi/ZZ1ucl4zd0OuQtk2a3HkOM+FxtbRPlqQCU11p9qYexauXAieKfVc4aexuffbzx5kGC8k26GsRLbZBGn226LWU1YL7niLaN3uHkb9uu1ROhGx35swS/qz8WTsSN4vPGd8yXOhIdRbsQkqiMWuIhCU+OQqYPIarNahLalilKgU63+m/NjWfCj5C5r8tMBznLc1g2rHbZZsmVZrbjdibebSYf7Nl7xyH3XVqWKuEVSEV+7ToOFozq0y989PRkXvH7XFQ2w1brdXwt0SlCXHFJbRtBSAKI0H/AAOmoOtgFxvCLnfswlPqiPs25l+JJenKSpCNjRCyELpqo6U2kH1rTotwWShDp2eahQS5SuymtddOkEshWsvgu4nncwMEMsoWJ8F1CtoS3IecdToFaUKyPStOyj2qskbVgvPOFpV8o/jvyTxZjF2iWvMLxBi/pzd7bCJEaTHkhSihK1eJzYRuSDQ6HqbXV5E05EGwP6QVpdxu4vZ/y/JVk8iMtFrbsEFCYEOQfyuPGUS7ISn1SA1X7ehK+FO7eian/SAwr+MMxLfzDekZi3vcdvb1tjqtzoUfY2YSXQ6gJp+YPkmv5ejK+GV3I43w74HnfEnh3KMWzDIrbe35OQzb69d7e2600Yyo7DLSCl8JV5KMk07a0BPStpvAXnJScgyt7MciXfHGR/8AYEJjMJNVNshxxDTZII1pQdxU/wB3bp4gai5GebjJt9jt8ErO6FFbaURWlUp1p/XpJOiqkruN3RRbQpboA9Env0JBepHchWW3ZFZJU8rbYvGOx1vxJblAHIld621E66FJpqKHvoSOt2hkWpFWg5TcrTkkmVaJ7tsmqixvFIaVRRG5tJbUKEKSqtCkpVX0T1RuReuBlcW+Q8Rq325m9Wtb02aFBcmItIQVtj3FSHKFJJ0oPw7dBVAqwb93+RtrYt78uBZHHnUeNDKXXkgErJ1UGwrt9gP30PW6jdQKZRyfeck/e/5N4uw2Q+I0BobWEFJWAdtNSQNSVKP3dDWhjjhS1x7q+zepLyfFZWgpuESnd5nHnFJVtIJCKA1ptqf7hXpL2Y6Qwl0uYLatq6d/9HpU8HTRH//Z"

    .line 660
    :try_start_0
    invoke-static {p1, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 661
    array-length p2, p1

    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 662
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p5, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p5}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-direct {p2, p5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 663
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p5

    invoke-virtual {p2, p3, p3, p1, p5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 664
    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, p2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 665
    new-instance p2, Landroid/text/SpannableString;

    const-string p5, "Modded by discared and romanok"

    invoke-direct {p2, p5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p5

    sub-int/2addr p5, v3

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const p1, 0x7f0902ea

    .line 667
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return v3

    .line 674
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 679
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsEntry;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/narvii/list/prefs/PrefsEntry;

    iget v0, v0, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v1, 0x7f0f0e16

    if-ne v0, v1, :cond_1

    .line 680
    const-class p1, Lcom/narvii/util/diagnosis/DiagnosisFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 681
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-boolean p2, p2, Lcom/narvii/prefs/SettingsFragment;->abted:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const-string p2, "showExtras"

    .line 682
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return p3

    .line 687
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 370
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 371
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
