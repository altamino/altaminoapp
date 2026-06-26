.class public Lcom/narvii/onlinestatus/ChooseMoodFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChooseMoodFragment.java"


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

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$1;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    iput-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->updateAvatarLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->resetMoodSticker()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/widget/MoodView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    return-object p0
.end method

.method private resetMoodSticker()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    iget-object v3, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v3}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V

    :cond_0
    return-void
.end method

.method private updateAvatarLayout()V
    .locals 3

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 163
    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0265

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "membership"

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p1, "user"

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    const-string p1, "moodSticker"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Sticker;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Sticker;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    .line 71
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 72
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f03aa

    const v0, -0xce6d01

    .line 79
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$2;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02c3

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 168
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->updateAvatarLayout()V

    const p2, 0x7f090720

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/MoodView;

    iput-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    .line 173
    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 174
    invoke-direct {p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->resetMoodSticker()V

    .line 175
    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodView:Lcom/narvii/widget/MoodView;

    new-instance v1, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09096e

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    .line 185
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->reset:Landroid/widget/TextView;

    new-instance p2, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$4;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "stickPicker"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 200
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-nez p1, :cond_1

    .line 201
    new-instance p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 202
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabBottom"

    .line 203
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showSelected"

    .line 204
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "source"

    const-string v1, "Profile"

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090aa8

    iget-object v1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object p2, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->moodSticker:Lcom/narvii/model/Sticker;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 211
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment;->stickerPickerTabFragment:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    new-instance p2, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;

    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/ChooseMoodFragment$5;-><init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    return-void
.end method
