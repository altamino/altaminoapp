.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/master/MasterTopBarAvailable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1083:1\n1#2:1084\n1549#3:1085\n1620#3,3:1086\n1549#3:1089\n1620#3,3:1090\n1549#3:1093\n1620#3,3:1094\n1855#3,2:1097\n*S KotlinDebug\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment\n*L\n874#1:1085\n874#1:1086,3\n875#1:1089\n875#1:1090,3\n876#1:1093\n876#1:1094,3\n474#1:1097,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SHOW_SETTING:Ljava/lang/String; = "show_setting"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_UID:Ljava/lang/String; = "id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_USER:Ljava/lang/String; = "user"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFS_LAST_BIRTHDAY_VERIFY_SID:Ljava/lang/String; = "last_birthday_verify_sid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field public backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

.field private balanceView:Lcom/narvii/widget/WalletBalanceView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public bodyContentView:Landroid/view/View;

.field private commentTabIndex:I

.field private contentView:Landroid/view/View;

.field public disablePage:Landroid/view/View;

.field public eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field private filterHelper:Lcom/narvii/util/FilterHelper;

.field private followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

.field private final fragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isMyProfilePage:Z

.field private isSendingFollow:Z

.field private isUserBlocked:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public loginPage:Landroid/view/View;

.field public mainPage:Landroid/view/View;

.field public membershipHint:Landroid/widget/TextView;

.field public membershipLayout:Landroid/view/View;

.field private membershipService:Lcom/narvii/wallet/MembershipService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moreView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private performFollowAnimation:Z

.field private final prefs$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

.field private final receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shareView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public systemUserPage:Landroid/view/View;

.field private topAvatar:Lcom/narvii/widget/UserAvatarLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private user:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->Companion:Lcom/narvii/master/home/profile/GlobalProfileFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$prefs$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$prefs$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->prefs$delegate:Lw7/m;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 29
    return-void
.end method

.method public static synthetic A(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$27(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest$lambda$34(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/util/RequestResult;)V

    return-void
.end method

.method public static synthetic C(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$15(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$30(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$11(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$29$lambda$28(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic G(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$9(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$20$lambda$19$lambda$18(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    return-void
.end method

.method public static synthetic I(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$13(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow$lambda$47$lambda$46(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic K(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$12(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$20(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getMembershipService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setPerformFollowAnimation$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    .line 3
    return-void
.end method

.method public static final synthetic access$updateMenu(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMenu()V

    .line 4
    return-void
.end method

.method private final alreadyShownBirthDateUpdate()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->alreadyShownBirthdayFlowThreeTimes()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method private final blockUser(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V

    return-void
.end method

.method private final blockUser(ZZ)V
    .locals 3

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f121206

    goto :goto_0

    :cond_0
    const v0, 0x7f1201b4

    .line 3
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance v0, Lcom/narvii/master/home/profile/z;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/profile/z;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    const p1, 0x7f12033f

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 7
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    new-instance v0, Lcom/narvii/master/home/profile/a0;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/a0;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 9
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    :goto_1
    const-string v0, "id"

    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/block/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void
.end method

.method private static final blockUser$lambda$4(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V

    .line 10
    return-void
.end method

.method private static final blockUser$lambda$6(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "null cannot be cast to non-null type com.narvii.userblock.BlockListResponse"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/userblock/BlockListResponse;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "userBlockService"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p1, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    .line 40
    const p1, 0x7f080421

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->toastImage(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 47
    :cond_1
    return-void
.end method

.method private static final follow$lambda$47$lambda$46(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method private static final follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isSendingFollow:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setSendingFollow(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    .line 17
    return-void
.end method

.method private final getCurrentSessionId()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "sid"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private final getLastBirthdayVerifySessionId()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getPrefs()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "last_birthday_verify_sid"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private final getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->prefs$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Landroid/content/SharedPreferences;

    .line 14
    return-object v0
.end method

.method private final initFakeActionBar(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a007e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/master/home/profile/q;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/q;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    const/16 v1, 0x8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    const v0, 0x7f0a1019

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/master/home/profile/t;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/t;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 68
    .line 69
    new-instance v1, Lcom/narvii/master/home/profile/u;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/u;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const v0, 0x7f0a0d05

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->shareView:Landroid/view/View;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    new-instance v1, Lcom/narvii/master/home/profile/v;

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/v;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    const v0, 0x7f0a0999

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->moreView:Landroid/view/View;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    new-instance v1, Lcom/narvii/master/home/profile/w;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/w;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    const v0, 0x7f0a0ce2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    new-instance v0, Lcom/narvii/master/home/profile/x;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/x;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_5
    return-void
.end method

.method private static final initFakeActionBar$lambda$22(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 9
    return-void
.end method

.method private static final initFakeActionBar$lambda$25$lambda$23(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string v0, "WalletIcon"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    return-void
.end method

.method private static final initFakeActionBar$lambda$25$lambda$24(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string v0, "ClaimCoinsIcon"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    return-void
.end method

.method private static final initFakeActionBar$lambda$27(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "ShareIcon"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogForGlobalProfile(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Z)Lcom/narvii/share/ShareDialog;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 42
    :cond_0
    return-void
.end method

.method private static final initFakeActionBar$lambda$29(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "MoreIcon"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f120781

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    const-string v0, "userBlockService"

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 66
    .line 67
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    .line 76
    const v2, 0x7f12124f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_2
    const v1, 0x7f12122c

    .line 84
    const/4 v2, 0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 88
    .line 89
    :goto_0
    new-instance v1, Lcom/narvii/master/home/profile/r;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p0, v0}, Lcom/narvii/master/home/profile/r;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 99
    return-void
.end method

.method private static final initFakeActionBar$lambda$29$lambda$28(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(Z)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 45
    :goto_0
    return-void
.end method

.method private static final initFakeActionBar$lambda$30(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "SettingIcon"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-class p1, Lcom/narvii/prefs/MoreSettingFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    const-class p1, Lcom/narvii/prefs/SettingsFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method private static final onNotification$isValidCommentAtGlobal(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Comment;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget p0, p1, Lcom/narvii/model/Comment;->ndcId:I

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method private static final onViewCreated$lambda$10(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string p1, "MembershipBar"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    return-void
.end method

.method private static final onViewCreated$lambda$11(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string p1, "AddBio"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    return-void
.end method

.method private static final onViewCreated$lambda$12(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->startEditBio()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$13(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v0, "follow"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 16
    return-void
.end method

.method private static final onViewCreated$lambda$14(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->chat:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "ChatButton"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->startPrivateChat()V

    .line 24
    return-void
.end method

.method private static final onViewCreated$lambda$15(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "followNotificationHelper"

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object p1, v0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v1, v0, v2, v0}, Lcom/narvii/user/follow/FollowNotificationHelper;->subscribe$default(Lcom/narvii/user/follow/FollowNotificationHelper;Lcom/narvii/model/User;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget p1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->turnOffAlert:Lcom/narvii/logging/ActSemantic;

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    const-string p1, "AlertIcon"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 49
    return-void
.end method

.method private static final onViewCreated$lambda$16(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "LoginArea"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$17(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/master/CommunityHelper;->getFeedBackIntent()Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method private static final onViewCreated$lambda$20(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    instance-of v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v1, v3

    .line 46
    .line 47
    :goto_1
    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 70
    move-result v1

    .line 71
    const/4 v3, 0x5

    .line 72
    .line 73
    if-ge v1, v3, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 83
    goto :goto_2

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v1}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_5
    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    .line 106
    .line 107
    if-eqz v1, :cond_0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    new-instance v1, Lcom/narvii/master/home/profile/f;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/f;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    return-void
.end method

.method private static final onViewCreated$lambda$20$lambda$19$lambda$18(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    .line 16
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$9(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "UserIcon"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "isLiveChatting"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->openChatRoom()V

    .line 69
    return-void

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->showGallery()V

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 94
    :cond_4
    :goto_2
    return-void
.end method

.method private final openChatRoom()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v2, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    const-string v3, "id"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static synthetic q(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$10(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$17(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$16(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final sendGlobalProfileRequest$lambda$34(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/util/RequestResult;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p1, Lcom/narvii/util/RequestResult;->code:I

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/model/User;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v1

    .line 23
    .line 24
    :goto_0
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    :cond_1
    instance-of p1, v1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    .line 51
    :cond_2
    return-void
.end method

.method private final setLastBirthdayVerifySessionId(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getPrefs()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "last_birthday_verify_sid"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method

.method private final showMultiTab()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getShowTabCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method private final startEditBio()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-class v3, Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    const-string v2, "uid"

    .line 18
    .line 19
    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 28
    .line 29
    const-string v3, "post"

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    const-string v2, "userProfile"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    const-string v0, "bio"

    .line 48
    const/4 v2, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    .line 53
    const-string v0, "supportImage"

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    const-string v0, "Source"

    .line 60
    .line 61
    const-string v2, "Edit Bio"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    const-string v0, "loggingSource"

    .line 67
    .line 68
    const-string v2, "UserProfileView"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser$lambda$6(Lcom/narvii/master/home/profile/GlobalProfileFragment;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$29(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method private final updateBackground(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getBackgroundView()Lcom/narvii/widget/FullscreenBackgroundView;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v1, v1, [Lcom/narvii/image/BackgroundSource;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    aput-object p1, v1, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 14
    return-void
.end method

.method private final updateMenu()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 11
    move-result v3

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->shareView:Landroid/view/View;

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    goto :goto_3

    .line 29
    .line 30
    :cond_2
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v4, :cond_6

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 35
    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    iget v5, v4, Lcom/narvii/model/User;->status:I

    .line 39
    .line 40
    const/16 v6, 0x9

    .line 41
    .line 42
    if-ne v5, v6, :cond_3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    if-eqz v4, :cond_4

    .line 46
    .line 47
    iget v5, v4, Lcom/narvii/model/User;->status:I

    .line 48
    .line 49
    const/16 v6, 0xa

    .line 50
    .line 51
    if-ne v5, v6, :cond_4

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_4
    if-eqz v4, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-ne v4, v3, :cond_5

    .line 61
    goto :goto_1

    .line 62
    :cond_5
    move v4, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_6
    :goto_1
    move v4, v1

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    :goto_3
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    .line 70
    .line 71
    if-nez v0, :cond_7

    .line 72
    goto :goto_5

    .line 73
    .line 74
    :cond_7
    const-string v4, "show_setting"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-nez v4, :cond_a

    .line 87
    .line 88
    .line 89
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 90
    move-result v4

    .line 91
    .line 92
    if-nez v4, :cond_9

    .line 93
    .line 94
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v4, :cond_a

    .line 97
    .line 98
    :cond_9
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 99
    .line 100
    if-eqz v4, :cond_b

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    .line 104
    move-result v4

    .line 105
    .line 106
    if-ne v4, v3, :cond_b

    .line 107
    :cond_a
    move v4, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_b
    move v4, v2

    .line 110
    .line 111
    .line 112
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    :goto_5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->moreView:Landroid/view/View;

    .line 115
    .line 116
    if-nez v0, :cond_c

    .line 117
    goto :goto_7

    .line 118
    .line 119
    :cond_c
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v4, :cond_e

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-nez v4, :cond_e

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 135
    move-result v4

    .line 136
    .line 137
    if-eqz v4, :cond_e

    .line 138
    .line 139
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 140
    .line 141
    if-eqz v4, :cond_d

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/narvii/model/User;->isSystem()Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-ne v4, v3, :cond_d

    .line 148
    goto :goto_6

    .line 149
    :cond_d
    move v1, v2

    .line 150
    .line 151
    .line 152
    :cond_e
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_7
    return-void
.end method

.method private final updateTabCount()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "filterHelper"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object v0, v2

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 36
    move-result v4

    .line 37
    move v5, v1

    .line 38
    .line 39
    :goto_1
    if-ge v5, v4, :cond_7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    const v7, 0x7f0a0e27

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    check-cast v6, Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Lcom/narvii/app/NVScrollablePagerAdapter;->getTabs()Ljava/util/List;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    if-eqz v7, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    check-cast v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move-object v7, v2

    .line 73
    .line 74
    :goto_2
    if-eqz v7, :cond_3

    .line 75
    .line 76
    iget-object v8, v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move-object v8, v2

    .line 79
    .line 80
    :goto_3
    const-class v9, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result v8

    .line 85
    .line 86
    if-eqz v8, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    iget-object v7, v7, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    .line 92
    .line 93
    const-string v8, "title"

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v8

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :cond_4
    iget-object v8, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 106
    .line 107
    if-eqz v8, :cond_5

    .line 108
    .line 109
    iget v8, v8, Lcom/narvii/model/User;->commentsCount:I

    .line 110
    .line 111
    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v8

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v8, v2

    .line 116
    .line 117
    .line 118
    :goto_4
    invoke-static {v6, v7, v8}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount$updateCount(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    .line 120
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    return-void
.end method

.method private static final updateTabCount$updateCount(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p1, " "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :goto_1
    return-void
.end method

.method public static synthetic v(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$25$lambda$24(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated$lambda$14(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$25$lambda$23(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser$lambda$4(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic z(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar$lambda$22(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "notLogin"

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "self"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-string v0, "other"

    .line 27
    .line 28
    :goto_0
    const-string v1, "status"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    sget-object p2, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    :goto_0
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    .line 9
    .line 10
    .line 11
    const v1, 0x7f121249

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    const-string v3, "uid"

    .line 23
    .line 24
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v4, "user"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    const-string v3, "isMe"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 44
    move-result v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    .line 51
    new-instance v3, Lw7/z;

    .line 52
    .line 53
    const-class v4, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v1, v4, v2}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    new-instance v6, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v1, 0xa

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    check-cast v3, Lw7/z;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lw7/z;->d()Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    check-cast v3, Ljava/lang/Number;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 96
    move-result v3

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 110
    move-result v2

    .line 111
    .line 112
    .line 113
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v3

    .line 122
    .line 123
    if-eqz v3, :cond_1

    .line 124
    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    check-cast v3, Lw7/z;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    check-cast v3, Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 145
    move-result v1

    .line 146
    .line 147
    .line 148
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v1

    .line 157
    .line 158
    if-eqz v1, :cond_2

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    check-cast v1, Lw7/z;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Lw7/z;->f()Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    check-cast v1, Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    const/4 v9, 0x0

    .line 176
    .line 177
    const/16 v10, 0x8

    .line 178
    const/4 v11, 0x0

    .line 179
    move-object v5, p0

    .line 180
    .line 181
    .line 182
    invoke-static/range {v5 .. v11}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 183
    move-result-object v0

    .line 184
    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    .line 6
    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 2

    .line 1
    .line 2
    const-string v0, "tab"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "comment"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->commentTabIndex:I

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final follow(Z)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isSendingFollow:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget v1, v0, Lcom/narvii/model/User;->followingStatus:I

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    const/4 v3, 0x3

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    move v1, v2

    .line 22
    .line 23
    :goto_1
    const-string v3, "/user-profile/"

    .line 24
    .line 25
    const-string v4, "id"

    .line 26
    .line 27
    const-string v5, "FollowIcon"

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f121250

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/master/home/profile/y;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/y;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 58
    return-void

    .line 59
    .line 60
    :cond_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->unfollow:Lcom/narvii/logging/ActSemantic;

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "/member/"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_4
    sget-object p1, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v3, "/member"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    :goto_2
    const-string v3, "api"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 185
    .line 186
    new-instance v4, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;

    .line 187
    .line 188
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 189
    .line 190
    .line 191
    invoke-direct {v4, p0, v1, v0, v5}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;Ljava/lang/Class;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, p1, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p0, v2, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V

    .line 198
    :cond_5
    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBackgroundView()Lcom/narvii/widget/FullscreenBackgroundView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "backgroundView"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBodyContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "bodyContentView"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public final getDisablePage()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "disablePage"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "eventLogProfileService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getLoginPage()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "loginPage"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMainPage()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "mainPage"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMembershipHint()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "membershipHint"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMembershipLayout()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "membershipLayout"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "profile"

    return-object v0
.end method

.method public final getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "profileView"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/User;->getStrategyInfo()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final getSystemUserPage()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "systemUserPage"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0725

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0e27

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const/4 p2, 0x1

    .line 30
    .line 31
    const/high16 v1, 0x41600000    # 14.0f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    return-object p1
.end method

.method public final getTopAvatar()Lcom/narvii/widget/UserAvatarLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final isMyProfilePage()Z
    .locals 1

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
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p1

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    if-gez p2, :cond_4

    .line 19
    const/4 p1, 0x1

    .line 20
    int-to-float p1, p1

    .line 21
    int-to-float p2, p2

    .line 22
    mul-float/2addr p2, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    .line 38
    move-result v2

    .line 39
    sub-int/2addr v0, v2

    .line 40
    int-to-float v0, v0

    .line 41
    div-float/2addr p2, v0

    .line 42
    add-float/2addr p1, p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 61
    move-result-object p2

    .line 62
    float-to-double v2, p1

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 68
    .line 69
    cmpg-double p1, v2, v4

    .line 70
    const/4 v0, 0x4

    .line 71
    .line 72
    if-gez p1, :cond_1

    .line 73
    move v2, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v2, v1

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 82
    move-result p2

    .line 83
    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 87
    .line 88
    if-nez p2, :cond_2

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_2
    if-gez p1, :cond_3

    .line 92
    move v1, v0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 106
    .line 107
    if-nez p1, :cond_5

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 122
    move-result p1

    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 127
    .line 128
    if-nez p1, :cond_6

    .line 129
    goto :goto_3

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_7
    :goto_3
    return-void
.end method

.method public onAppBarLayoutScroll(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutScroll(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hideToolTip()V

    .line 11
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 6
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "getFragments(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    if-le v0, v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result v0

    .line 32
    move v3, v1

    .line 33
    .line 34
    :goto_0
    if-ge v3, v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v4, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 45
    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    instance-of v5, v4, Lcom/narvii/app/FragmentOnBackListener;

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    check-cast v4, Lcom/narvii/app/FragmentOnBackListener;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    check-cast v5, Lcom/narvii/app/NVActivity;

    .line 59
    .line 60
    .line 61
    invoke-interface {v4, v5}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    return v2

    .line 66
    .line 67
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 20
    .line 21
    const-string v0, "eventLogProfile"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setEventLogProfileService(Lcom/narvii/services/EventLogProfileService;)V

    .line 34
    .line 35
    const-string v0, "block"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v1, "keepForLeaderAndCurator(...)"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/user/follow/FollowNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setLoading(Le8/a;)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 80
    .line 81
    const-string v1, "followNotificationHelper"

    .line 82
    const/4 v2, 0x0

    .line 83
    .line 84
    if-nez v0, :cond_0

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 88
    move-object v0, v2

    .line 89
    .line 90
    :cond_0
    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$2;

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$2;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lcom/narvii/user/follow/FollowNotificationHelper;->setSuccess(Le8/l;)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->followNotificationHelper:Lcom/narvii/user/follow/FollowNotificationHelper;

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 104
    move-object v0, v2

    .line 105
    .line 106
    :cond_1
    new-instance v1, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/narvii/user/follow/FollowNotificationHelper;->setFail(Le8/l;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    const-string v0, "membership"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 128
    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    .line 130
    .line 131
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 140
    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    .line 142
    .line 143
    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 152
    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    .line 154
    .line 155
    const-string v3, "com.narvii.action.WALLET_CHANGED"

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 162
    .line 163
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 164
    .line 165
    new-instance v1, Landroid/content/IntentFilter;

    .line 166
    .line 167
    const-string v3, "com.narvii.action.COUPONS_CHANGED"

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 176
    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    .line 178
    .line 179
    const-string v3, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 188
    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    .line 190
    .line 191
    const-string v3, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 198
    .line 199
    const-string v0, "user"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    const-class v1, Lcom/narvii/model/User;

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    check-cast v0, Lcom/narvii/model/User;

    .line 212
    .line 213
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 214
    .line 215
    const-string v0, "id"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 225
    move-result v0

    .line 226
    .line 227
    if-nez v0, :cond_2

    .line 228
    .line 229
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 230
    .line 231
    if-nez v0, :cond_2

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 252
    .line 253
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 254
    .line 255
    if-nez v0, :cond_3

    .line 256
    goto :goto_1

    .line 257
    .line 258
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 259
    .line 260
    if-nez v0, :cond_4

    .line 261
    .line 262
    const-string v0, "userBlockService"

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 266
    goto :goto_0

    .line 267
    :cond_4
    move-object v2, v0

    .line 268
    .line 269
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    invoke-interface {v2, v0}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 273
    move-result v0

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    :goto_1
    iput-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isUserBlocked:Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 283
    move-result v0

    .line 284
    .line 285
    iput-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 292
    move-result v0

    .line 293
    .line 294
    if-eqz v0, :cond_5

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    if-eqz v0, :cond_5

    .line 301
    .line 302
    .line 303
    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 304
    :cond_5
    const/4 v0, 0x0

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 308
    .line 309
    if-nez p1, :cond_6

    .line 310
    .line 311
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 312
    .line 313
    .line 314
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 315
    .line 316
    new-instance v1, Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 326
    move-result-object v1

    .line 327
    .line 328
    if-eqz v1, :cond_6

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 332
    move-result-object v1

    .line 333
    .line 334
    if-eqz v1, :cond_6

    .line 335
    .line 336
    const-string v2, "chatInvite"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 340
    move-result-object p1

    .line 341
    .line 342
    if-eqz p1, :cond_6

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 346
    .line 347
    :cond_6
    new-instance p1, Lcom/narvii/util/DetailTransition;

    .line 348
    .line 349
    .line 350
    invoke-direct {p1}, Lcom/narvii/util/DetailTransition;-><init>()V

    .line 351
    .line 352
    const-wide/16 v1, 0xc8

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 359
    move-result-object v1

    .line 360
    .line 361
    if-eqz v1, :cond_7

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 365
    move-result-object v1

    .line 366
    .line 367
    if-eqz v1, :cond_7

    .line 368
    .line 369
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 370
    .line 371
    .line 372
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, p1}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    .line 382
    .line 383
    .line 384
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 385
    move-result-object p1

    .line 386
    .line 387
    if-eqz p1, :cond_8

    .line 388
    .line 389
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;

    .line 390
    .line 391
    .line 392
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$5;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    .line 396
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02db

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "inflate(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->contentView:Landroid/view/View;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, "contentView"

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->receiver:Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onInstantiateItem(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "any"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 9
    .line 10
    instance-of v0, p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onInstantiateItem$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onInstantiateItem$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->setOnCommentToTop(Le8/a;)V

    .line 23
    :cond_0
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    const-string v1, "follow"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    const v2, -0x4f997a55

    .line 16
    .line 17
    if-eq v1, v2, :cond_5

    .line 18
    .line 19
    .line 20
    const v2, -0x31ffc737    # -5.3780128E8f

    .line 21
    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    .line 25
    const v2, 0x1a9a0

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    const-string v1, "new"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onNotification$isValidCommentAtGlobal(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_8

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    iput v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_4
    const-string p1, "update"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_5
    const-string v1, "delete"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-nez v0, :cond_6

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_6
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->onNotification$isValidCommentAtGlobal(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    iget v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 89
    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    iput v0, p1, Lcom/narvii/model/User;->commentsCount:I

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    .line 96
    :cond_8
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->tryOpenSetBirthday()V

    .line 15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v0, "id"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "user"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "f"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V

    .line 9
    .line 10
    instance-of p2, p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    move-object p2, p1

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->fragmentsList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0b89

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    const-string v0, "findViewById(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setProfileView(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setPage(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a0f36

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    new-instance v2, Lcom/narvii/master/home/profile/g;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/g;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    new-instance v2, Lcom/narvii/master/home/profile/h;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/h;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setMembershipPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/master/home/profile/i;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/i;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setAddBioPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    new-instance v2, Lcom/narvii/master/home/profile/j;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/j;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setShowBioDetailClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/master/home/profile/k;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/k;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setFollowClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    new-instance v2, Lcom/narvii/master/home/profile/l;

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/l;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setStartChatListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    new-instance v2, Lcom/narvii/master/home/profile/m;

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/m;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setFollowNotificationListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    const p2, 0x7f0a0833

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    .line 136
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setLoginPage(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLoginPage()Landroid/view/View;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    const v2, 0x7f0a0831

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    new-instance v2, Lcom/narvii/master/home/profile/n;

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/n;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    const p2, 0x7f0a044a

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    .line 168
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setDisablePage(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    const p2, 0x7f0a0e3f

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    .line 181
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setSystemUserPage(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 188
    move-result-object p2

    .line 189
    .line 190
    .line 191
    const v2, 0x7f0a0dfb

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object p2

    .line 196
    .line 197
    new-instance v2, Lcom/narvii/master/home/profile/o;

    .line 198
    .line 199
    .line 200
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/o;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    const p2, 0x7f0a0e13

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    move-result-object p2

    .line 211
    .line 212
    .line 213
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setMainPage(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    const p2, 0x7f0a01dc

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    .line 226
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setBodyContentView(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    const p2, 0x7f0a018d

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    move-result-object p2

    .line 237
    .line 238
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 239
    .line 240
    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 241
    .line 242
    if-eqz p2, :cond_0

    .line 243
    .line 244
    new-instance v2, Lcom/narvii/master/home/profile/p;

    .line 245
    .line 246
    .line 247
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/p;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 254
    move-result-object p2

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    move-result-object p2

    .line 259
    .line 260
    const-string v1, "avatar"

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 264
    .line 265
    new-instance p2, Lcom/narvii/util/ImageCacheUtils;

    .line 266
    .line 267
    .line 268
    invoke-direct {p2, p0}, Lcom/narvii/util/ImageCacheUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 269
    .line 270
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 271
    const/4 v2, 0x0

    .line 272
    .line 273
    if-eqz v1, :cond_1

    .line 274
    .line 275
    iget-object v1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 276
    goto :goto_0

    .line 277
    :cond_1
    move-object v1, v2

    .line 278
    .line 279
    .line 280
    :goto_0
    invoke-virtual {p2, v1}, Lcom/narvii/util/ImageCacheUtils;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 281
    move-result-object p2

    .line 282
    .line 283
    if-eqz p2, :cond_2

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    const v3, 0x7f0a0171

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 297
    .line 298
    iput-object p2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    .line 300
    iput-object p2, v1, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    :cond_2
    const p2, 0x7f0a0126

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    move-result-object p2

    .line 308
    .line 309
    check-cast p2, Lcom/narvii/nested/NVAppBarLayout;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p2}, Lcom/narvii/nested/CoordinateTabFragment;->setAppbarLayout(Lcom/narvii/nested/NVAppBarLayout;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 316
    move-result-object p2

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 320
    move-result v1

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 324
    move-result v3

    .line 325
    add-int/2addr v1, v3

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 332
    move-result-object p2

    .line 333
    .line 334
    .line 335
    const v1, 0x7f0a03b6

    .line 336
    .line 337
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    const p2, 0x7f0a0958

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    move-result-object p2

    .line 348
    .line 349
    .line 350
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setMembershipLayout(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    const p2, 0x7f0a0954

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    move-result-object p2

    .line 361
    .line 362
    .line 363
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    check-cast p2, Landroid/widget/TextView;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setMembershipHint(Landroid/widget/TextView;)V

    .line 369
    .line 370
    const-string p2, "config"

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    move-result-object p2

    .line 375
    .line 376
    const-string v1, "null cannot be cast to non-null type com.narvii.config.ConfigService"

    .line 377
    .line 378
    .line 379
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 385
    move-result-object p2

    .line 386
    .line 387
    .line 388
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 389
    move-result p2

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    const/high16 v3, 0x41200000    # 10.0f

    .line 396
    .line 397
    .line 398
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 399
    move-result v1

    .line 400
    .line 401
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 402
    .line 403
    const/16 v4, 0x8

    .line 404
    .line 405
    new-array v4, v4, [F

    .line 406
    const/4 v5, 0x0

    .line 407
    .line 408
    aput v1, v4, v5

    .line 409
    const/4 v6, 0x1

    .line 410
    .line 411
    aput v1, v4, v6

    .line 412
    const/4 v6, 0x2

    .line 413
    .line 414
    aput v1, v4, v6

    .line 415
    const/4 v6, 0x3

    .line 416
    .line 417
    aput v1, v4, v6

    .line 418
    const/4 v1, 0x4

    .line 419
    const/4 v6, 0x0

    .line 420
    .line 421
    aput v6, v4, v1

    .line 422
    const/4 v1, 0x5

    .line 423
    .line 424
    aput v6, v4, v1

    .line 425
    const/4 v1, 0x6

    .line 426
    .line 427
    aput v6, v4, v1

    .line 428
    const/4 v1, 0x7

    .line 429
    .line 430
    aput v6, v4, v1

    .line 431
    .line 432
    .line 433
    invoke-direct {v3, v4, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 434
    .line 435
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 436
    .line 437
    .line 438
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 442
    move-result-object v2

    .line 443
    .line 444
    .line 445
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 446
    move-result v3

    .line 447
    .line 448
    .line 449
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 450
    move-result v4

    .line 451
    .line 452
    .line 453
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 454
    move-result p2

    .line 455
    .line 456
    const/16 v6, 0xe6

    .line 457
    .line 458
    .line 459
    invoke-static {v6, v3, v4, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 460
    move-result p2

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getBodyContentView()Landroid/view/View;

    .line 467
    move-result-object p2

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 474
    move-result p2

    .line 475
    .line 476
    if-nez p2, :cond_3

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getBodyContentView()Landroid/view/View;

    .line 480
    move-result-object p2

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 484
    move-result-object v1

    .line 485
    .line 486
    .line 487
    const v2, 0x7f070300

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 491
    move-result v1

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2, v5, v5, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 495
    .line 496
    .line 497
    :cond_3
    const p2, 0x7f0a0192

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 501
    move-result-object p1

    .line 502
    .line 503
    .line 504
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .line 506
    check-cast p1, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setBackgroundView(Lcom/narvii/widget/FullscreenBackgroundView;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getBackgroundView()Lcom/narvii/widget/FullscreenBackgroundView;

    .line 513
    move-result-object p1

    .line 514
    .line 515
    .line 516
    const p2, -0x4cf0f5d4

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1, p2}, Lcom/narvii/widget/FullscreenBackgroundView;->setOverlayColor(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 523
    return-void
.end method

.method public final sendGlobalProfileRequest()V
    .locals 7

    .line 1
    .line 2
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    .line 8
    .line 9
    const-string v2, "visit"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v2}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v4, p0, Lcom/narvii/app/NVFragment;->_pushTrackId:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/master/home/profile/s;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/narvii/master/home/profile/s;-><init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method public sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 0
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 7
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setBackgroundView(Lcom/narvii/widget/FullscreenBackgroundView;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/FullscreenBackgroundView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    return-void
.end method

.method public final setBodyContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->bodyContentView:Landroid/view/View;

    return-void
.end method

.method public final setDisablePage(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->disablePage:Landroid/view/View;

    return-void
.end method

.method public final setEventLogProfileService(Lcom/narvii/services/EventLogProfileService;)V
    .locals 1
    .param p1    # Lcom/narvii/services/EventLogProfileService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    return-void
.end method

.method public final setLoginPage(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->loginPage:Landroid/view/View;

    return-void
.end method

.method public final setMainPage(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->mainPage:Landroid/view/View;

    return-void
.end method

.method public final setMembershipHint(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipHint:Landroid/widget/TextView;

    return-void
.end method

.method public final setMembershipLayout(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipLayout:Landroid/view/View;

    return-void
.end method

.method public final setMyProfilePage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage:Z

    return-void
.end method

.method public final setProfileView(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->profileView:Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    return-void
.end method

.method public final setSystemUserPage(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->systemUserPage:Landroid/view/View;

    return-void
.end method

.method public final setTopAvatar(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/UserAvatarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/narvii/model/User;)V
    .locals 0
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public final showGallery()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/model/Media;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 11
    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v3

    .line 24
    .line 25
    :goto_0
    iput-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v3, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    if-nez v3, :cond_2

    .line 37
    return-void

    .line 38
    .line 39
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-class v3, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v3, 0x1

    .line 55
    .line 56
    iput-boolean v3, v2, Lcom/narvii/model/User;->isGlobal:Z

    .line 57
    .line 58
    :goto_1
    const-string v3, "parent"

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    const-string v2, "parentClass"

    .line 68
    .line 69
    const-class v3, Lcom/narvii/model/User;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    .line 74
    const-string v2, "list"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public final startPrivateChat()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    const-string v3, "getContext(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/narvii/chat/util/ChatHelper;->canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    const-string v1, "chatInvite"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "null cannot be cast to non-null type com.narvii.chat.invite.ChatInviteFragment"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final tryOpenSetBirthday()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->alreadyShownBirthDateUpdate()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getEventLogProfileService()Lcom/narvii/services/EventLogProfileService;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->getNeedsBirthDateUpdate()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getCurrentSessionId()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLastBirthdayVerifySessionId()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLastBirthdayVerifySessionId()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getCurrentSessionId()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getCurrentSessionId()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setLastBirthdayVerifySessionId(Ljava/lang/String;)V

    .line 51
    .line 52
    const-class v0, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v1, "param_birthday_type"

    .line 59
    .line 60
    sget-object v2, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->GLOBAL_PROFILE:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 67
    :cond_2
    return-void
.end method

.method public final updateMembershipView()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->performFollowAnimation:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->performFollowAnimation()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->topAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMembershipLayout()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    move v2, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v2, v3

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 73
    const/4 v2, 0x1

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-nez v4, :cond_7

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 85
    move-result v4

    .line 86
    .line 87
    if-ltz v4, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMembershipHint()Landroid/widget/TextView;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    if-eq v4, v2, :cond_3

    .line 96
    .line 97
    new-array v5, v2, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    aput-object v4, v5, v1

    .line 104
    .line 105
    .line 106
    const v1, 0x7f120c94

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_3
    const v1, 0x7f120c93

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    goto :goto_1

    .line 120
    .line 121
    .line 122
    :cond_4
    const v1, 0x7f120c92

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    goto :goto_4

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMembershipHint()Landroid/widget/TextView;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    .line 143
    const v0, 0x7f120c96

    .line 144
    .line 145
    .line 146
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    goto :goto_3

    .line 149
    .line 150
    .line 151
    :cond_6
    const v0, 0x7f120c95

    .line 152
    goto :goto_2

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    iget-object v0, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    move-result v0

    .line 166
    xor-int/2addr v0, v2

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMembershipLayout()Landroid/view/View;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_8
    return-void
.end method

.method public final updateViews()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMenu()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->settingsView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0ce1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f080502

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    const v1, 0x7f080500

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->uid:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLoginPage()Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMainPage()Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getDisablePage()Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 76
    .line 77
    const/16 v4, 0x9

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget v5, v0, Lcom/narvii/model/User;->status:I

    .line 82
    .line 83
    if-ne v5, v4, :cond_3

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_3
    if-eqz v0, :cond_9

    .line 87
    .line 88
    iget v5, v0, Lcom/narvii/model/User;->status:I

    .line 89
    .line 90
    const/16 v6, 0xa

    .line 91
    .line 92
    if-ne v5, v6, :cond_9

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLoginPage()Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMainPage()Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getDisablePage()Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getDisablePage()Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    const v3, 0x7f0a0447

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    check-cast v3, Lcom/narvii/widget/ThumbImageView;

    .line 137
    .line 138
    iget-object v5, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 139
    .line 140
    if-eqz v5, :cond_4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 144
    move-result-object v5

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    move-object v5, v1

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    const v3, 0x7f0a0449

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    check-cast v3, Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object v5, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 161
    .line 162
    if-eqz v5, :cond_5

    .line 163
    .line 164
    iget-object v5, v5, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move-object v5, v1

    .line 167
    .line 168
    .line 169
    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    const v3, 0x7f0a0448

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    check-cast v3, Landroid/widget/TextView;

    .line 179
    const/4 v5, 0x1

    .line 180
    .line 181
    new-array v5, v5, [Ljava/lang/Object;

    .line 182
    .line 183
    iget-object v6, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 184
    .line 185
    if-eqz v6, :cond_6

    .line 186
    .line 187
    iget-object v1, v6, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 188
    .line 189
    :cond_6
    if-nez v1, :cond_7

    .line 190
    .line 191
    const-string v1, ""

    .line 192
    .line 193
    :cond_7
    aput-object v1, v5, v2

    .line 194
    .line 195
    .line 196
    const v1, 0x7f120141

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    const v1, 0x7f0a043e

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    check-cast v0, Landroid/widget/TextView;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 215
    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    iget v1, v1, Lcom/narvii/model/User;->status:I

    .line 219
    .line 220
    if-ne v1, v4, :cond_8

    .line 221
    .line 222
    .line 223
    const v1, 0x7f121231

    .line 224
    goto :goto_4

    .line 225
    .line 226
    .line 227
    :cond_8
    const v1, 0x7f1203c8

    .line 228
    .line 229
    .line 230
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    .line 232
    goto/16 :goto_7

    .line 233
    .line 234
    :cond_9
    if-eqz v0, :cond_b

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    .line 238
    move-result v0

    .line 239
    .line 240
    if-eqz v0, :cond_b

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLoginPage()Landroid/view/View;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMainPage()Landroid/view/View;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getDisablePage()Landroid/view/View;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    .line 275
    const v2, 0x7f0a010c

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 282
    .line 283
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 287
    .line 288
    .line 289
    const v2, 0x7f0a010d

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    check-cast v0, Landroid/widget/TextView;

    .line 296
    .line 297
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 298
    .line 299
    if-eqz v2, :cond_a

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 303
    move-result-object v1

    .line 304
    .line 305
    .line 306
    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    goto :goto_7

    .line 308
    .line 309
    .line 310
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getLoginPage()Landroid/view/View;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getMainPage()Landroid/view/View;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getDisablePage()Landroid/view/View;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getSystemUserPage()Landroid/view/View;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMembershipView()V

    .line 339
    .line 340
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment;->user:Lcom/narvii/model/User;

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateBackground(Lcom/narvii/model/User;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 347
    move-result-object v0

    .line 348
    .line 349
    if-nez v0, :cond_c

    .line 350
    goto :goto_6

    .line 351
    .line 352
    .line 353
    :cond_c
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->showMultiTab()Z

    .line 354
    move-result v1

    .line 355
    .line 356
    if-eqz v1, :cond_d

    .line 357
    goto :goto_5

    .line 358
    :cond_d
    move v2, v3

    .line 359
    .line 360
    .line 361
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    :goto_6
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateTabCount()V

    .line 365
    :goto_7
    return-void
.end method
