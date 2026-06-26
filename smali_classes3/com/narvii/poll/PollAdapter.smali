.class public Lcom/narvii/poll/PollAdapter;
.super Ljava/lang/Object;
.source "PollAdapter.java"

# interfaces
.implements Lcom/narvii/poll/PollService$VoteListener;
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field public static final REQUEST_POLL_ORGANIZER:I = 0xf602

.field public static final REQUEST_POLL_PICK_ITEM:I = 0xf601

.field static final VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field api:Lcom/narvii/util/http/ApiService;

.field backgroundColor:I

.field blog:Lcom/narvii/model/Blog;

.field darkTheme:Z

.field forceShowResult:Ljava/lang/Boolean;

.field fragment:Lcom/narvii/app/NVFragment;

.field optionsCell:Landroid/view/View;

.field optionsView:Lcom/narvii/poll/PollOptionListLayout;

.field parent:Lcom/narvii/list/NVAdapter;

.field pollService:Lcom/narvii/poll/PollService;

.field private preview:Z

.field public previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

.field votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

.field final votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/poll/VotersSummaryResponse;",
            ">;"
        }
    .end annotation
.end field

.field votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.vote.options"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 51
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.vote.not_enough_options"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 52
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.vote.toolbar"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/narvii/poll/PollAdapter$1;

    const-class v1, Lcom/narvii/poll/VotersSummaryResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/poll/PollAdapter$1;-><init>(Lcom/narvii/poll/PollAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 74
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 75
    iput-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    const-string p2, "api"

    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    const-string p2, "poll"

    .line 77
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/poll/PollService;

    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->pollService:Lcom/narvii/poll/PollService;

    .line 78
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->pollService:Lcom/narvii/poll/PollService;

    iget-object p1, p1, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method private addCollectionPoll(Lcom/narvii/model/Item;)V
    .locals 4

    .line 405
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/poll/PollOptionResponse;

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 406
    iput v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    .line 407
    new-instance v2, Lcom/narvii/poll/PollAdapter$3;

    invoke-direct {v2, p0}, Lcom/narvii/poll/PollAdapter$3;-><init>(Lcom/narvii/poll/PollAdapter;)V

    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 413
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/poll/option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x2

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "refObjectType"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 419
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string v1, "refObjectId"

    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 420
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const-string v1, "api"

    invoke-virtual {p1, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 421
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method abortVotersSummaryRequest()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    :cond_0
    return-void
.end method

.method public buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 170
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public destory()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->pollService:Lcom/narvii/poll/PollService;

    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public edit()V
    .locals 2

    .line 340
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method public getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 181
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    .line 182
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    if-nez p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const v0, 0x7f0b0163

    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    .line 184
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    const p2, 0x7f09085d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/poll/PollOptionListLayout;

    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 185
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p3, v2

    :goto_1
    invoke-virtual {p1, p2, p3, v1}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 186
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    iget-boolean p2, p0, Lcom/narvii/poll/PollAdapter;->preview:Z

    iput-boolean p2, p1, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 187
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    invoke-virtual {p1, p2}, Lcom/narvii/poll/PollOptionListLayout;->setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V

    .line 188
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    iget-boolean p2, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    invoke-virtual {p1, p2}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    .line 189
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    const-string p2, "Detail View"

    iput-object p2, p1, Lcom/narvii/poll/PollOptionListLayout;->statSource:Ljava/lang/String;

    .line 190
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p2, p1, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 191
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    const-string p2, "loggingOrigin"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/narvii/util/logging/LoggingOrigin;->valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;

    move-result-object v2

    :goto_2
    iput-object v2, p2, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    .line 197
    :cond_4
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    invoke-virtual {p1, v1, p2, p3}, Lcom/narvii/poll/PollOptionListLayout;->setVotersSummary(ZLcom/narvii/poll/VotersSummaryResponse;Z)V

    .line 198
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    return-object p1

    .line 200
    :cond_6
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_8

    .line 201
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const v0, 0x7f0b0164

    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 202
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0388

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-boolean p3, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz p3, :cond_7

    const/4 p3, -0x1

    goto :goto_3

    :cond_7
    const p3, -0xaaaaab

    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1

    .line 206
    :cond_8
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_15

    .line 207
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const v0, 0x7f0b0165

    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result p2

    .line 210
    iget-object p3, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f090cd1

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    iget-object v2, v2, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_9

    const v2, 0x7f0f0068

    goto :goto_4

    :cond_9
    const v2, 0x7f0f0aa0

    .line 213
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f060059

    const v3, 0x7f060058

    if-eqz p2, :cond_b

    .line 214
    iget-boolean v4, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz v4, :cond_a

    const v4, 0x7f060059

    goto :goto_5

    :cond_a
    const v4, 0x7f060058

    goto :goto_5

    :cond_b
    const v4, 0x7f06005c

    :goto_5
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0800f6

    const v5, 0x7f0800f5

    if-eqz p2, :cond_d

    .line 216
    iget-boolean v6, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz v6, :cond_c

    const v6, 0x7f0800f6

    goto :goto_6

    :cond_c
    const v6, 0x7f0800f5

    goto :goto_6

    :cond_d
    const v6, 0x7f0800e2

    :goto_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    iget-object v6, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v6}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result v6

    if-nez v6, :cond_e

    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isJoinEnabled()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_7

    :cond_e
    const/16 v1, 0x8

    :cond_f
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f090ce5

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0f0381

    goto :goto_8

    :cond_10
    const v0, 0x7f0f0390

    .line 223
    :goto_8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz v0, :cond_11

    const v0, 0x7f060059

    goto :goto_9

    :cond_11
    const v0, 0x7f060058

    :goto_9
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz v0, :cond_12

    const v0, 0x7f0800f6

    goto :goto_a

    :cond_12
    const v0, 0x7f0800f5

    :goto_a
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p2, 0x7f090cd0

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 228
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_13
    const v2, 0x7f060058

    :goto_b
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-boolean p3, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    if-eqz p3, :cond_14

    goto :goto_c

    :cond_14
    const v4, 0x7f0800f5

    :goto_c
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 230
    iget-object p3, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    iget-object p3, p3, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_15
    return-object v2
.end method

.method public isJoinEnabled()Z
    .locals 5

    .line 148
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pollSettings"

    aput-object v4, v3, v1

    const-string v1, "joinEnabled"

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 137
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xf601

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "item"

    .line 394
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/narvii/model/Item;

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    if-eqz p2, :cond_0

    .line 396
    invoke-direct {p0, p2}, Lcom/narvii/poll/PollAdapter;->addCollectionPoll(Lcom/narvii/model/Item;)V

    :cond_0
    const p2, 0xf602

    if-ne p1, p2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 241
    sget-object p1, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    const p2, 0x7f0f038d

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, p1, :cond_8

    if-eqz p5, :cond_8

    .line 242
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090ce5

    if-ne p1, v1, :cond_8

    .line 243
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto/16 :goto_1

    .line 247
    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 248
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p1, :cond_1

    .line 249
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->abortVotersSummaryRequest()V

    .line 252
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_3

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    .line 256
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0389

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollVoted()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 265
    :cond_4
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f038c

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 259
    :cond_5
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 260
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p1, :cond_6

    .line 261
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 263
    :cond_6
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_1
    return v0

    .line 271
    :cond_8
    sget-object p1, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, p1, :cond_e

    if-eqz p5, :cond_e

    .line 272
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090cd1

    if-ne p1, v1, :cond_e

    .line 273
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 274
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_2

    .line 275
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 276
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result p1

    if-ne p1, v0, :cond_a

    .line 277
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->edit()V

    goto :goto_2

    .line 279
    :cond_a
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/narvii/poll/post/PlainPollPostActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "blog"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 283
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result p1

    if-ne p1, v0, :cond_d

    .line 284
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v0

    .line 287
    :cond_c
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "mine"

    .line 288
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "mode"

    .line 289
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    const p3, 0x7f0f038b

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "title"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    const p3, 0xf601

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    :goto_2
    return v0

    .line 295
    :cond_e
    sget-object p1, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, p1, :cond_12

    if-eqz p5, :cond_12

    .line 296
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090cd0

    if-ne p1, p2, :cond_12

    .line 297
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0ea7

    .line 298
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 299
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result p2

    if-nez p2, :cond_10

    .line 300
    :cond_f
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result p2

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isJoinEnabled()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result p2

    if-eqz p2, :cond_11

    :cond_10
    const p2, 0x7f0f038e

    .line 301
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 303
    :cond_11
    new-instance p2, Lcom/narvii/poll/PollAdapter$2;

    invoke-direct {p2, p0}, Lcom/narvii/poll/PollAdapter$2;-><init>(Lcom/narvii/poll/PollAdapter;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v0

    :cond_12
    return p4
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public onVoteFail(Lcom/narvii/model/Blog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVoteFinish(Lcom/narvii/model/Blog;Ljava/lang/String;)V
    .locals 2

    .line 373
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 374
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 375
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 377
    :cond_0
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_2

    iget-object v1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 378
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 379
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 380
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p1, :cond_1

    .line 381
    iput-object v0, p1, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public organizer()V
    .locals 6

    .line 344
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    move-result v0

    const v1, 0xf602

    const-string v2, "blog"

    const-string v3, "id"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const-class v4, Lcom/narvii/poll/organizer/PollOptionOrganizerFragment;

    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 348
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v5}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 352
    :cond_0
    const-class v4, Lcom/narvii/poll/organizer/MyParticipationListFragment;

    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 353
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v5}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const-class v0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    iget-object v4, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v3, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public polloptType()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/narvii/model/Blog;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pollSettings"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "polloptType"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public refresh()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 333
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f038f

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method sendVotersSummaryRequest()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/blog/"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/poll/options-active-voterssummary"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 115
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setBlog(Lcom/narvii/model/Blog;)V
    .locals 3

    .line 93
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 94
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 95
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    :cond_2
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 0

    .line 126
    iput p2, p0, Lcom/narvii/poll/PollAdapter;->backgroundColor:I

    .line 127
    iput-boolean p1, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 128
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p2, p1}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method public setPreview(Z)V
    .locals 1

    .line 82
    iput-boolean p1, p0, Lcom/narvii/poll/PollAdapter;->preview:Z

    .line 83
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v0, :cond_0

    .line 84
    iput-boolean p1, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    :cond_0
    return-void
.end method

.method protected showResult()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isPollVoted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
