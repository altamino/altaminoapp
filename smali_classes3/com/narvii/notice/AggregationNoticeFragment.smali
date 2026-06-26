.class public final Lcom/narvii/notice/AggregationNoticeFragment;
.super Lcom/narvii/community/AggregationBaseFragment;
.source "AggregationNoticeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAggregationNoticeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregationNoticeFragment.kt\ncom/narvii/notice/AggregationNoticeFragment\n*L\n1#1,232:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field private final requestedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/community/AggregationBaseFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/notice/AggregationNoticeFragment$profileListener$1;-><init>(Lcom/narvii/notice/AggregationNoticeFragment;)V

    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    return-void
.end method

.method public static final synthetic access$updateGlobalUnreadCount(Lcom/narvii/notice/AggregationNoticeFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/narvii/notice/AggregationNoticeFragment;->updateGlobalUnreadCount()V

    return-void
.end method

.method private final isCommunityAlertsAllRead(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getOtherFragments()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getFragments()Landroid/util/LruCache;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 213
    instance-of v1, p1, Lcom/narvii/notice/NoticeListFragment;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {p1}, Lcom/narvii/notice/NoticeListFragment;->isAlertAllRead()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final updateGlobalUnreadCount()V
    .locals 4

    const-string v0, "account"

    .line 195
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getNotificationCount(I)I

    move-result v2

    .line 197
    invoke-direct {p0, v1}, Lcom/narvii/notice/AggregationNoticeFragment;->isCommunityAlertsAllRead(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 200
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->getNoticeCount(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 201
    sget v0, Lcom/narvii/amino/R$id;->global_notification_count:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoScaleTextView;

    if-eqz v0, :cond_2

    const/16 v3, 0x9

    if-le v2, v3, :cond_1

    const-string v3, "9+"

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_2
    sget v0, Lcom/narvii/amino/R$id;->global_notification_count:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoScaleTextView;

    if-eqz v0, :cond_4

    if-lez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    if-lez v2, :cond_5

    const/4 v1, 0x1

    .line 203
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalBadge"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 184
    iget p1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->forceRefreshReminder(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object p1, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$Companion;->getREMINDER_CHECK_DURATION()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, p3}, Lcom/narvii/notice/AggregationNoticeFragment;->forceRefreshReminder(I)Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(IZ)V

    .line 186
    iget-object p1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public createNewFragment(I)Lcom/narvii/app/NVFragment;
    .locals 1

    if-ltz p1, :cond_0

    .line 137
    new-instance p1, Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p1}, Lcom/narvii/notice/NoticeListFragment;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 140
    new-instance p1, Lcom/narvii/announcement/AnnouncementListFragment;

    invoke-direct {p1}, Lcom/narvii/announcement/AnnouncementListFragment;-><init>()V

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Lcom/narvii/app/NVFragment;

    invoke-direct {p1}, Lcom/narvii/app/NVFragment;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final forceRefreshReminder(I)Z
    .locals 1

    const-string v0, "forceRefreshReminder"

    .line 191
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->requestedSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBadgeCount(Lcom/narvii/model/Community;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 224
    :cond_1
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    if-eqz p1, :cond_2

    .line 225
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->isCommunityAlertsAllRead(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 228
    :goto_2
    iget p1, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr p1, v1

    return p1
.end method

.method public getFallbackIndexWhenCurrentLeave(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFragmentArguments(ILcom/narvii/model/Community;)Landroid/os/Bundle;
    .locals 2

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-lez p1, :cond_0

    .line 159
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment;->getSimpleCommunity(Lcom/narvii/model/Community;)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "community"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz p1, :cond_1

    const-string p2, "cid"

    .line 162
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    const-string p2, "fromAggregation"

    .line 164
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLeftNavTopLayoutId()I
    .locals 1

    const v0, 0x7f0b004a

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Alerts"

    return-object v0
.end method

.method public final getProfileListener()Lcom/narvii/account/AccountService$ProfileListener;
    .locals 1

    .line 38
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

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f090b4c

    if-nez p1, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 p1, -0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x7f0904d2

    if-nez p1, :cond_3

    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f00e4

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "_notice"

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    :cond_0
    const-string p1, "account"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 60
    iget-object v0, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    const-string v0, "account"

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 66
    iget-object v1, p0, Lcom/narvii/notice/AggregationNoticeFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/community/AggregationBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    const-string v0, "account"

    .line 148
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 149
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastLoggedIn(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastSelectedCid(I)V

    .line 151
    sget v0, Lcom/narvii/amino/R$id;->community_list:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    const-string v1, "community_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastScrollPosition(I)V

    .line 152
    sget v0, Lcom/narvii/amino/R$id;->community_list:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    invoke-static {v1}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastScrollTop(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/narvii/community/AggregationBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06007d

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    sget p1, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget p1, Lcom/narvii/amino/R$id;->team_amino_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p1, -0x80000000

    const-string p2, "targetCidTab"

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "account"

    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 76
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p1}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastSelectedCid(I)V

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    invoke-static {v1}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->setLastLoggedIn(Z)V

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    .line 82
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, -0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 86
    invoke-virtual {p0, v1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 88
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->getFallbackIndexWhenCurrentLeave(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastSelectedCid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(I)V

    .line 93
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result p1

    if-lez p1, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getCommunityListAdapter()Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 95
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    move-result p2

    if-lez p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_6

    .line 96
    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    move-result p2

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 97
    sget p1, Lcom/narvii/amino/R$id;->community_list:I

    invoke-virtual {p0, p1}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollPosition()I

    move-result p2

    invoke-static {}, Lcom/narvii/notice/AggregationNoticeFragmentKt;->getLastScrollTop()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 99
    :cond_5
    sget p2, Lcom/narvii/amino/R$id;->community_list:I

    invoke-virtual {p0, p2}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/narvii/notice/AggregationNoticeFragment;->updateGlobalUnreadCount()V

    return-void
.end method

.method public updateLeftNav()V
    .locals 6

    .line 114
    invoke-super {p0}, Lcom/narvii/community/AggregationBaseFragment;->updateLeftNav()V

    .line 115
    sget v0, Lcom/narvii/amino/R$id;->team_amino_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v1

    const v2, 0x7f06002a

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 116
    sget v0, Lcom/narvii/amino/R$id;->team_amino_selected:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "team_amino_selected"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    sget v0, Lcom/narvii/amino/R$id;->global_selected_indicator:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "global_selected_indicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    sget v0, Lcom/narvii/amino/R$id;->global_layout:I

    invoke-virtual {p0, v0}, Lcom/narvii/notice/AggregationNoticeFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
