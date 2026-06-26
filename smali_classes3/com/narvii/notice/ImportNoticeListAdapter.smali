.class public Lcom/narvii/notice/ImportNoticeListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ImportNoticeListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/account/notice/AccountNotice;",
        "Lcom/narvii/account/notice/AccountNoticeListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# static fields
.field private static final TYPE_COPYRIGHT:I = 0x3

.field private static final TYPE_PROP:I = 0x1

.field private static final TYPE_SYSTEM_CUSTOM:I = 0x5

.field private static final TYPE_SYSTEM_MESSAGE:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x2

.field private static final TYPE_WARNING_STRIKE:I


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field public isImportantNoticeLoaded:Z

.field ndcId:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    .line 84
    iput p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    const-string p2, "account"

    .line 85
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->account:Lcom/narvii/account/AccountService;

    .line 86
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/notice/ImportNoticeListAdapter;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->requestCommunityInfo(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/notice/ImportNoticeListAdapter;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/narvii/notice/ImportNoticeListAdapter;->goAccountSettingPage()V

    return-void
.end method

.method private configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 339
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    move-result p1

    const v1, 0x7f09029e

    .line 340
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 341
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    const p1, 0x7f0902a3

    .line 343
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 344
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 345
    iget-object v1, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p1, 0x7f0902b6

    .line 346
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 347
    iget-object p2, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 353
    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    const v1, 0x7f090c10

    .line 355
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 356
    new-instance v2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 357
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    const v0, 0x7f090764

    .line 358
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 359
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 360
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_2
    return-void
.end method

.method private goAccountSettingPage()V
    .locals 1

    .line 522
    const-class v0, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 523
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V
    .locals 9

    .line 469
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 471
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "notice/"

    if-eqz p2, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/accept"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 475
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/decline"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 478
    :goto_0
    iget v1, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 479
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v6

    const-string v0, "api"

    .line 480
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 481
    new-instance v8, Lcom/narvii/notice/ImportNoticeListAdapter$1;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/notice/ImportNoticeListAdapter$1;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    invoke-virtual {v7, v6, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private requestCommunityInfo(I)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "api"

    .line 563
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    const-string v1, "community"

    .line 564
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 565
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/community/info"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 566
    new-instance v3, Lcom/narvii/notice/ImportNoticeListAdapter$3;

    const-class v4, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v3, p0, v4, v1, p1}, Lcom/narvii/notice/ImportNoticeListAdapter$3;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/community/CommunityService;I)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private upgrateApp()V
    .locals 3

    .line 463
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    const-string v0, "com.narvii.amino.mastes"

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_1
    invoke-virtual {v1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 101
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/notice"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "usersV2"

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 105
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/account/notice/AccountNotice;",
            ">;"
        }
    .end annotation

    .line 91
    const-class v0, Lcom/narvii/account/notice/AccountNotice;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 117
    instance-of v0, p1, Lcom/narvii/account/notice/AccountNotice;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 119
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    iget v0, p1, Lcom/narvii/account/notice/AccountNotice;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    return v0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 150
    move-object/from16 v3, p1

    check-cast v3, Lcom/narvii/account/notice/AccountNotice;

    .line 152
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v4

    const v5, 0x7f090590

    const/4 v6, 0x2

    const v7, 0x7f0902d0

    const v8, 0x7f090789

    const v9, 0x7f09032e

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x5

    if-ne v4, v12, :cond_6

    .line 153
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getStyle()Lcom/narvii/account/notice/AccountNoticeStyle;

    .line 155
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v4

    const v12, 0x7f0b0405

    .line 156
    invoke-virtual {v0, v12, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 159
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->icon:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->icon:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 166
    :goto_0
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 167
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 175
    iget-object v7, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v8, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v7, v8}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 178
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    const v3, 0x7f090787

    .line 181
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 183
    iget-boolean v5, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    const v7, 0x7f090788

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->operationList:Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 184
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    const/16 v5, 0x3e7

    .line 185
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 186
    iget-object v2, v4, Lcom/narvii/account/notice/AccountNoticeConfig;->operationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;

    .line 187
    invoke-virtual {v4}, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->isSupport()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 191
    :cond_2
    iget-object v5, v0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b0406

    invoke-virtual {v5, v7, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f09018b

    .line 192
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 193
    iget-object v8, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object v7, v5

    check-cast v7, Lcom/narvii/widget/PushButton;

    iget v8, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->operationType:I

    if-ne v8, v6, :cond_3

    const v8, -0x16f2c5

    goto :goto_3

    :cond_3
    const v8, -0xf3890d

    :goto_3
    invoke-virtual {v7, v8}, Lcom/narvii/widget/PushButton;->setColor(I)V

    const v7, 0x7f090786

    .line 195
    iget v4, v4, Lcom/narvii/account/notice/AccountNoticeConfig$NoticeButtonInfo;->operationType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 200
    :cond_4
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_5
    return-object v1

    .line 208
    :cond_6
    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->type:I

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-eq v4, v12, :cond_8

    const/16 v14, 0xa

    if-ne v4, v14, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v4, 0x1

    .line 210
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v14

    const v15, 0x7f0902b6

    const v10, 0x7f0902a3

    const v12, 0x7f09029e

    if-nez v14, :cond_f

    const v6, 0x7f0b040b

    .line 211
    invoke-virtual {v0, v6, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    const v4, 0x7f08040d

    goto :goto_6

    :cond_9
    const v4, 0x7f08040f

    .line 214
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 220
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    move-result v4

    .line 221
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_a

    const/16 v4, 0x8

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    .line 222
    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_b

    .line 224
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 225
    invoke-virtual {v4, v11}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 226
    iget-object v6, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 227
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    iget-object v5, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_b
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 232
    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 235
    iget-object v5, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v6, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    if-eqz v3, :cond_e

    const v4, 0x7f090c10

    .line 238
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/UserAvatarLayout;

    .line 239
    new-instance v5, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v6

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    iget v11, v2, Lcom/narvii/model/Community;->id:I

    :goto_8
    invoke-direct {v5, v6, v11}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 240
    invoke-virtual {v3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v2

    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    const v2, 0x7f090764

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, -0x1

    goto :goto_9

    :cond_d
    const/high16 v4, -0x1000000

    :goto_9
    invoke-virtual {v2, v4}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 243
    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_e
    return-object v1

    .line 246
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v4

    const/4 v14, 0x3

    if-ne v4, v13, :cond_14

    const v4, 0x7f0b0408

    .line 247
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090020

    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090334

    .line 249
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09059b

    .line 250
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 251
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    const-string v5, ""

    if-nez v4, :cond_10

    move-object v4, v5

    goto :goto_a

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    invoke-virtual {v7}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    :goto_a
    iget v7, v3, Lcom/narvii/account/notice/AccountNotice;->type:I

    if-eq v7, v13, :cond_13

    if-eq v7, v6, :cond_12

    if-eq v7, v14, :cond_11

    goto :goto_b

    .line 262
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f07a0

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 259
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f07a1

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 256
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f07a2

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v4, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 266
    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 269
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    return-object v1

    .line 273
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v14, :cond_19

    const v4, 0x7f0b0404

    .line 274
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    iget v4, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 280
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    move-result v4

    .line 281
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_15

    const/16 v4, 0x8

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    .line 282
    :goto_c
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_16

    .line 284
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 285
    invoke-virtual {v4, v11}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 286
    iget-object v6, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 287
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 288
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_16
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 292
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, v3, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    if-eqz v2, :cond_18

    const v3, 0x7f0900e4

    .line 299
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 300
    invoke-virtual {v2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v3, 0x7f090764

    .line 301
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NicknameView;

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, -0x1

    goto :goto_d

    :cond_17
    const/high16 v4, -0x1000000

    :goto_d
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 303
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :cond_18
    return-object v1

    .line 306
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v4

    const/4 v10, 0x4

    if-ne v4, v10, :cond_1c

    const v4, 0x7f0b0409

    .line 307
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 308
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLevel()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080409

    const-string v6, "fail"

    .line 310
    invoke-static {v2, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const v4, 0x7f080405

    goto :goto_e

    :cond_1a
    const-string v6, "success"

    .line 312
    invoke-static {v2, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v4, 0x7f08040e

    .line 315
    :cond_1b
    :goto_e
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    .line 318
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 322
    iget-object v4, v3, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 324
    iget-object v4, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v5, v3, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configOperator(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    return-object v1

    .line 327
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v6, :cond_1d

    const v4, 0x7f0b040a

    .line 328
    invoke-virtual {v0, v4, v2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 329
    invoke-direct {v0, v3, v1}, Lcom/narvii/notice/ImportNoticeListAdapter;->configCommunityLayout(Lcom/narvii/account/notice/AccountNotice;Landroid/view/View;)V

    const v2, 0x7f090c0a

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 444
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    instance-of v1, v0, Lcom/narvii/account/notice/AccountNotice;

    if-eqz v1, :cond_2

    .line 446
    move-object v1, v0

    check-cast v1, Lcom/narvii/account/notice/AccountNotice;

    .line 447
    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    if-eqz v2, :cond_0

    return v3

    .line 451
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 455
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return v3

    .line 459
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 584
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    const/4 p1, 0x1

    .line 585
    iput-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 379
    instance-of v0, p3, Lcom/narvii/account/notice/AccountNotice;

    if-eqz v0, :cond_b

    .line 380
    move-object v0, p3

    check-cast v0, Lcom/narvii/account/notice/AccountNotice;

    .line 381
    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    if-nez p5, :cond_0

    return v3

    :cond_0
    if-eqz p5, :cond_7

    const p1, 0x7f090786

    .line 385
    invoke-virtual {p5, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 386
    instance-of p3, p1, Ljava/lang/Integer;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_2

    .line 393
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    invoke-direct {p0, p1, p4}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    goto :goto_2

    .line 390
    :cond_3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    invoke-direct {p0, p1, v3}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    goto :goto_2

    .line 399
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 414
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/notice/ImportNoticeListAdapter;->upgrateApp()V

    goto :goto_2

    .line 404
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    invoke-direct {p0, p1, p4}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    goto :goto_2

    .line 407
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 408
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_6

    .line 410
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 401
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    invoke-direct {p0, p1, v3}, Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V

    :cond_6
    :goto_2
    return v3

    .line 421
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/narvii/account/notice/AccountNoticeConfig;->allowQuickOperation:Z

    if-eqz v1, :cond_8

    return v3

    .line 425
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/narvii/notice/ImportNoticeListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v3, :cond_9

    return v3

    .line 429
    :cond_9
    const-class v1, Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notice"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_a

    .line 433
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "community"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :cond_a
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 438
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090020 -> :sswitch_3
        0x7f0900e4 -> :sswitch_2
        0x7f090334 -> :sswitch_1
        0x7f090c0a -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 590
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/account/notice/AccountNotice;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 591
    invoke-super {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V
    .locals 2

    .line 366
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 367
    iget-object p3, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->communityMap:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 368
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->communityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    .line 371
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    const-string p1, "account"

    .line 372
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 373
    iget p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->ndcId:I

    iget v0, p2, Lcom/narvii/account/notice/AccountNoticeListResponse;->noticeCount:I

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 65
    check-cast p2, Lcom/narvii/account/notice/AccountNoticeListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/notice/ImportNoticeListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/notice/AccountNoticeListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/account/notice/AccountNoticeListResponse;",
            ">;"
        }
    .end annotation

    .line 96
    const-class v0, Lcom/narvii/account/notice/AccountNoticeListResponse;

    return-object v0
.end method

.method protected sendRefreshReminderRequest(Lcom/narvii/account/notice/AccountNotice;)V
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 534
    :cond_1
    iget v0, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    if-lez v0, :cond_2

    const-string v0, "api"

    .line 535
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 536
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "reminder/check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 537
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 538
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ignoreUnreadChatThreadsCount"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 539
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 540
    new-instance v2, Lcom/narvii/notice/ImportNoticeListAdapter$2;

    const-class v3, Lcom/narvii/community/ReminderCheckResult;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/notice/ImportNoticeListAdapter$2;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/account/notice/AccountNotice;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    const-string p1, "_notice"

    .line 553
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz p1, :cond_3

    .line 555
    invoke-virtual {p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    :cond_3
    return-void
.end method
