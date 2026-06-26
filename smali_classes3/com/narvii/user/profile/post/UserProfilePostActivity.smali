.class public Lcom/narvii/user/profile/post/UserProfilePostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "UserProfilePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;
.implements Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/post/UserProfilePostActivity$ImgCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BackgroundPostActivity<",
        "Lcom/narvii/user/profile/post/UserProfilePost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/post/LocationPickerFragment$LocationListener;",
        "Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;"
    }
.end annotation


# static fields
.field static final ADVANCED_OPTIONS:I = 0x14

.field static final INSERT_IMG:I = 0x1c

.field static final MAX_MEDIA:I = 0x32

.field public static final REQUEST_MANAGE_TITLE:I = 0x6f

.field static final SORT_PHOTO_REQUEST:I = 0x3


# instance fields
.field private curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field editContent:Lcom/narvii/widget/EditTextIMG;

.field private framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

.field locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field private newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field rootView:Landroid/view/View;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrameSettingFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method private getShowUser(Lcom/narvii/user/profile/post/UserProfilePost;)Lcom/narvii/model/User;
    .locals 1

    if-nez p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    :cond_0
    if-eqz p1, :cond_2

    .line 623
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 628
    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->icon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    return-object v0

    .line 624
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    return-object p1
.end method

.method private loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 5

    const-string v0, "avatarFrameLoader"

    .line 565
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 566
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/SpinningView;

    .line 567
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v3, 0x7f0900f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 568
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 569
    invoke-direct {p0, v3, v4, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    const/4 v3, 0x0

    .line 570
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    .line 571
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v3, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    new-instance v4, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;

    invoke-direct {v4, p0, v1, p2, v2}, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/widget/SpinningView;Lcom/narvii/user/profile/post/UserProfilePost;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v3, p0, v4}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    return-void
.end method

.method private refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4

    const-string v0, "membership"

    .line 598
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 599
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 600
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v3, 0x7f090c10

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 603
    invoke-virtual {v2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 604
    invoke-direct {p0, p3}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->getShowUser(Lcom/narvii/user/profile/post/UserProfilePost;)Lcom/narvii/model/User;

    move-result-object p3

    .line 605
    invoke-virtual {v2, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 606
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    invoke-virtual {v2, p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    move-result p1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 613
    :goto_0
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const p3, 0x7f090720

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/MoodView;

    .line 614
    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    :goto_1
    return-void
.end method

.method private showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method private showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 556
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    goto :goto_0

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 558
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    :goto_0
    return-void
.end method

.method private showAvatarFrameSettingFragment()V
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    const v0, 0x7f0900fb

    const/4 v1, 0x0

    .line 532
    invoke-static {p0, v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 534
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 537
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_0

    .line 538
    iget-object v0, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_1

    .line 540
    iget-object v0, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 543
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    .line 546
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    const v1, 0x7f09086d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setMarginTopSize(I)V

    :cond_2
    return-void
.end method

.method private updateMood()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090720

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/MoodView;

    .line 430
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    invoke-static {v1, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 432
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 433
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    const-string v0, "uid"

    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v2
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    new-instance v1, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/user/profile/post/UserProfilePost;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    const-string v0, "userProfile"

    .line 351
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 352
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePost;->getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "account"

    .line 354
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 355
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void

    .line 361
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "preview"

    .line 362
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tab"

    const-string v1, "bio"

    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Preview"

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "profile"

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 370
    const-class v0, Lcom/narvii/model/Media;

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "mediaList"

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 373
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v4

    .line 377
    iput-object v3, v4, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 378
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 379
    invoke-virtual {p0, v4}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    :cond_0
    const/16 v3, 0x14

    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    const-string v3, "extensions"

    .line 384
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 386
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v4

    .line 387
    iput-object v3, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 388
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 389
    invoke-virtual {p0, v4}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    :cond_1
    const/16 v3, 0x1c

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    const-string v3, "refIdList"

    .line 393
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v1

    .line 397
    iput-object v0, v1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 398
    iput-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 399
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 400
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-static {v0, v3}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    .line 407
    iget-object p2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_3

    .line 408
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_3
    const-string p2, "list"

    .line 411
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/api/UserTitle;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 412
    sget-object p3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 413
    iget-object p3, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "customTitles"

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 414
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 415
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    :cond_4
    return-void
.end method

.method public synthetic onCancel()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener$-CC;->$default$onCancel(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x32

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 226
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz p1, :cond_3

    .line 227
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->customTitles()Ljava/util/List;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    const-class v0, Lcom/narvii/user/title/UserTitleManageFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 230
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x6f

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 236
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "userProfile"

    const-string v0, "draftId is null when click user avatar layout"

    .line 237
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "avatar"

    .line 241
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto/16 :goto_1

    .line 290
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    .line 291
    const-class v0, Lcom/narvii/post/PostOptionsFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 292
    iget-object p1, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extensions"

    .line 293
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x14

    .line 294
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 273
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    .line 274
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mediaList"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "dir"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "maximum"

    .line 277
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 278
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 263
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    .line 264
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    const p1, 0x7f0f0dd0

    .line 266
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    sub-int/2addr v1, p1

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto :goto_1

    .line 283
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    iget p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    goto :goto_1

    .line 259
    :sswitch_6
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrameSettingFragment()V

    goto :goto_1

    .line 247
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    new-instance v0, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    invoke-static {p0, p1, v0}, Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    .line 300
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090720 -> :sswitch_7
        0x7f09086d -> :sswitch_6
        0x7f09086f -> :sswitch_5
        0x7f090870 -> :sswitch_4
        0x7f09087a -> :sswitch_5
        0x7f09087b -> :sswitch_3
        0x7f0908a2 -> :sswitch_2
        0x7f090c10 -> :sswitch_1
        0x7f090c40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b05a3

    .line 132
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 133
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const-string p1, "userProfile"

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 136
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    const-string p1, "account"

    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 138
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    :cond_0
    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "locationPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 144
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    if-nez p1, :cond_1

    .line 145
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    const p1, 0x7f09098b

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const p1, 0x7f0902d0

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    const-string p1, "bio"

    .line 152
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    new-instance p1, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const p1, 0x7f090764

    .line 168
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v2, Lcom/narvii/user/profile/post/UserProfilePostActivity$ImgCallback;

    invoke-direct {v2, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$ImgCallback;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    iput-object v2, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    const p1, 0x7f090881

    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 172
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    new-instance v3, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    invoke-direct {v3, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string p1, "isOpenAvatarFrame"

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    new-instance p1, Lcom/narvii/user/profile/post/UserProfilePostActivity$2;

    invoke-direct {p1, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$2;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 421
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    const-string v0, "avatarFrameLoader"

    .line 422
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 423
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 330
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 316
    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 317
    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 318
    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v2

    iput v2, v0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 321
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 322
    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 324
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 325
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 793
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    if-eqz v0, :cond_0

    .line 796
    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    const/4 p1, 0x0

    .line 797
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 802
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    :cond_0
    return-void
.end method

.method public onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 309
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method protected onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "avatar"

    .line 335
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 337
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast p2, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 339
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v0, p2

    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    iput-object p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 340
    check-cast p2, Lcom/narvii/user/profile/post/UserProfilePost;

    iget-object p1, p2, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    const/16 p2, 0x32

    const v0, 0x7f0f0dd0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    const-string v0, "customTitles"

    .line 749
    instance-of v1, p2, Lcom/narvii/model/api/UserResponse;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 750
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object v1

    const-string v3, "account"

    .line 751
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 752
    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 754
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    const-string p1, "userProfile"

    .line 756
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->onPostLoaded(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 198
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 200
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_1

    .line 210
    iget-object v0, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_2

    .line 212
    iget-object v0, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 214
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V

    .line 215
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    const-string v0, "account"

    .line 188
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 189
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 191
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic onStartSubmit()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener$-CC;->$default$onStartSubmit(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    return-void
.end method

.method public synthetic onSubmitFail(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener$-CC;->$default$onSubmitFail(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public synthetic onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener$-CC;->$default$onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 699
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iget-object v2, v2, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 700
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 703
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v1, "membership"

    .line 707
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 708
    new-instance v6, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v2, "Profile Frame Picker"

    .line 709
    iput-object v2, v6, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 711
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 712
    new-instance v1, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/util/Callback;)V

    invoke-virtual {v6, p1, v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    goto :goto_2

    .line 723
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p2

    .line 724
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 725
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    new-instance p2, Lcom/narvii/user/profile/post/UserProfilePostActivity$7;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/narvii/user/profile/post/UserProfilePostActivity$7;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 732
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    .line 733
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 734
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_7

    .line 735
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 736
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 737
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 739
    :cond_6
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 740
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_7
    :goto_2
    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/user/profile/post/UserProfilePost;",
            ">;"
        }
    .end annotation

    .line 116
    const-class v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/user/profile/post/UserProfilePost;
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090764

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 640
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v2, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    const v1, 0x7f0902d0

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 643
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    iget v1, v1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    iget v1, v1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    iget-object v0, v0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location"

    .line 646
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 647
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/user/profile/post/UserProfilePost;

    iget v2, v2, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    iget v1, v1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    invoke-static {v2, v1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/location/LocationService;->getCachedReverseGeocoding(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    move-object v1, v0

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iput-object v2, v1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 655
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 10

    .line 438
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    .line 440
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090c10

    .line 450
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 451
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iput-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 455
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-direct {p0, v1, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 457
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    const v1, 0x7f090764

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 462
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f09086d

    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 468
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    const v2, 0x7f090870

    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 473
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f09087b

    .line 476
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 477
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_3

    .line 478
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f09050e

    .line 479
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0db3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    if-nez v1, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    .line 480
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 482
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 483
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 484
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f090571

    if-ne v8, v9, :cond_8

    .line 485
    check-cast v7, Lcom/narvii/widget/ThumbImageView;

    const/4 v8, 0x0

    if-nez v1, :cond_5

    goto :goto_5

    .line 486
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Media;

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 488
    invoke-virtual {v7, v8}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v8, :cond_7

    const/4 v8, 0x4

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 489
    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const v1, 0x7f0902d0

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 495
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 496
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :cond_a
    iget v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    if-nez v1, :cond_b

    iget v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 501
    :cond_b
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {v1}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    const v1, 0x7f09086f

    .line 503
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 504
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09089d

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 508
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09087a

    .line 510
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 511
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0908a2

    .line 515
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 516
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->customTitles()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f090c40

    .line 519
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090ba5

    .line 520
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 521
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906b8

    .line 525
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 526
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f08053e

    goto :goto_8

    :cond_d
    const p1, 0x7f08053f

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->validateUpload(Lcom/narvii/user/profile/post/UserProfilePost;)Z

    move-result p1

    return p1
.end method

.method protected validateUpload(Lcom/narvii/user/profile/post/UserProfilePost;)Z
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f090764

    .line 664
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0f0db0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 667
    :cond_0
    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    if-nez v0, :cond_1

    const p1, 0x7f0f0dae

    .line 668
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v1

    .line 672
    :cond_1
    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    const/16 v2, 0x32

    const v3, 0x7f0f0da9

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 676
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
