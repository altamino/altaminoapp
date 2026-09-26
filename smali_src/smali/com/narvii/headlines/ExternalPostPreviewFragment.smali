.class public Lcom/narvii/headlines/ExternalPostPreviewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field public static final SOURCE:Ljava/lang/String; = "Source"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleNotInterest()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleOpenBrower()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->shareFeed(Ljava/lang/String;)V

    return-void
.end method

.method private handleBookMark()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "affiliations"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    const-string v1, "__communityId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$2;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    const v3, 0x7f120808

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 57
    .line 58
    .line 59
    const v3, 0x7f1201e2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 63
    .line 64
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$3;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0, v1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$3;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;I)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f120b53

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 77
    :goto_0
    return-void
.end method

.method private handleNotInterest()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->sendNoInterestRequest(Lcom/narvii/model/Feed;)V

    .line 6
    return-void
.end method

.method private handleOpenBrower()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->openInExternalWebBrowser()V

    .line 4
    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private moreOptions()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x7

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    const v3, 0x7f1210ad

    .line 17
    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    .line 25
    const v4, 0x7f1201bb

    .line 26
    .line 27
    aput v4, v1, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 31
    const/4 v3, 0x2

    .line 32
    .line 33
    .line 34
    const v4, 0x7f120781

    .line 35
    .line 36
    aput v4, v1, v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 40
    const/4 v3, 0x3

    .line 41
    .line 42
    .line 43
    const v4, 0x7f120e24

    .line 44
    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 49
    .line 50
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;[I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 60
    return-void
.end method

.method private queryFeedDetail()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 13
    .line 14
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "/blog/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->id()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "api"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;

    .line 58
    .line 59
    const-class v3, Lcom/narvii/model/api/BlogResponse;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v3}, Lcom/narvii/headlines/ExternalPostPreviewFragment$7;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 66
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

.method private sendNoInterestRequest(Lcom/narvii/model/Feed;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$4;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Feed;)V

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 20
    .line 21
    .line 22
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    const-string v4, "headline/feedback/report"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    const-string/jumbo v3, "type"

    .line 43
    const/4 v4, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    const-string v5, "language"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v5, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    sget-object v3, La0/a;->o:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    const-string v1, "__communityId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const-string v3, "ndcId"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    .line 83
    instance-of v1, p1, Lcom/narvii/model/Item;

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    const/4 v4, 0x2

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    const-string v3, "objectType"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    .line 97
    const-string v1, "objectId"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    .line 106
    const-string p1, "channelId"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    const-string v1, "channel"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    .line 117
    const-string p1, "api"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    iget-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 136
    return-void
.end method

.method private shareFeed(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 9
    const/4 v2, 0x6

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$5;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment$5;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->startQuizShareIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0, p0, p1, v0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$6;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Feed;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method private voteFeed()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    new-instance v3, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 14
    .line 15
    new-instance v4, Lcom/narvii/headlines/ExternalPostPreviewFragment$9;

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment$9;-><init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 19
    .line 20
    const-string v5, "fromHeadline"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    sget-object v6, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v6, v7

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const-string v5, "Headlines"

    .line 40
    move-object v7, v5

    .line 41
    :cond_1
    move-object v5, v6

    .line 42
    move-object v6, v7

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->vote(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    .line 46
    .line 47
    const-string/jumbo v0, "statistics"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 56
    const/4 v2, 0x1

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    const-string v2, "Like Post"

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v2, "Likes Total"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v2, "post_type"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    const-string v1, "Source"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 92
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/widget/BottomVoteIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteProgress:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/headlines/ExternalPostPreviewFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->handleBookMark()V

    return-void
.end method


# virtual methods
.method public commentNew()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-class v2, Lcom/narvii/comment/post/CommentPostActivity;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    .line 22
    move-result v1

    .line 23
    .line 24
    const-string v2, "parentType"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "parentId"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 41
    .line 42
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 43
    .line 44
    const-string v2, "parentSubType"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "feed"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v1, v2}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string/jumbo v3, "stat_parent_type"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 73
    const/4 v3, 0x0

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    move-object v1, v3

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    :goto_0
    const-string v4, "loggingSource"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 89
    .line 90
    if-nez v1, :cond_2

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    :goto_1
    const-string v1, "loggingOrigin"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    const-string v1, "autoJoin"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 108
    .line 109
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    .line 110
    .line 111
    if-gtz v1, :cond_3

    .line 112
    .line 113
    const-string v1, "__communityId"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 117
    move-result v1

    .line 118
    .line 119
    :cond_3
    const-string v3, "affiliations"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    check-cast v3, Lcom/narvii/community/AffiliationsService;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 129
    move-result v1

    .line 130
    xor-int/2addr v1, v2

    .line 131
    .line 132
    const-string/jumbo v2, "showEmojiOnly"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public getOnlineBarLift()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0701aa

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const/high16 v2, 0x41a00000    # 20.0f

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 22
    move-result v1

    .line 23
    sub-float/2addr v0, v1

    .line 24
    float-to-int v0, v0

    .line 25
    return v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "fromHeadline"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastEnterTime:J

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastEnterTime:J

    .line 29
    sub-long/2addr v2, v4

    .line 30
    add-long/2addr v0, v2

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    .line 40
    move-result p1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    const/4 p1, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sub-int/2addr v0, v1

    .line 58
    int-to-float v0, v0

    .line 59
    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    mul-float/2addr v0, v1

    .line 62
    int-to-float p1, p1

    .line 63
    .line 64
    div-float p1, v0, p1

    .line 65
    .line 66
    :goto_0
    const/high16 v0, 0x42c80000    # 100.0f

    .line 67
    mul-float/2addr p1, v0

    .line 68
    float-to-int p1, p1

    .line 69
    .line 70
    iput p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->readCompleteness:I

    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteFeed()V

    .line 15
    goto :goto_0

    .line 16
    :sswitch_1
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->shareFeed(Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->moreOptions()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->commentNew()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 39
    .line 40
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 41
    .line 42
    if-gtz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "__communityId"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 48
    move-result p1

    .line 49
    .line 50
    :cond_1
    const-string v0, "affiliations"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->objectType()I

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    xor-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->showEmojiOnly(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string v0, "__interactionScope"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 111
    move-result v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    :sswitch_data_0
    .sparse-switch
        0x7f0a0356 -> :sswitch_3
        0x7f0a0991 -> :sswitch_2
        0x7f0a0cf0 -> :sswitch_1
        0x7f0a0ffc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/model/Blog;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string v1, "prefetch"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Blog;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v1, "blog"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 37
    .line 38
    :goto_0
    const-string v0, "content_language"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 47
    const/4 v0, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/webview/WebViewFragment;->setShowProgress(Z)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->queryFeedDetail()V

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 64
    .line 65
    const-string v1, "fromHeadline"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const-string v2, "communityNavBar"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 95
    .line 96
    new-instance v3, Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    const-string/jumbo v4, "showBackButton"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    const v4, 0x1020002

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 126
    .line 127
    :cond_1
    if-nez p1, :cond_2

    .line 128
    .line 129
    const-string/jumbo p1, "statistics"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v1, v0}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    const-string v1, "Detailed Page Opened"

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    const-string/jumbo v1, "type"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    const-string v1, "Source"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    const-string v1, "Detailed Page Opened Total"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    const-string v2, "Detailed "

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v0, " Page Opened"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 195
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02cf

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
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->lastDuration:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-lez v6, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v2, v4

    .line 18
    .line 19
    :goto_0
    iget v4, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->readCompleteness:I

    .line 20
    .line 21
    const-string v5, "channelId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewQuit(Lcom/narvii/model/Feed;JILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/Blog;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/model/Blog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/Blog;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "new"

    .line 49
    .line 50
    if-eq v0, v1, :cond_2

    .line 51
    .line 52
    const-string v1, "delete"

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    :goto_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/model/Comment;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/model/Comment;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    .line 90
    :cond_4
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "blog"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a1002

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/BottomVoteIcon;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a0ffc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a0356

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a0cf0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0a0991

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0ffd

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0a0358

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    check-cast p2, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    const p2, 0x7f0a1006

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteProgress:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    const p2, 0x7f0a01eb

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    const/4 p2, 0x0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->updateBottomViews()V

    .line 100
    return-void
.end method

.method public updateBottomViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->btnVote:Lcom/narvii/widget/BottomVoteIcon;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvVoteCount:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 48
    move-result v3

    .line 49
    .line 50
    if-lez v3, :cond_2

    .line 51
    move v3, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v3, v1

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->tvCommentCount:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment;->blog:Lcom/narvii/model/Blog;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    .line 81
    move-result v3

    .line 82
    .line 83
    if-lez v3, :cond_4

    .line 84
    move v1, v2

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_5
    return-void
.end method
