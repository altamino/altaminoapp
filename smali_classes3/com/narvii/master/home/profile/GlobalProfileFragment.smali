.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/master/MasterTopBarAvailable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1015:1\n1313#2:1016\n1382#2,3:1017\n1313#2:1020\n1382#2,3:1021\n1313#2:1024\n1382#2,3:1025\n*E\n*S KotlinDebug\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment\n*L\n837#1:1016\n837#1,3:1017\n837#1:1020\n837#1,3:1021\n837#1:1024\n837#1,3:1025\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;

.field public static final KEY_SHOW_SETTING:Ljava/lang/String; = "show_setting"

.field public static final KEY_UID:Ljava/lang/String; = "id"

.field public static final KEY_USER:Ljava/lang/String; = "user"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field public backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

.field private balanceView:Lcom/narvii/widget/WalletBalanceView;

.field public bodyContentView:Landroid/view/View;

.field private commentTabIndex:I

.field private contentView:Landroid/view/View;

.field public disablePage:Landroid/view/View;

.field private filterHelper:Lcom/narvii/util/FilterHelper;

.field private followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

.field private final fragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private isMyProfilePage:Z

.field private isSendingFollow:Z

.field private isUserBlocked:Ljava/lang/Boolean;

.field public loginPage:Landroid/view/View;

.field public mainPage:Landroid/view/View;

.field public membershipHint:Landroid/widget/TextView;

.field public membershipLayout:Landroid/view/View;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private moreView:Landroid/view/View;

.field private performFollowAnimation:Z

.field public profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

.field private final receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

.field private final recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

.field private settingsView:Landroid/view/View;

.field private shareView:Landroid/view/View;

.field public systemUserPage:Landroid/view/View;

.field private topAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field private uid:Ljava/lang/String;

.field private user:Lcom/narvii/model/User;

.field private userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->Companion:Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 172
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$recentVisitorListener$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    return-void
.end method

.method public static final synthetic access$blockUser(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(Z)V

    return-void
.end method

.method public static final synthetic access$blockUser(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V

    return-void
.end method

.method public static final synthetic access$getCommentTabIndex$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    return p0
.end method

.method public static final synthetic access$getContentView$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->contentView:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contentView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getFollowNotificationHelper$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/user/follow/FollowNotificationHelper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "followNotificationHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getFragmentsList$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMembershipService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method public static final synthetic access$getPerformFollowAnimation$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    return p0
.end method

.method public static final synthetic access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "userBlockService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$isSendingFollow$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isSendingFollow:Z

    return p0
.end method

.method public static final synthetic access$isUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$openChatRoom(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->openChatRoom()V

    return-void
.end method

.method public static final synthetic access$setCommentTabIndex$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    return-void
.end method

.method public static final synthetic access$setContentView$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->contentView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setFollowNotificationHelper$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/user/follow/FollowNotificationHelper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    return-void
.end method

.method public static final synthetic access$setMembershipService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/wallet/MembershipService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method

.method public static final synthetic access$setPerformFollowAnimation$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    return-void
.end method

.method public static final synthetic access$setSendingFollow$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isSendingFollow:Z

    return-void
.end method

.method public static final synthetic access$setUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/userblock/UserBlockService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    return-void
.end method

.method public static final synthetic access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$startEditBio(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->startEditBio()V

    return-void
.end method

.method public static final synthetic access$updateMenu(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMenu()V

    return-void
.end method

.method private final blockUser(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V

    return-void
.end method

.method private final blockUser(ZZ)V
    .locals 2

    if-nez p2, :cond_1

    .line 297
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0f10fd

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0169

    .line 298
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f02ee

    .line 299
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 300
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 303
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 312
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    if-eqz p1, :cond_2

    .line 314
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    goto :goto_1

    .line 316
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 318
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/block/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 319
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 320
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method private final initFakeActionBar(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09004d

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    const-string v2, "backView"

    if-eqz v1, :cond_0

    .line 489
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .line 493
    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f090cf4

    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 497
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    if-eqz v0, :cond_2

    .line 498
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 499
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    :cond_2
    const v0, 0x7f090a3e

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->shareView:Landroid/view/View;

    .line 503
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->shareView:Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f090730

    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->moreView:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->moreView:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$4;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f090a1a

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    .line 542
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$5;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$5;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method private final openChatRoom()V
    .locals 4

    .line 1009
    new-instance v0, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1010
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1011
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1012
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1013
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showMultiTab()Z
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getShowTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final startEditBio()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 326
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    new-instance v2, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-direct {v2, v0}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 329
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userProfile"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "bio"

    .line 331
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "supportImage"

    .line 332
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v2, "Edit Bio"

    .line 333
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "loggingSource"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final updateBackground(Lcom/narvii/model/User;)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/image/BackgroundSource;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    return-void

    :cond_0
    const-string p1, "backgroundView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final updateMenu()V
    .locals 6

    .line 555
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 557
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->shareView:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/narvii/model/User;->status:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/narvii/model/User;->status:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    move-result v4

    if-eq v4, v3, :cond_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_6
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    if-eqz v0, :cond_b

    const-string v4, "show_setting"

    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_7
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-nez v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    move-result v4

    if-eq v4, v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x8

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->moreView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    move-result v4

    if-eq v4, v3, :cond_d

    goto :goto_4

    :cond_c
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    const/16 v1, 0x8

    :cond_e
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private final updateTabCount()V
    .locals 12

    .line 796
    sget-object v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;->INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;

    .line 806
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 807
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "filterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v0, 0x0

    .line 809
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 810
    invoke-virtual {v4}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_a

    .line 811
    invoke-virtual {v4, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090b41

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 812
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/narvii/app/NVScrollablePagerAdapter;->getTabs()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_3

    .line 813
    iget-object v8, v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    move-object v8, v3

    .line 814
    :goto_3
    const-class v9, Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "tabInfo.title"

    const-string v11, "tv"

    if-eqz v9, :cond_6

    sget-object v8, Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;->INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v9, :cond_5

    iget v9, v9, Lcom/narvii/model/User;->storiesCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v3

    :goto_4
    invoke-virtual {v8, v6, v7, v9}, Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;->invoke(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 815
    :cond_6
    const-class v9, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;->INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    move-object v9, v2

    goto :goto_5

    :cond_7
    iget-object v9, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v9, :cond_8

    iget v9, v9, Lcom/narvii/model/User;->commentsCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_8
    move-object v9, v3

    :goto_5
    invoke-virtual {v8, v6, v7, v9}, Lcom/narvii/master/home/profile/GlobalProfileFragment$updateTabCount$1;->invoke(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 989
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "notLogin"

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "self"

    goto :goto_0

    :cond_1
    const-string v0, "other"

    :goto_0
    const-string v1, "status"

    .line 993
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 697
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p2, :cond_0

    .line 698
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 700
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 12

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 827
    iput v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    const v1, 0x7f0f1042

    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/narvii/master/home/story/PublishedStoryListFragment;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 829
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    new-instance v4, Lkotlin/Triple;

    invoke-direct {v4, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    const v1, 0x7f0f113e

    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 833
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    const-string v5, "uid"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v4

    const-string v5, "isMe"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 832
    new-instance v4, Lkotlin/Triple;

    invoke-direct {v4, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1017
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1018
    check-cast v3, Lkotlin/Triple;

    .line 837
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1021
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1022
    check-cast v3, Lkotlin/Triple;

    .line 837
    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1024
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1025
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1026
    check-cast v1, Lkotlin/Triple;

    .line 837
    invoke-virtual {v1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1

    .line 848
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 2

    const-string v0, "tab"

    .line 671
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    goto :goto_0

    .line 674
    :cond_0
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final follow(Z)V
    .locals 13

    .line 877
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isSendingFollow:Z

    if-eqz v0, :cond_0

    return-void

    .line 880
    :cond_0
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 886
    iget-object v8, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v8, :cond_6

    .line 888
    iget v1, v8, Lcom/narvii/model/User;->followingStatus:I

    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v1, "id"

    const-string v3, "/user-profile/"

    const-string v4, "FollowIcon"

    if-eqz v2, :cond_5

    if-nez p1, :cond_3

    .line 891
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f1145

    .line 892
    invoke-virtual {v1, v2, v9}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 893
    new-instance v2, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 898
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    .line 901
    :cond_3
    sget-object v5, Lcom/narvii/logging/ActSemantic;->unfollow:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 902
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 904
    :cond_5
    sget-object v5, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 905
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/member"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :goto_2
    move-object v10, v1

    const-string v1, "api"

    .line 907
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/narvii/util/http/ApiService;

    .line 908
    new-instance v12, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    move-object v1, v12

    move-object v3, v8

    move-object v5, p0

    move v6, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;-><init>(ZLcom/narvii/model/User;Ljava/lang/Class;Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;)V

    invoke-virtual {v11, v10, v12}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 954
    invoke-virtual {v0, v9, v8}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->invoke(ZLcom/narvii/model/User;)V

    :cond_6
    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBackgroundView()Lcom/narvii/widget/FullscreenBackgroundView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "backgroundView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBodyContentView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bodyContentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getDisablePage()Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "disablePage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLoginPage()Landroid/view/View;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "loginPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMainPage()Landroid/view/View;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mainPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMembershipHint()Landroid/widget/TextView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "membershipHint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMembershipLayout()Landroid/view/View;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "membershipLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalUserProfile"

    return-object v0
.end method

.method public final getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "profileView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0}, Lcom/narvii/model/User;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemUserPage()Landroid/view/View;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "systemUserPage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0682

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090b41

    .line 842
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tv"

    .line 843
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    .line 844
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p1
.end method

.method public final getTopAvatar()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/narvii/model/User;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isMyProfile()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isMyProfilePage()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 6

    .line 181
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 182
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    const/4 v0, 0x0

    const-string v1, "profileView"

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    if-gez p2, :cond_7

    const/4 p1, 0x1

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float p2, p2, v2

    .line 183
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    .line 184
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 185
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 186
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_3

    float-to-double v0, p1

    const/4 p1, 0x4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 188
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    if-eqz p2, :cond_9

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 186
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_7
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 193
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 195
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void

    .line 193
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onAppBarLayoutScroll(I)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutScroll(I)V

    .line 288
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hideToolTip()V

    return-void

    :cond_0
    const-string p1, "profileView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 6

    .line 852
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 854
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    .line 855
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 857
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 860
    :cond_1
    instance-of v5, v4, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v4, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 866
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 201
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "block"

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"block\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 204
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    const-string v1, "FilterHelper(this).keepForLeaderAndCurator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 205
    new-instance v0, Lcom/narvii/user/follow/FollowNotificationHelper;

    invoke-direct {v0, p0}, Lcom/narvii/user/follow/FollowNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 206
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    const-string v1, "followNotificationHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v3}, Lcom/narvii/user/follow/FollowNotificationHelper;->setLoading(Lkotlin/jvm/functions/Function0;)V

    .line 210
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz v0, :cond_a

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$2;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v3}, Lcom/narvii/user/follow/FollowNotificationHelper;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "membership"

    .line 218
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 219
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 220
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 221
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 222
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.COUPONS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 223
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 225
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.PRIVACY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "user"

    .line 226
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    const-string v0, "id"

    .line 227
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    .line 234
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    .line 235
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 236
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_4
    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    if-nez p1, :cond_5

    .line 241
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 242
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 243
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "chatInvite"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 247
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_7

    .line 248
    new-instance p1, Lcom/narvii/util/DetailTransition;

    invoke-direct {p1}, Lcom/narvii/util/DetailTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 249
    invoke-virtual {p1, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 251
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {v1, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 255
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V

    :cond_7
    return-void

    :cond_8
    const-string p1, "userBlockService"

    .line 232
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02ab

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026rofile, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->contentView:Landroid/view/View;

    .line 351
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->contentView:Landroid/view/View;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "contentView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 584
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroy()V

    .line 585
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 586
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInstantiateItem(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 601
    instance-of v0, p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    if-eqz v0, :cond_0

    .line 602
    check-cast p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onInstantiateItem$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onInstantiateItem$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->setOnCommentToTop(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 604
    :cond_0
    instance-of p1, p1, Lcom/narvii/master/home/story/PublishedStoryListFragment;

    :goto_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 870
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "follow"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V

    .line 873
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    .line 611
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 612
    sget-object v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;->INSTANCE:Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 614
    iget-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "n.obj"

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "edit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 647
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "publishToGlobalTurnOff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v7, :cond_3

    .line 648
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/narvii/model/User;->storiesCount:I

    add-int/2addr v0, v6

    iput v0, p1, Lcom/narvii/model/User;->storiesCount:I

    .line 649
    :cond_2
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    goto/16 :goto_2

    .line 650
    :cond_3
    iget-object p1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_10

    const-string v0, "publishToGlobalTurnOn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v7, :cond_10

    .line 651
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_4

    iget v0, p1, Lcom/narvii/model/User;->storiesCount:I

    add-int/2addr v0, v7

    iput v0, p1, Lcom/narvii/model/User;->storiesCount:I

    .line 652
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "new"

    .line 614
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 629
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$1;->invoke(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_5

    iget v0, p1, Lcom/narvii/model/User;->commentsCount:I

    add-int/2addr v0, v7

    iput v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 631
    :cond_5
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    goto/16 :goto_2

    .line 632
    :cond_6
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;->invoke(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 633
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_7

    iget v0, p1, Lcom/narvii/model/User;->storiesCount:I

    add-int/2addr v0, v7

    iput v0, p1, Lcom/narvii/model/User;->storiesCount:I

    .line 634
    :cond_7
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "update"

    .line 614
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 616
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-nez v0, :cond_8

    move-object p1, v2

    :cond_8
    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_10

    .line 617
    iget v0, p1, Lcom/narvii/model/User;->ndcId:I

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 618
    iget v0, p1, Lcom/narvii/model/User;->visitorsCount:I

    if-gez v0, :cond_a

    .line 619
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/narvii/model/User;->visitorsCount:I

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    iput v0, p1, Lcom/narvii/model/User;->visitorsCount:I

    .line 621
    :cond_a
    iget v0, p1, Lcom/narvii/model/User;->visitPrivacy:I

    if-gez v0, :cond_c

    .line 622
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_b

    iget v6, v0, Lcom/narvii/model/User;->visitPrivacy:I

    :cond_b
    iput v6, p1, Lcom/narvii/model/User;->visitPrivacy:I

    .line 624
    :cond_c
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 625
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    goto :goto_2

    :sswitch_3
    const-string v2, "delete"

    .line 614
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 638
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$1;->invoke(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 639
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/narvii/model/User;->commentsCount:I

    add-int/2addr v0, v6

    iput v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 640
    :cond_d
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    goto :goto_2

    .line 641
    :cond_e
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onNotification$2;->invoke(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 642
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_f

    iget v0, p1, Lcom/narvii/model/User;->storiesCount:I

    add-int/2addr v0, v6

    iput v0, p1, Lcom/narvii/model/User;->storiesCount:I

    .line 643
    :cond_f
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    :cond_10
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        -0x31ffc737 -> :sswitch_2
        0x1a9a0 -> :sswitch_1
        0x2f6e0a -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .line 566
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 567
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V

    .line 593
    instance-of p2, p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    if-eqz p2, :cond_0

    .line 594
    move-object p2, p1

    check-cast p2, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {p2, v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    .line 596
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar(Landroid/view/View;)V

    const p2, 0x7f0908ca

    .line 357
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.profile)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 358
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    const-string v0, "profileView"

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    invoke-virtual {p2, p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setPage(Lcom/narvii/app/NVContext;)V

    .line 359
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_18

    const v2, 0x7f090c10

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_17

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$2;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setMembershipPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_16

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$3;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$3;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setAddBioPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_15

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$4;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$4;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setShowBioDetailClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_14

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$5;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$5;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setFollowClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_13

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$6;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$6;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setStartChatListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_12

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$7;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setFollowNotificationListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0906a8

    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "view.findViewById(R.id.login_page)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    .line 407
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz p2, :cond_11

    const v3, 0x7f0906a6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$8;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$8;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090362

    .line 412
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "view.findViewById(R.id.disabled_user_page)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    const p2, 0x7f090b4d

    .line 413
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "view.findViewById(R.id.team_amino_page)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    .line 414
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz p2, :cond_10

    const v3, 0x7f090b16

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$9;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b2e

    .line 420
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "view.findViewById(R.id.swipe_refresh_layout)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    const p2, 0x7f09013e

    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "view.findViewById(R.id.body_content)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    const p2, 0x7f0900fe

    .line 422
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 423
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p2, :cond_0

    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;

    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$10;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p2, v3, :cond_2

    .line 444
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v2, "profileView.findViewById\u2026(R.id.user_avatar_layout)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "avatar"

    invoke-virtual {p2, v2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_2
    :goto_0
    new-instance p2, Lcom/narvii/util/ImageCacheUtils;

    invoke-direct {p2, p0}, Lcom/narvii/util/ImageCacheUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 447
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {p2, v2}, Lcom/narvii/util/ImageCacheUtils;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 449
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v2, :cond_4

    const v3, 0x7f0900e4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 450
    iput-object p2, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 451
    iput-object p2, v2, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 449
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const p2, 0x7f0900b6

    .line 454
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p0, p2}, Lcom/narvii/nested/CoordinateTabFragment;->setAppbarLayout(Lcom/narvii/nested/NVAppBarLayout;)V

    .line 456
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 457
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz p2, :cond_e

    const v0, 0x7f0902e6

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f0906f6

    .line 459
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.membership_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    const p2, 0x7f0906f3

    .line 460
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.membership_hint)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    const-string p2, "config"

    .line 462
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d

    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    .line 463
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 464
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v0, v4, v2

    const/4 v2, 0x2

    aput v0, v4, v2

    const/4 v2, 0x3

    aput v0, v4, v2

    const/4 v0, 0x4

    const/4 v2, 0x0

    aput v2, v4, v0

    const/4 v0, 0x5

    aput v2, v4, v0

    const/4 v0, 0x6

    aput v2, v4, v0

    const/4 v0, 0x7

    aput v2, v4, v0

    invoke-direct {v3, v4, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 465
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 466
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const-string v3, "drawable.paint"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xe6

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {v3, v4, v6, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    const-string v2, "bodyContentView"

    if-eqz p2, :cond_c

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p2

    if-nez p2, :cond_7

    .line 471
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    const p2, 0x7f090103

    .line 474
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.background)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 475
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    if-eqz p1, :cond_b

    const-wide v2, 0xb30f0a2cL

    long-to-int p2, v2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/FullscreenBackgroundView;->setOverlayColor(I)V

    .line 477
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 479
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    if-eqz p1, :cond_a

    .line 480
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p2, "accountService"

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    .line 481
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->updateRecentVisitorCount()V

    goto :goto_4

    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_4
    return-void

    :cond_b
    const-string p1, "backgroundView"

    .line 475
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.config.ConfigService"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string p1, "systemUserPage"

    .line 414
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string p1, "loginPage"

    .line 407
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final sendGlobalProfileRequest()V
    .locals 7

    .line 679
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 680
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    const-string v2, "visit"

    invoke-direct {v0, p0, v2}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 681
    iget-object v4, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v2, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;

    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$sendGlobalProfileRequest$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 661
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    .line 662
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 663
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->forceUpdateRecentVisitorCount()V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setBackgroundView(Lcom/narvii/widget/FullscreenBackgroundView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    return-void
.end method

.method public final setBodyContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    return-void
.end method

.method public final setDisablePage(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    return-void
.end method

.method public final setLoginPage(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    return-void
.end method

.method public final setMainPage(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    return-void
.end method

.method public final setMembershipHint(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    return-void
.end method

.method public final setMembershipLayout(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    return-void
.end method

.method public final setMyProfilePage(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    return-void
.end method

.method public final setProfileView(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    return-void
.end method

.method public final setSystemUserPage(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    return-void
.end method

.method public final setTopAvatar(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/narvii/model/User;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public final showGallery()V
    .locals 4

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 961
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v2, 0x64

    .line 963
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 964
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 965
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 971
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 972
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/narvii/model/User;->isGlobal:Z

    .line 973
    :cond_3
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-class v2, Lcom/narvii/model/User;

    const-string v3, "parentClass"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 975
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startPrivateChat()V
    .locals 4

    const-string v0, "account"

    .line 571
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 572
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 573
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "chatInvite"

    .line 577
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_3

    .line 578
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.chat.invite.ChatInviteFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateMembershipView()V
    .locals 9

    .line 764
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    const-string v1, "profileView"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 765
    iput-boolean v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    .line 766
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->performFollowAnimation()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 768
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    .line 769
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    const-string v1, "membershipLayout"

    if-eqz v0, :cond_f

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const/16 v5, 0x8

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    .line 772
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v6

    if-nez v6, :cond_c

    .line 773
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v6

    if-ltz v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    const-string v8, "membershipHint"

    if-eqz v7, :cond_9

    .line 776
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_6

    const v7, 0x7f0f0b90

    new-array v8, v4, [Ljava/lang/Object;

    .line 779
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-virtual {p0, v7, v8}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    const v2, 0x7f0f0b8f

    .line 778
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const v2, 0x7f0f0b8e

    .line 777
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 776
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 782
    :cond_9
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0f0b92

    goto :goto_4

    :cond_a
    const v0, 0x7f0f0b91

    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 786
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_e

    .line 787
    iget-object v0, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_e

    .line 789
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_6
    return-void

    .line 770
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 768
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final updateViews()V
    .locals 10

    .line 705
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMenu()V

    .line 707
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f090a19

    .line 706
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 707
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    if-nez v1, :cond_0

    const v1, 0x7f0803df

    goto :goto_0

    :cond_0
    const v1, 0x7f0803dd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    const-string v1, "mainPage"

    const-string v2, "loginPage"

    const-string v3, "systemUserPage"

    const-string v4, "disablePage"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-nez v0, :cond_6

    .line 711
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 716
    invoke-direct {p0, v7}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    goto/16 :goto_6

    .line 714
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 713
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 712
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 711
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 718
    :cond_6
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    const/16 v8, 0x9

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/narvii/model/User;->status:I

    if-eq v0, v8, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_12

    iget v0, v0, Lcom/narvii/model/User;->status:I

    const/16 v9, 0xa

    if-ne v0, v9, :cond_12

    .line 720
    :cond_8
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 725
    invoke-direct {p0, v7}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    .line 726
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_d

    const v1, 0x7f09035f

    .line 727
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v1, 0x7f090361

    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<TextView>(R.id.disabled_user_name)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_a

    iget-object v7, v2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :cond_a
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090360

    .line 729
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<TextView>(R.id.disabled_user_id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f010c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    const-string v4, ""

    :goto_2
    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090355

    .line 731
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_c

    iget v1, v1, Lcom/narvii/model/User;->status:I

    if-ne v1, v8, :cond_c

    const v1, 0x7f0f1126

    goto :goto_3

    :cond_c
    const v1, 0x7f0f0370

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 726
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 723
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 722
    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 721
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 720
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 738
    :cond_12
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    move-result v0

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_1a

    .line 739
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_15

    const v1, 0x7f0900a4

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v1, 0x7f0900a5

    .line 745
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<TextView>(R.id.amino_team_user_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v7

    :cond_14
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 743
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 742
    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 741
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 740
    :cond_18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 739
    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 750
    :cond_1a
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 755
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMembershipView()V

    .line 756
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    .line 757
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->showMultiTab()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_5

    :cond_1b
    const/16 v5, 0x8

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 758
    :cond_1c
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    :goto_6
    return-void

    .line 753
    :cond_1d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 752
    :cond_1e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 751
    :cond_1f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 750
    :cond_20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7
.end method
