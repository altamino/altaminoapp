.class public Lcom/narvii/notice/NoticeListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notice/NoticeListFragment$Adapter;,
        Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;,
        Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;
    }
.end annotation


# static fields
.field public static final CLEAR_ALL_ALERTS:Ljava/lang/String; = "com.narvii.action.CLEAR_ALL_ALERTS"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field protected adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

.field private alertAllRead:Z

.field cid:I

.field protected final clearListener:Landroid/view/View$OnClickListener;

.field clearReceiver:Landroid/content/BroadcastReceiver;

.field private config:Lcom/narvii/config/ConfigService;

.field fromAggregation:Z

.field protected importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

.field private notLoginView:Landroid/view/View;

.field public notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field private popupWindow:Landroid/widget/PopupWindow;

.field readList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field readTime:J

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$1;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/notice/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/notice/d;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$4;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$4;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->launchCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->openSettings()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 9
    return-void
.end method

.method private synthetic lambda$updateCommunityLayout$1(Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->launchCommunity(Lcom/narvii/model/Community;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$updateCommunityLayout$2(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d004c

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    new-instance v0, Landroid/widget/PopupWindow;

    .line 19
    const/4 v1, -0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p2, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a083a

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v3, 0x7f08012e

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0ce0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    new-instance v1, Lcom/narvii/notice/NoticeListFragment$2;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$2;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a030c

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$3;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$3;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 90
    move-result p2

    .line 91
    .line 92
    if-eqz p2, :cond_0

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const/high16 v1, 0x40c00000    # 6.0f

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 104
    move-result v0

    .line 105
    neg-int v0, v0

    .line 106
    const/4 v1, 0x0

    .line 107
    .line 108
    .line 109
    const v2, 0x800035

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_0
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    .line 122
    return-void
.end method

.method private launchCommunity(Lcom/narvii/model/Community;)V
    .locals 11

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    const-string v0, "myCommunityList"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    iget v3, p1, Lcom/narvii/model/Community;->id:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    .line 40
    if-le v2, v3, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    move-object v4, v1

    .line 46
    .line 47
    check-cast v4, Lcom/narvii/model/Community;

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 76
    move-result-object v8

    .line 77
    .line 78
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 82
    move-result-object v9

    .line 83
    .line 84
    iget v3, p1, Lcom/narvii/model/Community;->id:I

    .line 85
    const/4 v10, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    iput-boolean v1, v0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 98
    .line 99
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p1}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;)V

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method private openSettings()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-class v0, Lcom/narvii/account/PushSettingListFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/narvii/notice/NoticeListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-class v0, Lcom/narvii/account/CommunityPushSettingFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "community_push_setting_id"

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "community"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 36
    .line 37
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, "community_push_setting_name"

    .line 44
    .line 45
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    const-string v1, "Source"

    .line 51
    .line 52
    const-string v2, "Alerts"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Lcom/narvii/notice/NoticeListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 59
    :goto_0
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

.method public static synthetic t(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/notice/NoticeListFragment;->lambda$updateCommunityLayout$1(Lcom/narvii/model/Community;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/notice/NoticeListFragment;->lambda$updateCommunityLayout$2(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateClearButtonStatus()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0a030c

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    const v2, 0x7f0a030e

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    const v2, -0x15edee

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_1
    const v2, -0x838384

    .line 64
    .line 65
    :goto_1
    if-eqz v1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    const v3, 0x7f0a030f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightButtonEnabled(Z)V

    .line 112
    :cond_4
    return-void
.end method

.method private updateCommunityLayout(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/narvii/model/Community;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/model/Community;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayoutVisibility(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a0373

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/notice/b;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v0}, Lcom/narvii/notice/b;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a036b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/widget/CommunityIconView;

    .line 42
    .line 43
    .line 44
    const v2, 0x7f0a038a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v3, 0x0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a098d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/notice/c;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/c;-><init>(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private updateCommunityLayoutVisibility(Landroid/view/View;)V
    .locals 2

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
    .line 11
    const v1, 0x7f0a0373

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 19
    return-void
.end method

.method public static synthetic v(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/notice/NoticeListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/notice/NoticeListFragment;->alertAllRead:Z

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public clearAll(Z)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1202b5

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$8;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$8;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$9;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$9;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 45
    .line 46
    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v1, "/notification"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "api"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$Adapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 37
    const/4 v3, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-object v0
.end method

.method public delete(Lcom/narvii/notice/Notice;Z)V
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1203a0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$6;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/NoticeListFragment$6;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$7;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/NoticeListFragment$7;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V

    .line 45
    .line 46
    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "/notification/"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    const-string v0, "api"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 99
    .line 100
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 104
    :goto_0
    return-void
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public getNoticeType(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/notice/Notice;->type:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq p1, v1, :cond_5

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-eq p1, v1, :cond_4

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-eq p1, v1, :cond_3

    .line 16
    const/4 v1, 0x4

    .line 17
    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x18

    .line 21
    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const-string v1, "poll_ended"

    .line 25
    .line 26
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    packed-switch p1, :pswitch_data_1

    .line 31
    return-object v0

    .line 32
    .line 33
    :pswitch_0
    const-string p1, "add_custom_title"

    .line 34
    return-object p1

    .line 35
    .line 36
    :pswitch_1
    const-string p1, "create_avatar_chat"

    .line 37
    return-object p1

    .line 38
    .line 39
    :pswitch_2
    const-string p1, "invite_avatar_chat"

    .line 40
    return-object p1

    .line 41
    .line 42
    :pswitch_3
    const-string p1, "shared_file_uploaded"

    .line 43
    return-object p1

    .line 44
    .line 45
    :pswitch_4
    const-string p1, "create_video_chat"

    .line 46
    return-object p1

    .line 47
    .line 48
    :pswitch_5
    const-string p1, "create_voice_chat"

    .line 49
    return-object p1

    .line 50
    .line 51
    :pswitch_6
    const-string p1, "invite_video_chat"

    .line 52
    return-object p1

    .line 53
    .line 54
    :pswitch_7
    const-string p1, "invite_voice_chat"

    .line 55
    return-object p1

    .line 56
    .line 57
    :pswitch_8
    const-string p1, "activities_chat_thread"

    .line 58
    return-object p1

    .line 59
    .line 60
    :pswitch_9
    const-string p1, "activities_wiki"

    .line 61
    return-object p1

    .line 62
    .line 63
    :pswitch_a
    const-string p1, "activities_blog"

    .line 64
    return-object p1

    .line 65
    :pswitch_b
    return-object v1

    .line 66
    .line 67
    :pswitch_c
    const-string p1, "your_poll_ended"

    .line 68
    return-object p1

    .line 69
    :pswitch_d
    return-object v1

    .line 70
    .line 71
    :pswitch_e
    const-string p1, "poll_vote_up"

    .line 72
    return-object p1

    .line 73
    .line 74
    :pswitch_f
    const-string p1, "poll_approved"

    .line 75
    return-object p1

    .line 76
    .line 77
    :pswitch_10
    const-string p1, "poll_option_added"

    .line 78
    return-object p1

    .line 79
    .line 80
    :pswitch_11
    const-string p1, "repost"

    .line 81
    return-object p1

    .line 82
    .line 83
    :pswitch_12
    const-string p1, "unlike"

    .line 84
    return-object p1

    .line 85
    .line 86
    :pswitch_13
    const-string p1, "like"

    .line 87
    return-object p1

    .line 88
    .line 89
    :cond_1
    const-string p1, "submission_approved"

    .line 90
    return-object p1

    .line 91
    .line 92
    :cond_2
    const-string p1, "reply"

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_3
    const-string p1, "comment"

    .line 96
    return-object p1

    .line 97
    .line 98
    :cond_4
    const-string p1, "invitation_to_follow"

    .line 99
    return-object p1

    .line 100
    .line 101
    :cond_5
    const-string p1, "following"

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-nez v0, :cond_0

    const-string v0, "global"

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v0, "community"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    const-string v0, "notifications"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public isAlertAllRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->alertAllRead:Z

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "liveLayer"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    const-string v1, "notifications"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 24
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const v0, 0x7f080071

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearListener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f1202b4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    .line 32
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0ba8

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string p1, "Settings"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->openSettings()V

    .line 23
    :goto_0
    return-void
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
    const v0, 0x7f120122

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 21
    .line 22
    const-string v0, "account"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    const-string v0, "fromAggregation"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    .line 47
    .line 48
    const-string v0, "config"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 57
    .line 58
    const-string v0, "cid"

    .line 59
    const/4 v1, -0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 63
    move-result v0

    .line 64
    .line 65
    iput v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 66
    .line 67
    if-ne v0, v1, :cond_0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 73
    move-result v0

    .line 74
    .line 75
    iput v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 76
    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    .line 84
    .line 85
    const-string v2, "com.narvii.action.CLEAR_ALL_ALERTS"

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 92
    .line 93
    :cond_1
    if-nez p1, :cond_2

    .line 94
    .line 95
    const-string p1, "statistics"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 102
    .line 103
    const-string v0, "Notification Center Page Opened"

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    const-string v0, "Notification Center Page Opened Total"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    const-string v0, "Source"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 123
    .line 124
    :cond_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 125
    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    .line 127
    .line 128
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d05f7

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
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 18
    return-void
.end method

.method protected onEmptyRetry()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    iput-boolean v3, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 20
    :cond_1
    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 11
    :cond_0
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

.method public onPause()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

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
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    const-string v3, "notificationReadList"

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    move-result v4

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lcom/narvii/notice/Notice;

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget v4, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget v3, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 64
    .line 65
    const-string v4, "notificationReadTime"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    const-wide/16 v2, 0x0

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_2
    iget-object v2, v2, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 80
    move-result-wide v2

    .line 81
    .line 82
    iget-wide v4, p0, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 86
    move-result-wide v2

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    goto :goto_3

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :goto_3
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

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
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 18
    .line 19
    const-string v3, "notificationReadTime"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 34
    .line 35
    const-string v3, "notificationReadList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashSet;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment;->updatePushSettingItem()V

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayoutVisibility(Landroid/view/View;)V

    .line 77
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0a20

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0a1e

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/notice/e;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/narvii/notice/e;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0d05f5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;-><init>()V

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a0a30

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment;->updatePushSettingItem()V

    .line 73
    .line 74
    iget-boolean p2, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayout(Landroid/view/View;)V

    .line 80
    .line 81
    instance-of p2, p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 86
    .line 87
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 88
    const/4 v0, 0x0

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/narvii/app/theme/view/NVThemeLinearLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_2
    instance-of p2, p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    check-cast p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 112
    .line 113
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 123
    move-result v0

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/narvii/app/theme/view/NVThemeLinearLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_3
    :goto_0
    return-void
.end method

.method public requestCheckNotification()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "/notification/checked"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "api"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    new-instance v2, Lcom/narvii/notice/NoticeListFragment$5;

    .line 36
    .line 37
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, p0, v3}, Lcom/narvii/notice/NoticeListFragment$5;-><init>(Lcom/narvii/notice/NoticeListFragment;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 44
    return-void
.end method

.method protected updatePushSettingItem()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0ba8

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method protected updateViews()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_6

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 59
    :cond_6
    :goto_0
    return-void
.end method
