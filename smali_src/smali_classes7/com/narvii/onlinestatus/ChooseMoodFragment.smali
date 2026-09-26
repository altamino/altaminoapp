.class public Lcom/narvii/onlinestatus/ChooseMoodFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field changed:Z

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field moodSticker:Lcom/narvii/model/Sticker;

.field private moodView:Lcom/narvii/widget/MoodView;

.field receiver:Landroid/content/BroadcastReceiver;

.field public reset:Landroid/widget/TextView;

.field selectedSticker:Lcom/narvii/model/Sticker;

.field selectedStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field private stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

.field private user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/widget/MoodView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->resetMoodSticker()V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->updateAvatarLayout()V

    return-void
.end method

.method private resetMoodSticker()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V

    .line 18
    :cond_0
    return-void
.end method

.method private updateAvatarLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0f36

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f1202aa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "membership"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 20
    .line 21
    const-string p1, "user"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-class v0, Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/model/User;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    .line 36
    .line 37
    const-string p1, "moodSticker"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-class v0, Lcom/narvii/model/Sticker;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 65
    return-void

    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 68
    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    .line 70
    .line 71
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    .line 94
    const p1, -0xce6d01

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    new-instance v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 104
    .line 105
    .line 106
    const v1, 0x7f120402

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02f6

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->updateAvatarLayout()V

    .line 7
    .line 8
    .line 9
    const p2, 0x7f0a0989

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/widget/MoodView;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->resetMoodSticker()V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a0c2c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    move p2, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    .line 58
    .line 59
    new-instance p2, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string p2, "stickPicker"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 80
    .line 81
    if-nez p1, :cond_1

    .line 82
    .line 83
    new-instance p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 89
    .line 90
    new-instance p1, Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    const-string v1, "tabBottom"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    const-string v1, "showSelected"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    const-string v0, "source"

    .line 106
    .line 107
    const-string v1, "Profile"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a0da2

    .line 127
    .line 128
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 136
    .line 137
    :cond_1
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 145
    .line 146
    new-instance p2, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;

    .line 147
    .line 148
    .line 149
    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 153
    return-void
.end method
