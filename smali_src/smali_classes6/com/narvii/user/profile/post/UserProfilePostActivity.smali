.class public Lcom/narvii/user/profile/post/UserProfilePostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrameSettingFragment()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method private getShowUser(Lcom/narvii/user/profile/post/UserProfilePost;)Lcom/narvii/model/User;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/User;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->icon()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 29
    return-object p1
.end method

.method private loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "avatarFrameLoader"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a0182

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/widget/SpinningView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0a0180

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v3, v4, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v3, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v4, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, p0, v1, p2, v2}, Lcom/narvii/user/profile/post/UserProfilePostActivity$4;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/widget/SpinningView;Lcom/narvii/user/profile/post/UserProfilePost;Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v3, p0, v4}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    .line 57
    return-void
.end method

.method private refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "membership"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0a0f36

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->getShowUser(Lcom/narvii/user/profile/post/UserProfilePost;)Lcom/narvii/model/User;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p2}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getMoodColor()I

    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 74
    .line 75
    :goto_0
    iget-object p2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0a0989

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    check-cast p2, Lcom/narvii/widget/MoodView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lcom/narvii/widget/MoodView;->updateMoodColor(I)V

    .line 88
    :goto_1
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method private showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->loadAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    :goto_0
    return-void
.end method

.method private showAvatarFrameSettingFragment()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a018a

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0a0b29

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setMarginTopSize(I)V

    .line 61
    :cond_2
    return-void
.end method

.method private updateMood()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0989

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/MoodView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Lcom/narvii/util/MoodHelper;->getMood(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)Lcom/narvii/model/Sticker;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    xor-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/user/profile/post/UserProfilePostActivity;)Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->curLoadingFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->refreshUserAvatar(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;ZLcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method


# virtual methods
.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "uid"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 15
    return-object v2
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPost(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 2
    new-instance v1, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity$5;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/user/profile/post/UserProfilePost;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    const-string/jumbo v0, "userProfile"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/narvii/user/profile/post/UserProfilePost;->getPreviewUser(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "account"

    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "preview"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "tab"

    const-string v1, "bio"

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Preview"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    const-class v1, Lcom/narvii/model/Media;

    .line 7
    .line 8
    const-string v2, "mediaList"

    .line 9
    const/4 v3, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    if-ne p2, v3, :cond_0

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    iput-object v0, v4, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 37
    .line 38
    :cond_0
    const/16 v0, 0x14

    .line 39
    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    if-ne p2, v3, :cond_1

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    const-string v0, "extensions"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    iput-object v0, v4, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 61
    .line 62
    iput-object v4, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v4}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 66
    .line 67
    :cond_1
    const/16 v0, 0x1c

    .line 68
    .line 69
    if-ne p1, v0, :cond_2

    .line 70
    .line 71
    if-ne p2, v3, :cond_2

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    const-string v0, "refIdList"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iput-object v1, v2, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 102
    .line 103
    iput-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/narvii/util/text/IMGUtils;->insertEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 112
    .line 113
    :cond_2
    const/16 v0, 0x6f

    .line 114
    .line 115
    if-ne p1, v0, :cond_4

    .line 116
    .line 117
    if-ne p2, v3, :cond_4

    .line 118
    .line 119
    if-eqz p3, :cond_4

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iget-object p2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 126
    .line 127
    if-nez p2, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    iput-object p2, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 134
    .line 135
    :cond_3
    const-string p2, "list"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    const-class p3, Lcom/narvii/model/api/UserTitle;

    .line 142
    .line 143
    .line 144
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    sget-object p3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    check-cast p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 154
    .line 155
    iget-object p3, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 156
    .line 157
    const-string v0, "customTitles"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 161
    .line 162
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 166
    :cond_4
    return-void
.end method

.method public synthetic onCancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/e;->a(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    const/16 v1, 0x32

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->customTitles()Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const-class v0, Lcom/narvii/user/title/UserTitleManageFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "list"

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    const/16 p1, 0x6f

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    .line 60
    .line 61
    const-string/jumbo p1, "userProfile"

    .line 62
    .line 63
    const-string v0, "draftId is null when click user avatar layout"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 68
    .line 69
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    const-string v1, "avatar"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 87
    move-result-object v1

    .line 88
    const/4 v3, 0x6

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    .line 96
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    const-class v0, Lcom/narvii/post/PostOptionsFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string v1, "extensions"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    const/16 p1, 0x14

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    .line 124
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    const-string v2, "mediaList"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    const-string v2, "dir"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    const-string p1, "maximum"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const/4 p1, 0x3

    .line 166
    .line 167
    .line 168
    invoke-static {p0, v0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 169
    goto :goto_1

    .line 170
    .line 171
    .line 172
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 176
    .line 177
    if-eqz p1, :cond_1

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 181
    move-result v0

    .line 182
    .line 183
    if-lt v0, v1, :cond_1

    .line 184
    .line 185
    .line 186
    const p1, 0x7f120efb

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-static {p0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 198
    goto :goto_1

    .line 199
    .line 200
    :cond_1
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 203
    .line 204
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 208
    move-result-object v3

    .line 209
    .line 210
    if-nez p1, :cond_2

    .line 211
    move p1, v2

    .line 212
    goto :goto_0

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 216
    move-result p1

    .line 217
    :goto_0
    sub-int/2addr v1, p1

    .line 218
    const/4 p1, 0x0

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 222
    goto :goto_1

    .line 223
    .line 224
    .line 225
    :sswitch_5
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    if-eqz p1, :cond_3

    .line 229
    .line 230
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 231
    .line 232
    iget v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 233
    .line 234
    iget p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2, p1, v0}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    .line 238
    goto :goto_1

    .line 239
    .line 240
    .line 241
    :sswitch_6
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrameSettingFragment()V

    .line 242
    goto :goto_1

    .line 243
    .line 244
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 245
    .line 246
    new-instance v0, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$3;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    .line 250
    .line 251
    .line 252
    invoke-static {p0, p1, v0}, Lcom/narvii/util/MoodHelper;->popupOnlineStatusMenu(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V

    .line 253
    .line 254
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    if-eqz p1, :cond_4

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 264
    :cond_4
    return-void

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    :sswitch_data_0
    .sparse-switch
        0x7f0a0989 -> :sswitch_7
        0x7f0a0b29 -> :sswitch_6
        0x7f0a0b2b -> :sswitch_5
        0x7f0a0b2c -> :sswitch_4
        0x7f0a0b36 -> :sswitch_5
        0x7f0a0b37 -> :sswitch_3
        0x7f0a0b5f -> :sswitch_2
        0x7f0a0f36 -> :sswitch_1
        0x7f0a0f62 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d064a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "userProfile"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-class v0, Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/User;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, "account"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v0, "locationPicker"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/post/LocationPickerFragment;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    new-instance p1, Lcom/narvii/post/LocationPickerFragment;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 91
    .line 92
    iput-object p0, p1, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 93
    .line 94
    .line 95
    const p1, 0x7f0a0c4c

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    const p1, 0x7f0a039d

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/widget/EditTextIMG;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 113
    .line 114
    const-string p1, "bio"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    const-wide/16 v0, 0xc8

    .line 121
    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$1;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 136
    goto :goto_0

    .line 137
    .line 138
    .line 139
    :cond_2
    const p1, 0x7f0a09f9

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 147
    .line 148
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 149
    .line 150
    new-instance v2, Lcom/narvii/user/profile/post/UserProfilePostActivity$ImgCallback;

    .line 151
    .line 152
    .line 153
    invoke-direct {v2, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$ImgCallback;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    .line 154
    .line 155
    iput-object v2, p1, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 156
    .line 157
    .line 158
    const p1, 0x7f0a0b3d

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 165
    .line 166
    new-instance v3, Lcom/narvii/post/BasePostActivity$HideHintWatcher;

    .line 167
    .line 168
    .line 169
    invoke-direct {v3, p1}, Lcom/narvii/post/BasePostActivity$HideHintWatcher;-><init>(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    .line 174
    const-string p1, "isOpenAvatarFrame"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 178
    move-result p1

    .line 179
    .line 180
    if-eqz p1, :cond_3

    .line 181
    .line 182
    new-instance p1, Lcom/narvii/user/profile/post/UserProfilePostActivity$2;

    .line 183
    .line 184
    .line 185
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity$2;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 189
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 4
    .line 5
    const-string v0, "avatarFrameLoader"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 8
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 11
    .line 12
    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 13
    .line 14
    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 19
    move-result v2

    .line 20
    .line 21
    iput v2, v0, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 35
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "update"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/User;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 26
    const/4 p1, 0x0

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onPickAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 6
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v1, "avatar"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    const/4 p2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v0

    .line 15
    .line 16
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/Media;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p2, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 42
    move-object v0, p2

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 45
    .line 46
    iput-object p1, v0, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 47
    .line 48
    check-cast p2, Lcom/narvii/user/profile/post/UserProfilePost;

    .line 49
    .line 50
    iget-object p1, p2, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    .line 51
    .line 52
    const/16 p2, 0x32

    .line 53
    .line 54
    .line 55
    const v0, 0x7f120efb

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "customTitles"

    .line 3
    .line 4
    instance-of v1, p2, Lcom/narvii/model/api/UserResponse;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/model/api/UserResponse;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v3, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iget-object v4, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1, v4, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p1, "userProfile"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-class v1, Lcom/narvii/model/User;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/model/User;

    .line 46
    .line 47
    const-string v1, "statistics"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 54
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    if-eqz p1, :cond_a

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    :try_start_0
    iget-object v4, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v5, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    move-result v4

    .line 75
    .line 76
    if-nez v4, :cond_1

    .line 77
    .line 78
    const-string v4, "Nickname"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    :cond_1
    iget-object v4, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v5, p2, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    const-string v4, "Icon"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    :cond_2
    iget-object v4, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v5, p2, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    move-result v4

    .line 105
    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    const-string v4, "Bio"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    :cond_3
    iget-object v4, p1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 114
    .line 115
    iget-object v5, p2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 119
    move-result v4

    .line 120
    .line 121
    if-nez v4, :cond_4

    .line 122
    .line 123
    const-string v4, "Image"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    :cond_4
    iget-object v4, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v5, p2, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    move-result v4

    .line 135
    .line 136
    if-eqz v4, :cond_5

    .line 137
    .line 138
    iget v4, p1, Lcom/narvii/model/User;->latitude:I

    .line 139
    .line 140
    iget v5, p2, Lcom/narvii/model/User;->latitude:I

    .line 141
    .line 142
    if-ne v4, v5, :cond_5

    .line 143
    .line 144
    iget v4, p1, Lcom/narvii/model/User;->longitude:I

    .line 145
    .line 146
    iget v5, p2, Lcom/narvii/model/User;->longitude:I

    .line 147
    .line 148
    if-eq v4, v5, :cond_6

    .line 149
    .line 150
    :cond_5
    const-string v4, "Location"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_6
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBackgroundColor()I

    .line 157
    move-result v4

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/narvii/model/User;->getBackgroundColor()I

    .line 161
    move-result v5

    .line 162
    .line 163
    if-ne v4, v5, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 167
    move-result-object v4

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    .line 174
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    move-result v4

    .line 176
    .line 177
    if-nez v4, :cond_8

    .line 178
    .line 179
    :cond_7
    const-string v4, "Background"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    :cond_8
    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 185
    .line 186
    new-array v4, v2, [Ljava/lang/String;

    .line 187
    const/4 v5, 0x0

    .line 188
    .line 189
    aput-object v0, v4, v5

    .line 190
    .line 191
    .line 192
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    iget-object p2, p2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 196
    .line 197
    new-array v2, v2, [Ljava/lang/String;

    .line 198
    .line 199
    aput-object v0, v2, v5

    .line 200
    .line 201
    .line 202
    invoke-static {p2, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 203
    move-result-object p2

    .line 204
    .line 205
    .line 206
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    move-result p1

    .line 208
    .line 209
    if-nez p1, :cond_9

    .line 210
    .line 211
    const-string p1, "Manage Titles"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    :catch_0
    :cond_9
    const-string p1, "Edit User Profile"

    .line 217
    .line 218
    .line 219
    invoke-interface {v1, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    const-string p2, ","

    .line 223
    .line 224
    .line 225
    invoke-static {v3, p2}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object p2

    .line 227
    .line 228
    const-string v0, "Changes"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    const-string p2, "Source"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    move-result-object p2

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    const-string p2, "Profile Edited Total"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 248
    :cond_a
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->onPostLoaded(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 4
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 6
    iget-object v1, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V

    iget-object p1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->framePickerFragment:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 9
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->setCurSelectedFrameId(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 24
    :cond_0
    return-void
.end method

.method public synthetic onStartSubmit()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/e;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V

    return-void
.end method

.method public synthetic onSubmitFail(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/avatarframe/e;->c(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public synthetic onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/avatarframe/e;->d(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->user:Lcom/narvii/model/User;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    const-string v0, "membership"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 43
    .line 44
    new-instance v5, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    .line 49
    const-string v1, "Profile Frame Picker"

    .line 50
    .line 51
    iput-object v1, v5, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0, p2}, Lcom/narvii/user/profile/post/UserProfilePostActivity$6;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/util/Callback;)V

    .line 67
    const/4 p2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p1, p2, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 87
    move-result v1

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    new-instance p2, Lcom/narvii/user/profile/post/UserProfilePostActivity$7;

    .line 92
    move-object v1, p2

    .line 93
    move-object v2, p0

    .line 94
    move-object v3, p0

    .line 95
    move-object v4, p1

    .line 96
    move-object v6, p1

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v1 .. v6}, Lcom/narvii/user/profile/post/UserProfilePostActivity$7;-><init>(Lcom/narvii/user/profile/post/UserProfilePostActivity;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_3
    if-eqz p2, :cond_5

    .line 106
    .line 107
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 108
    const/4 p2, 0x2

    .line 109
    .line 110
    if-ne p1, p2, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 120
    move-result p1

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_4
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 140
    :cond_5
    :goto_0
    return-void

    .line 141
    .line 142
    :cond_6
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 146
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

    const-class v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    move-result-object v0

    return-object v0
.end method

.method protected savePost()Lcom/narvii/user/profile/post/UserProfilePost;
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a09f9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    check-cast v2, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    const v1, 0x7f0a039d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 5
    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
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

    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
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

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 9
    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/post/UserProfilePost;->address:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 10
    move-object v1, v0

    check-cast v1, Lcom/narvii/user/profile/post/UserProfilePost;

    iget-object v2, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iput-object v2, v1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 11
    check-cast v0, Lcom/narvii/user/profile/post/UserProfilePost;

    return-object v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "uid"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V

    return-void
.end method

.method protected updateView(Lcom/narvii/user/profile/post/UserProfilePost;)V
    .locals 10

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a0f36

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 5
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iput-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->newSelectedFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 7
    invoke-direct {p0, v1, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->showAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/user/profile/post/UserProfilePost;)V

    .line 8
    invoke-direct {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->updateMood()V

    const v1, 0x7f0a09f9

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f0a0b29

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    const v2, 0x7f0a0b2c

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 16
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0b37

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 19
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a0666

    .line 21
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    if-nez v1, :cond_4

    move v7, v4

    goto :goto_3

    .line 22
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120ede

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    check-cast v2, Landroid/view/ViewGroup;

    move v5, v4

    move v6, v5

    .line 24
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 25
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f12082d

    .line 26
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 27
    check-cast v7, Lcom/narvii/widget/ThumbImageView;

    const/4 v8, 0x0

    if-nez v1, :cond_5

    goto :goto_5

    .line 28
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

    .line 29
    invoke-virtual {v7, v8}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v8, :cond_7

    const/4 v8, 0x4

    goto :goto_6

    :cond_7
    move v8, v4

    .line 30
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const v1, 0x7f0a039d

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 33
    iget-object v2, p1, Lcom/narvii/user/profile/post/UserProfilePost;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_a
    iget v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->latitude:I

    if-nez v1, :cond_b

    iget v1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->longitude:I

    :cond_b
    iget-object v1, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 35
    invoke-virtual {v1}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    const v1, 0x7f0a0b2b

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b5a

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b36

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0b5f

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p1}, Lcom/narvii/user/profile/post/UserProfilePost;->customTitles()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0a0f62

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move v3, v4

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0ebc

    .line 48
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0846

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f08066a

    goto :goto_8

    :cond_d
    const p1, 0x7f08066b

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->validateUpload(Lcom/narvii/user/profile/post/UserProfilePost;)Z

    move-result p1

    return p1
.end method

.method protected validateUpload(Lcom/narvii/user/profile/post/UserProfilePost;)Z
    .locals 4

    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->rootView:Landroid/view/View;

    const v1, 0x7f0a09f9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f120edb

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->icon:Ljava/lang/String;

    if-nez v0, :cond_1

    const p1, 0x7f120ed9

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/post/BasePostActivity;->showAlert(I)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    const/16 v2, 0x32

    const v3, 0x7f120ed4

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/post/UserProfilePostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/user/profile/post/UserProfilePost;->mediaList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/narvii/user/profile/post/UserProfilePostActivity;->savePost()Lcom/narvii/user/profile/post/UserProfilePost;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
