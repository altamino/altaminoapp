.class public final Lcom/narvii/master/home/profile/ProfileListFragment;
.super Lcom/narvii/app/NVFragment;
.source "ProfileListFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/PostListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/ProfileListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileListFragment.kt\ncom/narvii/master/home/profile/ProfileListFragment\n*L\n1#1,551:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/master/home/profile/ProfileListFragment$Companion;

.field public static final KEY_SHOW_AVATAR_FRAME_PICKER:Ljava/lang/String; = "show_picker"


# instance fields
.field private final REQ_CODE_USER_PROFILE:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field public accountService:Lcom/narvii/account/AccountService;

.field private final aminoIdRightChevron$delegate:Lkotlin/Lazy;

.field private final avatarLayout$delegate:Lkotlin/Lazy;

.field private final backgroundPickerView$delegate:Lkotlin/Lazy;

.field private final btnEditAvatarFrame$delegate:Lkotlin/Lazy;

.field private final commentPermissionLayout$delegate:Lkotlin/Lazy;

.field private final communityLogolayout$delegate:Lkotlin/Lazy;

.field private final contentLayout$delegate:Lkotlin/Lazy;

.field private curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field public dir:Ljava/io/File;

.field private final editAminoIdLayout$delegate:Lkotlin/Lazy;

.field private final editBioLayout$delegate:Lkotlin/Lazy;

.field private final editUsernameLayout$delegate:Lkotlin/Lazy;

.field private final edtNickname$delegate:Lkotlin/Lazy;

.field private framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

.field private isRequestSent:Z

.field private final ivCommunity1$delegate:Lkotlin/Lazy;

.field private final ivCommunity2$delegate:Lkotlin/Lazy;

.field private final ivCommunity3$delegate:Lkotlin/Lazy;

.field private final ivCommunity4$delegate:Lkotlin/Lazy;

.field private final ivCommunity5$delegate:Lkotlin/Lazy;

.field private final linkedCommunitiesLayout$delegate:Lkotlin/Lazy;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field public progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private final retryListener:Landroid/view/View$OnClickListener;

.field private final scrollView$delegate:Lkotlin/Lazy;

.field private statusView:Lcom/narvii/paging/state/PageStatusView;

.field private final tvAminoId$delegate:Lkotlin/Lazy;

.field private final tvBio$delegate:Lkotlin/Lazy;

.field private final tvCommentPermission$delegate:Lkotlin/Lazy;

.field private user:Lcom/narvii/model/User;

.field private final userProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x15

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "edtNickname"

    const-string v4, "getEdtNickname()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "btnEditAvatarFrame"

    const-string v4, "getBtnEditAvatarFrame()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "avatarLayout"

    const-string v4, "getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "contentLayout"

    const-string v4, "getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backgroundPickerView"

    const-string v4, "getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editAminoIdLayout"

    const-string v4, "getEditAminoIdLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editUsernameLayout"

    const-string v4, "getEditUsernameLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editBioLayout"

    const-string v4, "getEditBioLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "linkedCommunitiesLayout"

    const-string v4, "getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "commentPermissionLayout"

    const-string v4, "getCommentPermissionLayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvBio"

    const-string v4, "getTvBio()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvAminoId"

    const-string v4, "getTvAminoId()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "aminoIdRightChevron"

    const-string v4, "getAminoIdRightChevron()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scrollView"

    const-string v4, "getScrollView()Lcom/narvii/widget/NVScrollView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "communityLogolayout"

    const-string v4, "getCommunityLogolayout()Landroid/widget/LinearLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ivCommunity1"

    const-string v4, "getIvCommunity1()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ivCommunity2"

    const-string v4, "getIvCommunity2()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ivCommunity3"

    const-string v4, "getIvCommunity3()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ivCommunity4"

    const-string v4, "getIvCommunity4()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ivCommunity5"

    const-string v4, "getIvCommunity5()Lcom/narvii/widget/NVImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "tvCommentPermission"

    const-string v4, "getTvCommentPermission()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/master/home/profile/ProfileListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/ProfileListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/ProfileListFragment;->Companion:Lcom/narvii/master/home/profile/ProfileListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/16 v0, 0x65

    .line 62
    iput v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->REQ_CODE_USER_PROFILE:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    const v0, 0x7f0903c7

    .line 72
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->edtNickname$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903be

    .line 73
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->btnEditAvatarFrame$delegate:Lkotlin/Lazy;

    const v0, 0x7f090c10

    .line 74
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->avatarLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902d8

    .line 75
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->contentLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f090109

    .line 76
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->backgroundPickerView$delegate:Lkotlin/Lazy;

    const v0, 0x7f09063d

    .line 77
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editAminoIdLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f09063e

    .line 78
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editUsernameLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f09063c

    .line 79
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editBioLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f090641

    .line 80
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->linkedCommunitiesLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f09063a

    .line 81
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->commentPermissionLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f090bf0

    .line 82
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvBio$delegate:Lkotlin/Lazy;

    const v0, 0x7f090bef

    .line 83
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvAminoId$delegate:Lkotlin/Lazy;

    const v0, 0x7f09009d

    .line 84
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->aminoIdRightChevron$delegate:Lkotlin/Lazy;

    const v0, 0x7f0909c4

    .line 85
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->scrollView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902b5

    .line 87
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->communityLogolayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905fd

    .line 88
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity1$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905fe

    .line 89
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity2$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905ff

    .line 90
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity3$delegate:Lkotlin/Lazy;

    const v0, 0x7f090600

    .line 91
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity4$delegate:Lkotlin/Lazy;

    const v0, 0x7f090601

    .line 92
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity5$delegate:Lkotlin/Lazy;

    const v0, 0x7f090bf2

    .line 93
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvCommentPermission$delegate:Lkotlin/Lazy;

    .line 282
    new-instance v0, Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method public static final synthetic access$setCurLoadingFrame$p(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-void
.end method

.method private final bind(Lcom/narvii/master/home/profile/ProfileListFragment;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/master/home/profile/ProfileListFragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 288
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/master/home/profile/ProfileListFragment$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment$bind$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 6

    const-string v0, "avatarFrameLoader"

    .line 455
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 456
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v3, 0x7f0900f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SpinningView;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 457
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const v4, 0x7f0900f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 458
    :goto_1
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 459
    invoke-static {p0, v2, v5, v4, v2}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 460
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_3

    const/16 v2, 0x8

    .line 461
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_3
    iget-object v2, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    const-string v4, "avatarFrame.frameId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/narvii/master/home/profile/ProfileListFragment$loadAvatarFrame$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/widget/SpinningView;Landroid/view/View;)V

    invoke-virtual {v0, p1, v2, p0, v4}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    return-void
.end method

.method private final refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V
    .locals 2

    const-string v0, "membership"

    .line 484
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 485
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 486
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    const-string v1, "membershipService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isSubscribeMemberShip()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method static synthetic refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 483
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V

    return-void
.end method

.method public static synthetic sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest(Z)V

    return-void
.end method

.method private final showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 446
    invoke-static {p0, v0, p1, v1, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 448
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAminoIdRightChevron()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->aminoIdRightChevron$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->avatarLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    return-object v0
.end method

.method protected final getBackgroundMediaPickerFlag()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public final getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->backgroundPickerView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BackgroundPickerView;

    return-object v0
.end method

.method public final getBtnEditAvatarFrame()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->btnEditAvatarFrame$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getCommentPermissionLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->commentPermissionLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getCommunityLogolayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->communityLogolayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->contentLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getEditAminoIdLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editAminoIdLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getEditBioLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editBioLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getEditUsernameLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->editUsernameLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getEdtNickname()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->edtNickname$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIvCommunity1()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity1$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getIvCommunity2()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity2$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getIvCommunity3()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity3$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getIvCommunity4()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity4$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getIvCommunity5()Lcom/narvii/widget/NVImageView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->ivCommunity5$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->linkedCommunitiesLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ProfileEditingPage"

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "progressDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRetryListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getScrollView()Lcom/narvii/widget/NVScrollView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->scrollView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVScrollView;

    return-object v0
.end method

.method protected final getStatusView()Lcom/narvii/paging/state/PageStatusView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    return-object v0
.end method

.method public final getTvAminoId()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvAminoId$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvBio()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvBio$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvCommentPermission()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->tvCommentPermission$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/master/home/profile/ProfileListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUser()Lcom/narvii/model/User;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    return-object v0
.end method

.method public final getUserProfiles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isRequestSent()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string p1, "dir"

    .line 126
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    const-string v0, "cid"

    .line 397
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "object"

    .line 398
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    const-string v1, "timestamp"

    .line 399
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 400
    iget v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->REQ_CODE_USER_PROFILE:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 402
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 403
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->userProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    .line 402
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 540
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 541
    instance-of v0, p1, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    if-eqz v0, :cond_0

    .line 542
    check-cast p1, Lcom/narvii/monetization/avatarframe/SwipeableFragment;

    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 540
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 422
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f0903be

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_7

    .line 191
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getScrollView()Lcom/narvii/widget/NVScrollView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 192
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "EditProfileFrame"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 193
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lcom/narvii/app/NVActivity;

    if-nez v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0900fb

    invoke-static {p1, v1, v3}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 195
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    if-eqz p1, :cond_1e

    .line 197
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    goto :goto_2

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v0

    .line 202
    :goto_2
    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    :cond_6
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V

    .line 203
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setMarginTopSize(I)V

    goto/16 :goto_a

    :cond_7
    :goto_3
    const v1, 0x7f090c10

    const-string v4, "dir"

    const-string v5, "0"

    if-nez p1, :cond_8

    goto :goto_4

    .line 208
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_c

    .line 209
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getScrollView()Lcom/narvii/widget/NVScrollView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 210
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "EditUserIcon"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 211
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "avatar"

    .line 212
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    if-eqz v1, :cond_b

    invoke-direct {p1, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 217
    :cond_9
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_1e

    .line 218
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v1, :cond_1e

    .line 219
    new-instance v2, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;

    invoke-direct {v2, p0, p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V

    .line 220
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_a

    invoke-virtual {v2, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->pickIcon(Lcom/narvii/model/User;)V

    goto/16 :goto_a

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 213
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    const v1, 0x7f09063d

    if-nez p1, :cond_d

    goto :goto_5

    .line 225
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 226
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    const-class p1, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 231
    :cond_e
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0109

    invoke-static {v0, p1, v1}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 227
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    const v1, 0x7f09063c

    if-nez p1, :cond_12

    goto :goto_6

    .line 235
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_13

    .line 236
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_1e

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    new-instance v1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-direct {v1, p1}, Lcom/narvii/user/profile/post/UserProfilePost;-><init>(Lcom/narvii/model/User;)V

    .line 240
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "userProfile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bio"

    .line 242
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "supportImage"

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Edit Bio"

    .line 244
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "loggingSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_13
    :goto_6
    const v1, 0x7f090641

    if-nez p1, :cond_14

    goto :goto_7

    .line 249
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_15

    .line 250
    const-class p1, Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_15
    :goto_7
    const v1, 0x7f09063a

    if-nez p1, :cond_16

    goto :goto_8

    .line 254
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_17

    .line 255
    const-class p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 256
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f02a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "subTitle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "privilegeKey"

    const-string v1, "privilegeOfCommentOnUserProfile"

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isDarkTheme"

    .line 259
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :cond_17
    :goto_8
    const v1, 0x7f09063e

    if-nez p1, :cond_18

    goto :goto_9

    .line 262
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_19

    .line 263
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_1e

    .line 264
    sget-object v0, Lcom/narvii/master/home/profile/EditUsernameFragment;->Companion:Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/profile/EditUsernameFragment$Companion;->intent(Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :cond_19
    :goto_9
    const v1, 0x7f090109

    if-nez p1, :cond_1a

    goto :goto_a

    .line 267
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1e

    .line 268
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    if-eqz v1, :cond_1d

    invoke-direct {p1, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 272
    :cond_1b
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_1e

    .line 273
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v1, :cond_1e

    .line 274
    new-instance v2, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;

    invoke-direct {v2, p0, p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V

    .line 275
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_1c

    invoke-virtual {v2, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->pickBackground(Lcom/narvii/model/User;)V

    goto :goto_a

    :cond_1c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 268
    :cond_1d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<AccountService>(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    const p1, 0x7f0f0bf0

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Lcom/narvii/media/MediaPickerFragment;

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 109
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_3

    .line 110
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 113
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 114
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    const-string v2, "profiles"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    .line 115
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 116
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void

    :cond_6
    const-string p1, "dir"

    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02ca

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    const-string v0, "avatarFrameLoader"

    .line 411
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 412
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 384
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_4

    .line 385
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v2, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    .line 388
    iput-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 389
    invoke-static {p0, v0, p1, v1, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->refreshUserAvatar$default(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZILjava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateHeader()V

    goto :goto_2

    .line 387
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.User"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "accountService"

    .line 386
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 417
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 181
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    :cond_0
    const-string p1, "progressDialog"

    .line 180
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 169
    instance-of p1, p2, Lcom/narvii/model/api/UserResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 170
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/UserResponse;

    iget-object v2, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v1, :cond_0

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    const-string p1, "accountService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_2
    const-string p1, "progressDialog"

    .line 175
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostProgress(Lcom/narvii/post/PostHelper;II)V
    .locals 0

    return-void
.end method

.method public onPostStart(Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void

    :cond_0
    const-string p1, "progressDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStartSubmit()V
    .locals 1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "progressDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    :goto_0
    return-void
.end method

.method public onSubmitFail(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090aa6

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/paging/state/PageStatusView;

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    .line 145
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->retryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditUsernameLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBtnEditAvatarFrame()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditAminoIdLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEditBioLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommentPermissionLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public final postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 493
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_6

    :cond_1
    iget-object v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 494
    iget-object v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget-object v4, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_7

    .line 497
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string v3, "membership"

    .line 501
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/wallet/MembershipService;

    .line 502
    new-instance v6, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v4, "membershipService"

    if-eqz p1, :cond_8

    .line 504
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result v5

    if-ne v5, v0, :cond_8

    .line 505
    new-instance v0, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$1;

    invoke-direct {v0, p2}, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$1;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v6, p1, v1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_9

    .line 512
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p2

    goto :goto_6

    :cond_9
    move-object p2, v2

    :goto_6
    if-eqz p1, :cond_a

    .line 513
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v2

    :cond_a
    if-eqz p2, :cond_b

    if-eqz v2, :cond_b

    .line 514
    invoke-virtual {v2}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 515
    new-instance p2, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;

    move-object v4, p2

    move-object v5, p0

    move-object v7, p1

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/narvii/master/home/profile/ProfileListFragment$postAvatarFrame$dialog$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 520
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_7

    :cond_b
    if-eqz p2, :cond_d

    .line 522
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_d

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_d

    .line 523
    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 524
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 525
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_7

    .line 527
    :cond_c
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 528
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_d
    :goto_7
    return-void
.end method

.method public final sendGlobalProfileRequest(Z)V
    .locals 11

    .line 292
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    .line 297
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 299
    :cond_3
    new-instance v4, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    const/4 v0, 0x2

    invoke-direct {v4, p0, v2, v0, v2}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;

    invoke-direct {v6, p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;-><init>(Lcom/narvii/master/home/profile/ProfileListFragment;Z)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move v7, p1

    invoke-static/range {v4 .. v10}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setDir(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->dir:Ljava/io/File;

    return-void
.end method

.method public final setMediaPickerFragment(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method public final setProgressDialog(Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    return-void
.end method

.method protected final setStatusView(Lcom/narvii/paging/state/PageStatusView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    return-void
.end method

.method public final setUser(Lcom/narvii/model/User;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public final updateHeader()V
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    move-result v1

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 335
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAminoIdRightChevron()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvAminoId()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 338
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAminoIdRightChevron()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getEdtNickname()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 344
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvBio()Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_6

    const v0, 0x7f0f0df2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v0}, Lcom/narvii/util/text/NVText;->removeTitleTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 346
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/BackgroundPickerView;->setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V

    .line 348
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-nez v0, :cond_8

    .line 350
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommunityLogolayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getCommunityLogolayout()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez v0, :cond_b

    .line 360
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity1()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v6, :cond_9

    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    goto :goto_7

    :cond_9
    move-object v6, v2

    :goto_7
    if-eqz v6, :cond_a

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Community;

    iget-object v6, v6, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_8

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_b
    :goto_8
    if-le v0, v3, :cond_e

    .line 364
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity2()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v6, :cond_c

    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    goto :goto_9

    :cond_c
    move-object v6, v2

    :goto_9
    if-eqz v6, :cond_d

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    iget-object v3, v3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_a

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_e
    :goto_a
    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    .line 368
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity3()Lcom/narvii/widget/NVImageView;

    move-result-object v3

    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v6, :cond_f

    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    goto :goto_b

    :cond_f
    move-object v6, v2

    :goto_b
    if-eqz v6, :cond_10

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_c

    :cond_10
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_11
    :goto_c
    const/4 v1, 0x3

    if-le v0, v1, :cond_14

    .line 372
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity4()Lcom/narvii/widget/NVImageView;

    move-result-object v3

    iget-object v6, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v6, :cond_12

    iget-object v6, v6, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    goto :goto_d

    :cond_12
    move-object v6, v2

    :goto_d
    if-eqz v6, :cond_13

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_e

    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_14
    :goto_e
    if-le v0, v4, :cond_17

    .line 376
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getIvCommunity5()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    goto :goto_f

    :cond_15
    move-object v1, v2

    :goto_f
    if-eqz v1, :cond_16

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_10

    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 380
    :cond_17
    :goto_10
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getTvCommentPermission()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->user:Lcom/narvii/model/User;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "privilegeOfCommentOnUserProfile"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 330
    :cond_19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_1a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final updateViews()V
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->statusView:Lcom/narvii/paging/state/PageStatusView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    move-result-object v0

    iget-boolean v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment;->isRequestSent:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
