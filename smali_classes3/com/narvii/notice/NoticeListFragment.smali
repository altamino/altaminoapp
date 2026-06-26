.class public Lcom/narvii/notice/NoticeListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;,
        Lcom/narvii/notice/NoticeListFragment$Adapter;,
        Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;
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

    .line 93
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$1;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$5;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearListener:Landroid/view/View$OnClickListener;

    .line 361
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$6;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->launchCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/notice/NoticeListFragment;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/narvii/notice/NoticeListFragment;->alertAllRead:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->openSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method private launchCommunity(Lcom/narvii/model/Community;)V
    .locals 11

    if-eqz p1, :cond_1

    const-string v0, "myCommunityList"

    .line 316
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 317
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 320
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/narvii/model/Community;

    .line 321
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 322
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v6

    .line 324
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v8

    .line 326
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v9

    .line 327
    iget v3, p1, Lcom/narvii/model/Community;->id:I

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {v0, p0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    .line 330
    iput-boolean v1, v0, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 331
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private openSettings()V
    .locals 3

    .line 492
    iget v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-nez v0, :cond_0

    .line 493
    const-class v0, Lcom/narvii/account/PushSettingListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    :cond_0
    const-class v0, Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 497
    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v2, "community_push_setting_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "community"

    .line 498
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 499
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 500
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const-string v2, "community_push_setting_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Source"

    const-string v2, "Alerts"

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateClearButtonStatus()V
    .locals 4

    .line 1153
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1154
    :goto_0
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1155
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1156
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09024e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/TintButton;

    if-eqz v0, :cond_1

    const v2, -0x15edee

    goto :goto_1

    :cond_1
    const v2, -0x838384

    :goto_1
    if-eqz v1, :cond_2

    .line 1159
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09024f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1166
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_4

    .line 1167
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightButtonEnabled(Z)V

    :cond_4
    return-void
.end method

.method private updateCommunityLayout(Landroid/view/View;)V
    .locals 4

    const-string v0, "community"

    .line 229
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 230
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayoutVisibility(Landroid/view/View;)V

    const v1, 0x7f0902ac

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/notice/NoticeListFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/notice/NoticeListFragment$2;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902a3

    .line 238
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/CommunityIconView;

    const v2, 0x7f0902c5

    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 240
    invoke-virtual {v1, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 241
    :goto_0
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 242
    :cond_1
    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090723

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 244
    new-instance v0, Lcom/narvii/notice/-$$Lambda$NoticeListFragment$kR__NGb_45bIDhxZjWmihCiHUYs;

    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/-$$Lambda$NoticeListFragment$kR__NGb_45bIDhxZjWmihCiHUYs;-><init>(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateCommunityLayoutVisibility(Landroid/view/View;)V
    .locals 2

    const-string v0, "account"

    .line 278
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 279
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const v1, 0x7f0902ac

    invoke-static {p1, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public clearAll(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1267
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0270

    const/4 v1, 0x1

    .line 1268
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1269
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$10;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1277
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 1279
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1280
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$11;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$11;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1300
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1302
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/notification"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1303
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1304
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 469
    new-instance p1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 470
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$NoticeMergeAdapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    .line 471
    new-instance v1, Lcom/narvii/notice/NoticeListFragment$Adapter;

    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$Adapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    .line 472
    new-instance v1, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    iput-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 473
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 474
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 475
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    const/4 v2, 0x2

    .line 476
    invoke-virtual {p1, v1, v2}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 477
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public delete(Lcom/narvii/notice/Notice;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 1234
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0348

    const/4 v1, 0x1

    .line 1235
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1236
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/NoticeListFragment$8;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1245
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 1247
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1248
    new-instance v0, Lcom/narvii/notice/NoticeListFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/narvii/notice/NoticeListFragment$9;-><init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1256
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1258
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/notification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1259
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 1260
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1261
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    .line 358
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeType(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1310
    :cond_0
    iget p1, p1, Lcom/narvii/notice/Notice;->type:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const-string v1, "poll_ended"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v0

    :pswitch_0
    const-string p1, "add_custom_title"

    return-object p1

    :pswitch_1
    const-string p1, "create_avatar_chat"

    return-object p1

    :pswitch_2
    const-string p1, "invite_avatar_chat"

    return-object p1

    :pswitch_3
    const-string p1, "shared_file_uploaded"

    return-object p1

    :pswitch_4
    const-string p1, "create_video_chat"

    return-object p1

    :pswitch_5
    const-string p1, "create_voice_chat"

    return-object p1

    :pswitch_6
    const-string p1, "invite_video_chat"

    return-object p1

    :pswitch_7
    const-string p1, "invite_voice_chat"

    return-object p1

    :pswitch_8
    const-string p1, "activities_chat_thread"

    return-object p1

    :pswitch_9
    const-string p1, "activities_wiki"

    return-object p1

    :pswitch_a
    const-string p1, "activities_blog"

    return-object p1

    :pswitch_b
    return-object v1

    :pswitch_c
    const-string p1, "your_poll_ended"

    return-object p1

    :pswitch_d
    return-object v1

    :pswitch_e
    const-string p1, "poll_vote_up"

    return-object p1

    :pswitch_f
    const-string p1, "poll_approved"

    return-object p1

    :pswitch_10
    const-string p1, "poll_option_added"

    return-object p1

    :pswitch_11
    const-string p1, "repost"

    return-object p1

    :pswitch_12
    const-string p1, "unlike"

    return-object p1

    :pswitch_13
    const-string p1, "like"

    return-object p1

    :cond_1
    const-string p1, "submission_approved"

    return-object p1

    :cond_2
    const-string p1, "reply"

    return-object p1

    :cond_3
    const-string p1, "comment"

    return-object p1

    :cond_4
    const-string p1, "invitation_to_follow"

    return-object p1

    :cond_5
    const-string p1, "following"

    return-object p1

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

    .line 160
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_2

    .line 161
    iget v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-nez v0, :cond_0

    const-string v0, "Global"

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v0, "Community"

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    const-string v0, "AlertsPage"

    return-object v0
.end method

.method public isAlertAllRead()Z
    .locals 1

    .line 1229
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->alertAllRead:Z

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$NoticeListFragment(Landroid/view/View;)V
    .locals 0

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$updateCommunityLayout$1$NoticeListFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0048

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 246
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    const v0, 0x7f0906ae

    .line 247
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0800a6

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090a18

    .line 248
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/notice/NoticeListFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeListFragment$3;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024c

    .line 257
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/notice/NoticeListFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeListFragment$4;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 266
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 267
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_0

    .line 268
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    const v2, 0x800035

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 390
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 391
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-nez v0, :cond_1

    const-string v0, "liveLayer"

    .line 392
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "notifications"

    .line 396
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 186
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f026f

    .line 189
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->clearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->updateClearButtonStatus()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0908e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Settings"

    .line 485
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 486
    invoke-direct {p0}, Lcom/narvii/notice/NoticeListFragment;->openSettings()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f00e4

    .line 132
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 133
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    const-string v0, "account"

    .line 134
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "fromAggregation"

    .line 136
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    .line 137
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 138
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme(Z)V

    const-string v0, "config"

    .line 140
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    const/4 v0, -0x1

    const-string v1, "cid"

    .line 141
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 142
    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-ne v1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.CLEAR_ALL_ALERTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0550

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->clearReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 459
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onEmptyRetry()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 377
    iput-boolean v3, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    .line 379
    invoke-virtual {v0, v2, v1}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 426
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 427
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onPause()V
    .locals 6

    .line 402
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    const-string v0, "account"

    .line 403
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 404
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v2

    const-string v3, "notificationReadList"

    if-eqz v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notice/Notice;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 408
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v4, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 409
    invoke-virtual {v0, v4, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v3, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v4, "notificationReadTime"

    .line 410
    invoke-virtual {v0, v3, v4}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_2
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 413
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 434
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    const-string v0, "account"

    .line 435
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 436
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 437
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v3, "notificationReadTime"

    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 438
    iget v2, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v3, "notificationReadList"

    invoke-virtual {v0, v2, v3}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 439
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->notifyDataSetChanged()V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment;->updatePushSettingItem()V

    .line 448
    iget-boolean v0, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayoutVisibility(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 196
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090784

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f090782

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/notice/-$$Lambda$NoticeListFragment$Dh9qo427_uGsP93WO42eiPnl2bY;

    invoke-direct {v1, p0}, Lcom/narvii/notice/-$$Lambda$NoticeListFragment$Dh9qo427_uGsP93WO42eiPnl2bY;-><init>(Lcom/narvii/notice/NoticeListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0b054e

    .line 204
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment;->updatePushSettingItem()V

    .line 214
    iget-boolean p2, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz p2, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayout(Landroid/view/View;)V

    .line 216
    instance-of p2, p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    if-eqz p2, :cond_2

    .line 217
    check-cast p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/narvii/app/theme/view/NVThemeLinearLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 220
    :cond_1
    instance-of p2, p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    if-eqz p2, :cond_2

    .line 221
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 222
    check-cast p1, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/narvii/app/theme/view/NVThemeLinearLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestCheckNotification()V
    .locals 4

    .line 1207
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/notification/checked"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/notice/NoticeListFragment;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1208
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1209
    new-instance v2, Lcom/narvii/notice/NoticeListFragment$7;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/notice/NoticeListFragment$7;-><init>(Lcom/narvii/notice/NoticeListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected updatePushSettingItem()V
    .locals 3

    .line 463
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0908e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateViews()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_4

    .line 285
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0, v0, v2}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment;->notLoginView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_5
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    :cond_6
    :goto_0
    return-void
.end method
