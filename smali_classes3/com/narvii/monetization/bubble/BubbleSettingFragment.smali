.class public Lcom/narvii/monetization/bubble/BubbleSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BubbleSettingFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;,
        Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;
    }
.end annotation


# static fields
.field public static final KEY_CHAT_THREAD:Ljava/lang/String; = "key_thread"

.field public static final KEY_CHAT_THREAD_ID:Ljava/lang/String; = "key_thread_id"

.field private static final KEY_CUR_BUBBLE_ID:Ljava/lang/String; = "key_cur_id"

.field private static final KEY_ORIGIN_BUBBLE_ID:Ljava/lang/String; = "key_origin_id"

.field private static final TAG_BACKGROUND:Ljava/lang/String; = "fragment_background"

.field private static final TAG_MEMBERSHIP_WARNGING:Ljava/lang/String; = "fragment_membership_warning"


# instance fields
.field btnMoreBubbles:Landroid/view/View;

.field private bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private chatThreadId:Ljava/lang/String;

.field private communityDefaultBubbleId:Ljava/lang/String;

.field private curBubble:Lcom/narvii/model/ChatBubble;

.field private curSelectedBubbleId:Ljava/lang/String;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private oriSelectedBubbleId:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field private saveButton:Landroid/view/View;

.field private selectedBubbleDeleted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$1;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->communityDefaultBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->communityDefaultBubbleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->selectedBubbleDeleted:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->selectedBubbleDeleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveCurSetting(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->enterBubbleManger()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->sendSaveCurBubbleSettingRequest(Lcom/narvii/model/ChatBubble;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->updateSaveButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->enterBubbleShop()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-object p1
.end method

.method private enterBubbleManger()V
    .locals 3

    .line 620
    const-class v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private enterBubbleShop()V
    .locals 3

    .line 626
    const-class v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scrollSectionGroupId"

    const-string v2, "chat-bubble"

    .line 627
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "More Chat Bubbles"

    .line 628
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private saveCurSetting(Lcom/narvii/model/ChatBubble;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 235
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    if-nez v2, :cond_1

    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 236
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 255
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 256
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 258
    :cond_4
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Chat Bubble (Dialog)"

    .line 259
    iput-object v0, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 237
    :cond_5
    :goto_1
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0f8b

    .line 238
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f0f87

    .line 239
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 240
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_2
    return-void
.end method

.method private sendSaveCurBubbleSettingRequest(Lcom/narvii/model/ChatBubble;Z)V
    .locals 3

    .line 267
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 268
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private updateSaveButton()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    const-string v2, "default"

    .line 300
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 193
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 194
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 196
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v7, 0x1

    new-array v1, v7, [Landroid/view/View;

    .line 197
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 199
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, v0

    move-object v2, p0

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 201
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    .line 202
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 205
    invoke-virtual {p1, v0, v7}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 207
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08074b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    const v2, 0x7f0f03aa

    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    const v0, 0x7f090048

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0802ae

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v0, 0x7f090051

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    .line 166
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0d59

    .line 109
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "key_thread"

    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    goto :goto_0

    :cond_0
    const-string v1, "key_origin_id"

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    const-string v1, "key_cur_id"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 123
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez p1, :cond_3

    const-string p1, "key_thread_id"

    .line 125
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    :cond_3
    const-string p1, "membership"

    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0287

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 223
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 224
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    const-string v1, "key_origin_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    const-string v1, "key_cur_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_thread"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "Chat Bubble (Bar)"

    .line 180
    invoke-static {p0, p2}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 181
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const p2, 0x7f090183

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$3;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
