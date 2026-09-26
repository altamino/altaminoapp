.class public Lcom/narvii/monetization/bubble/BubbleSettingFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$1;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->selectedBubbleDeleted:Z

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->communityDefaultBubbleId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->selectedBubbleDeleted:Z

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->enterBubbleManger()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->enterBubbleShop()V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveCurSetting(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->sendSaveCurBubbleSettingRequest(Lcom/narvii/model/ChatBubble;Z)V

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->updateSaveButton()V

    return-void
.end method

.method private enterBubbleManger()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "threadId"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method private enterBubbleShop()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "scrollSectionGroupId"

    .line 9
    .line 10
    const-string v2, "chat-bubble"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "Source"

    .line 16
    .line 17
    const-string v2, "More Chat Bubbles"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 24
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

.method private saveCurSetting(Lcom/narvii/model/ChatBubble;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 32
    const/4 v1, -0x1

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    :cond_2
    :goto_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f121097

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 51
    .line 52
    .line 53
    const v1, 0x7f121093

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_4
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 91
    .line 92
    const-string v0, "Chat Bubble (Dialog)"

    .line 93
    .line 94
    iput-object v0, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 98
    :goto_1
    return-void
.end method

.method private sendSaveCurBubbleSettingRequest(Lcom/narvii/model/ChatBubble;Z)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    return-object p0
.end method

.method private updateSaveButton()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "default"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v0, v1

    .line 34
    .line 35
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    .line 36
    xor-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    :cond_2
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->communityDefaultBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0700aa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v6

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 26
    const/4 v7, 0x1

    .line 27
    .line 28
    new-array v1, v7, [Landroid/view/View;

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 46
    move-object v1, v0

    .line 47
    move-object v2, p0

    .line 48
    move v3, v6

    .line 49
    move v4, v6

    .line 50
    move v5, v6

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 54
    .line 55
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 59
    .line 60
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    .line 61
    const/4 v2, 0x3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v7}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$MoreBubbleAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const/high16 v2, 0x42a00000    # 80.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 87
    move-result v1

    .line 88
    float-to-int v1, v1

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
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
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f080948

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f120402

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0079

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0803b5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    const v0, 0x7f0a0082

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveButton:Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    :cond_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120e86

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    const-string v1, "key_thread"

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const-string v2, "key_origin_id"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    iput-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "key_cur_id"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iput-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 69
    .line 70
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    const/4 p1, 0x0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    :goto_1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    const-string p1, "key_thread_id"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThreadId:Ljava/lang/String;

    .line 93
    .line 94
    :cond_3
    const-string p1, "membership"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 105
    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    .line 107
    .line 108
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02b2

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
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "key_origin_id"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->oriSelectedBubbleId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "key_cur_id"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "key_thread"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "Chat Bubble (Bar)"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a022d

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$3;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$3;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
