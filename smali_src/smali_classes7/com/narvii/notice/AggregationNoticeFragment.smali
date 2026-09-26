.class public final Lcom/narvii/notice/AggregationNoticeFragment;
.super Lcom/narvii/community/AggregationBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final baseBinding:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/notice/AggregationNoticeFragment$baseBinding$1;-><init>(Lcom/narvii/notice/AggregationNoticeFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->baseBinding:Lw7/m;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;-><init>(Lcom/narvii/notice/AggregationNoticeFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 29
    return-void
.end method

.method public static final synthetic access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/notice/AggregationNoticeFragment;->updateGlobalUnreadCount()V

    .line 4
    return-void
.end method

.method private final isCommunityAlertsAllRead(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getOtherFragments()Ljava/util/HashMap;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-lez p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getFragments()Landroid/util/LruCache;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    .line 38
    :goto_0
    if-eqz p1, :cond_2

    .line 39
    .line 40
    instance-of v1, p1, Lcom/narvii/notice/NoticeListFragment;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/notice/NoticeListFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/notice/NoticeListFragment;->isAlertAllRead()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_2
    return v0
.end method

.method private final updateGlobalUnreadCount()V
    .locals 6

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
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getNotificationCount(I)I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Lcom/narvii/notice/AggregationNoticeFragment;->isCommunityAlertsAllRead(I)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    move v2, v1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getNoticeCount(I)I

    .line 24
    move-result v0

    .line 25
    add-int/2addr v2, v0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    const-string v4, "leftNavTopBinding"

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 36
    move-object v0, v3

    .line 37
    .line 38
    :cond_1
    iget-object v0, v0, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalNotificationCount:Lcom/narvii/widget/AutoScaleTextView;

    .line 41
    .line 42
    const/16 v5, 0x9

    .line 43
    .line 44
    if-le v2, v5, :cond_2

    .line 45
    .line 46
    const-string v5, "9+"

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object v3, v0

    .line 64
    .line 65
    :goto_1
    iget-object v0, v3, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalNotificationCount:Lcom/narvii/widget/AutoScaleTextView;

    .line 68
    .line 69
    if-lez v2, :cond_4

    .line 70
    move v3, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v3, 0x4

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    if-lez v2, :cond_5

    .line 78
    const/4 v1, 0x1

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const-string v1, "globalBadge"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V
    .locals 6
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/community/ReminderCheck;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget p1, p2, Lcom/narvii/model/Community;->id:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->forceRefreshReminder(I)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    sget-object p1, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$Companion;->getREMINDER_CHECK_DURATION()J

    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-gez p1, :cond_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p3}, Lcom/narvii/notice/AggregationNoticeFragment;->forceRefreshReminder(I)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3, v0}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(IZ)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    .line 55
    .line 56
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    return-void
.end method

.method public createNewFragment(I)Lcom/narvii/app/NVFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/notice/NoticeListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Lcom/narvii/notice/NoticeListFragment;-><init>()V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/announcement/AnnouncementListFragment;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/narvii/announcement/AnnouncementListFragment;-><init>()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    new-instance p1, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 23
    :goto_0
    return-object p1
.end method

.method public final forceRefreshReminder(I)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "forceRefreshReminder"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public getBadgeCount(Lcom/narvii/model/Community;)I
    .locals 3
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 14
    move-result-object v0

    .line 15
    :goto_0
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 p1, -0x1

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->isCommunityAlertsAllRead(I)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    move v1, v2

    .line 35
    .line 36
    :goto_2
    iget p1, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 37
    add-int/2addr p1, v1

    .line 38
    return p1
.end method

.method public getFallbackIndexWhenCurrentLeave(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;
    .locals 2
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment;->getSimpleCommunity(Lcom/narvii/model/Community;)Lcom/narvii/model/Community;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v1, "community"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    const-string p2, "cid"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    :cond_1
    const-string p1, "fromAggregation"

    .line 30
    const/4 p2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    return-object v0
.end method

.method public getLeftBinding(Landroidx/viewbinding/ViewBinding;)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "viewBinding"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 14
    :cond_0
    return-void
.end method

.method public getLeftNavTopLayoutId()I
    .locals 1

    const v0, 0x7f0d004e

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "notifications"

    return-object v0
.end method

.method public final getProfileListener()Lcom/narvii/account/AccountService$ProfileListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a0e3e

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    const/4 p1, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a061f

    .line 40
    .line 41
    if-ne p1, v0, :cond_4

    .line 42
    const/4 p1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 46
    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f120122

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 15
    .line 16
    const-string p1, "_notice"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    .line 28
    .line 29
    :cond_0
    const-string p1, "account"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

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
    iget-object v1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 17
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

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
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastLoggedIn(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastSelectedCid(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->baseBinding:Lw7/m;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastScrollPosition(I)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->baseBinding:Lw7/m;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-static {v1}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastScrollTop(I)V

    .line 67
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/narvii/community/AggregationBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0600a1

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 25
    const/4 p2, 0x0

    .line 26
    .line 27
    const-string v0, "leftNavTopBinding"

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 33
    move-object p1, p2

    .line 34
    .line 35
    :cond_0
    iget-object p1, p1, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object p2, p1

    .line 50
    .line 51
    :goto_0
    iget-object p1, p2, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->teamAminoLayout:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    const-string p1, "targetCidTab"

    .line 57
    .line 58
    const/high16 p2, -0x80000000

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 62
    move-result p1

    .line 63
    .line 64
    const-string v0, "account"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastLoggedIn()Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastSelectedCid(I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastLoggedIn(Z)V

    .line 93
    const/4 v1, 0x0

    .line 94
    .line 95
    if-eq p1, p2, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-nez p1, :cond_4

    .line 106
    const/4 p1, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    .line 114
    move-result p1

    .line 115
    .line 116
    if-ne p1, p2, :cond_5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    .line 124
    move-result p1

    .line 125
    .line 126
    if-lez p1, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Ljava/util/Collection;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    .line 140
    move-result p2

    .line 141
    .line 142
    .line 143
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-nez p1, :cond_6

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    .line 154
    move-result p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->getFallbackIndexWhenCurrentLeave(I)I

    .line 158
    move-result p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 162
    goto :goto_1

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    .line 166
    move-result p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 170
    .line 171
    .line 172
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 173
    move-result p1

    .line 174
    .line 175
    if-lez p1, :cond_8

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    if-eqz p1, :cond_8

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    .line 185
    move-result p2

    .line 186
    .line 187
    if-lez p2, :cond_8

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    .line 191
    move-result p2

    .line 192
    .line 193
    if-lez p2, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    .line 197
    move-result p2

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    .line 201
    move-result v0

    .line 202
    .line 203
    if-ge p2, v0, :cond_7

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->baseBinding:Lw7/m;

    .line 206
    .line 207
    .line 208
    invoke-interface {p1}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    check-cast p1, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    .line 217
    move-result p2

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollTop()I

    .line 221
    move-result v0

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 225
    goto :goto_2

    .line 226
    .line 227
    :cond_7
    iget-object p2, p0, Lcom/narvii/notice/AggregationNoticeFragment;->baseBinding:Lw7/m;

    .line 228
    .line 229
    .line 230
    invoke-interface {p2}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 231
    move-result-object p2

    .line 232
    .line 233
    check-cast p2, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;

    .line 234
    .line 235
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    .line 239
    move-result p1

    .line 240
    .line 241
    add-int/lit8 p1, p1, -0x1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, p1, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    :catch_0
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/narvii/notice/AggregationNoticeFragment;->updateGlobalUnreadCount()V

    .line 248
    return-void
.end method

.method public updateLeftNav()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/AggregationBaseFragment;->updateLeftNav()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const-string v2, "leftNavTopBinding"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object v0, v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->teamAminoLayout:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    const v4, 0x7f06002b

    .line 24
    const/4 v5, -0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    if-ne v3, v5, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v6

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    move-object v0, v1

    .line 49
    .line 50
    :cond_2
    iget-object v0, v0, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->teamAminoSelected:Landroid/widget/ImageView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 54
    move-result v3

    .line 55
    .line 56
    const/16 v7, 0x8

    .line 57
    .line 58
    if-ne v3, v5, :cond_3

    .line 59
    move v3, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v3, v7

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 72
    move-object v0, v1

    .line 73
    .line 74
    :cond_4
    iget-object v0, v0, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->globalSelectedIndicator:Landroid/widget/ImageView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 80
    move-result v3

    .line 81
    .line 82
    if-nez v3, :cond_5

    .line 83
    move v7, v6

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->leftNavTopBinding:Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;

    .line 89
    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    move-object v1, v0

    .line 96
    .line 97
    :goto_2
    iget-object v0, v1, Lcom/narvii/amino/databinding/AlertsLeftNavTopBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->rootGlobalLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 103
    move-result v1

    .line 104
    .line 105
    if-nez v1, :cond_7

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 113
    move-result v6

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    return-void
.end method
