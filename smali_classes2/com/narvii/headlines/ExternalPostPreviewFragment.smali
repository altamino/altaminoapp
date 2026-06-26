.class public Lcom/narvii/headlines/ExternalPostPreviewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "ExternalPostPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;


# instance fields
.field private blog:Lcom/narvii/model/Blog;

.field private btnVote:Lcom/narvii/widget/BottomVoteIcon;

.field headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field languageService:Lcom/narvii/language/ContentLanguageService;

.field private lastDuration:J

.field private lastEnterTime:J

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field private readCompleteness:I

.field private touchFeedEnd:Z

.field private tvCommentCount:Landroid/widget/TextView;

.field private tvVoteCount:Landroid/widget/TextView;

.field private voteProgress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 83
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->shareFeed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleBookMark()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleNotInterest()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleOpenBrower()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/widget/BottomVoteIcon;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteProgress:Landroid/view/View;

    return-object p0
.end method

.method private handleBookMark()V
    .locals 4

    const-string v0, "affiliations"

    .line 279
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    const-string v1, "__communityId"

    .line 280
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    .line 281
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v2}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f075b

    .line 290
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v3, 0x7f0f0193

    .line 291
    invoke-virtual {v0, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0aa0

    .line 292
    new-instance v3, Lcom/narvii/headlines/ExternalPostPreviewFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$3;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;I)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 304
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method private handleNotInterest()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-direct {p0, v0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method private handleOpenBrower()V
    .locals 0

    .line 313
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->openInExternalWebBrowser()V

    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 375
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private moreOptions()V
    .locals 5

    .line 242
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x7

    new-array v1, v1, [I

    const v2, 0x7f0f0fa2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 246
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f0170

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 248
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f06d5

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 250
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f0cfc

    const/4 v4, 0x3

    aput v2, v1, v4

    .line 252
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 253
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;[I)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private queryFeedDetail()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 383
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 384
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Feed;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    const-string v1, "deviceid"

    .line 333
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 334
    invoke-virtual {v1}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "headline/feedback/report"

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v3, 0x1

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 338
    iget-object v4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v4}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v4

    const-string v5, "language"

    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "deviceID"

    .line 339
    invoke-virtual {v2, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "__communityId"

    .line 340
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "ndcId"

    invoke-virtual {v2, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 341
    instance-of v1, p1, Lcom/narvii/model/Item;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "objectType"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 342
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    const-string v1, "objectId"

    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "channelId"

    .line 343
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "channel"

    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 344
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 345
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 346
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method private shareFeed(Ljava/lang/String;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 352
    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 353
    new-instance v1, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {v1, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 354
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$5;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 365
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V

    invoke-static {p0, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private voteFeed()V
    .locals 7

    .line 418
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 419
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    new-instance v3, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;

    invoke-direct {v3, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    new-instance v4, Lcom/narvii/headlines/ExternalPostPreviewFragment$9;

    invoke-direct {v4, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$9;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    const-string v2, "fromHeadline"

    .line 431
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    sget-object v5, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Headlines"

    move-object v6, v2

    :cond_1
    const/4 v2, 0x0

    .line 419
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->vote(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commentNew()V
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    move-result v1

    const-string v2, "parentType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const-string v2, "parentSubType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stat_parent_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v4, "loggingSource"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v1, "loggingOrigin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "autoJoin"

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    if-gtz v1, :cond_3

    const-string v1, "__communityId"

    .line 456
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    :cond_3
    const-string v3, "affiliations"

    .line 458
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/AffiliationsService;

    .line 459
    invoke-virtual {v3, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "showEmojiOnly"

    .line 460
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getOnlineBarLift()I
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 6

    .line 132
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    const-string v0, "fromHeadline"

    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastEnterTime:J

    goto :goto_1

    .line 137
    :cond_0
    iget-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastEnterTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    .line 138
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTop()I

    move-result v1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float p1, v0, p1

    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 142
    iput p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->readCompleteness:I

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onClick(Landroid/view/View;)V

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 207
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteFeed()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x0

    .line 232
    invoke-direct {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->shareFeed(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->moreOptions()V

    goto :goto_0

    .line 211
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->commentNew()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    if-gtz p1, :cond_1

    const-string p1, "__communityId"

    .line 216
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    :cond_1
    const-string v0, "affiliations"

    .line 218
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 219
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    .line 220
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 221
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 222
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 223
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    .line 224
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->showEmojiOnly(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    const-string v1, "__interactionScope"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09028e -> :sswitch_3
        0x7f090728 -> :sswitch_2
        0x7f090a28 -> :sswitch_1
        0x7f090cd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 98
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const-string v0, "prefetch"

    .line 100
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_0
    const-string v0, "blog"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    :goto_0
    const-string v0, "content_language"

    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->setShowProgress(Z)V

    .line 107
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->queryFeedDetail()V

    .line 108
    new-instance v1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    invoke-direct {v1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    const-string v1, "fromHeadline"

    .line 110
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "communityNavBar"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {v1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 112
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "showBackButton"

    .line 113
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b029f

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 7

    .line 151
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget-wide v2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    iget v4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->readCompleteness:I

    const-string v5, "channelId"

    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewQuit(Lcom/narvii/model/Feed;JILjava/lang/String;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 466
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 467
    check-cast v0, Lcom/narvii/model/Blog;

    .line 468
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 469
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    .line 470
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 471
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    goto :goto_2

    .line 473
    :cond_1
    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    if-eq v0, v1, :cond_2

    const-string v1, "delete"

    if-ne v0, v1, :cond_4

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Comment;

    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 476
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090cdc

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/BottomVoteIcon;

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    const p2, 0x7f090cd6

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09028e

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090a28

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090728

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090cd7

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    const p2, 0x7f090290

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    const p2, 0x7f090ce0

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteProgress:Landroid/view/View;

    const p2, 0x7f09014c

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    return-void
.end method

.method public updateBottomViews()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 408
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 412
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method
