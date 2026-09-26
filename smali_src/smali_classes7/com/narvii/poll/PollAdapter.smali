.class public Lcom/narvii/poll/PollAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.vote.options"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 12
    .line 13
    const-string v1, "detail.vote.not_enough_options"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    const-string v1, "detail.vote.toolbar"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/app/NVFragment;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/poll/PollAdapter$1;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/poll/VotersSummaryResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/poll/PollAdapter$1;-><init>(Lcom/narvii/poll/PollAdapter;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    const-string p2, "api"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    const-string p2, "poll"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/poll/PollService;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->pollService:Lcom/narvii/poll/PollService;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private addCollectionPoll(Lcom/narvii/model/Item;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-class v2, Lcom/narvii/poll/PollOptionResponse;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    iput v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    .line 17
    .line 18
    new-instance v2, Lcom/narvii/poll/PollAdapter$3;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/narvii/poll/PollAdapter$3;-><init>(Lcom/narvii/poll/PollAdapter;)V

    .line 22
    .line 23
    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "/blog/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "/poll/option"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    const-string v3, "type"

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    const/4 v1, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    const-string v3, "refObjectType"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    .line 87
    const-string v1, "refObjectId"

    .line 88
    .line 89
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 95
    .line 96
    const-string v1, "api"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public static safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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


# virtual methods
.method abortVotersSummaryRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 15
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    return-void
.end method

.method public destory()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->pollService:Lcom/narvii/poll/PollService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public edit()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    .line 13
    return-void
.end method

.method public getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne p1, v0, :cond_6

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    .line 9
    .line 10
    if-nez p1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0d0181

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a0b17

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/poll/PollOptionListLayout;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 40
    move-result p3

    .line 41
    .line 42
    if-eqz p3, :cond_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    move-object p3, v2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p1, p2, p3, v1}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 53
    .line 54
    iget-boolean p2, p0, Lcom/narvii/poll/PollAdapter;->preview:Z

    .line 55
    .line 56
    iput-boolean p2, p1, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/poll/PollOptionListLayout;->setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 64
    .line 65
    iget-boolean p2, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 71
    .line 72
    const-string p2, "Detail View"

    .line 73
    .line 74
    iput-object p2, p1, Lcom/narvii/poll/PollOptionListLayout;->statSource:Ljava/lang/String;

    .line 75
    .line 76
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 77
    .line 78
    iput-object p2, p1, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 81
    .line 82
    const-string p2, "loggingOrigin"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 89
    .line 90
    if-nez p1, :cond_2

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/logging/LoggingOrigin;->valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    :goto_2
    iput-object v2, p2, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 101
    move-result p1

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 106
    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 110
    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    .line 115
    .line 116
    :cond_4
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 120
    move-result p2

    .line 121
    const/4 p3, 0x1

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 126
    .line 127
    if-eqz p2, :cond_5

    .line 128
    move v1, p3

    .line 129
    .line 130
    :cond_5
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1, p2, p3}, Lcom/narvii/poll/PollOptionListLayout;->setVotersSummary(ZLcom/narvii/poll/VotersSummaryResponse;Z)V

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsCell:Landroid/view/View;

    .line 136
    return-object p1

    .line 137
    .line 138
    :cond_6
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_NOT_ENOUGH_OPTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 139
    .line 140
    if-ne p1, v0, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 143
    .line 144
    .line 145
    const v0, 0x7f0d0182

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    move-object p2, p1

    .line 151
    .line 152
    check-cast p2, Landroid/widget/TextView;

    .line 153
    .line 154
    .line 155
    const p3, 0x7f1203e0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 159
    .line 160
    iget-boolean p3, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 161
    .line 162
    if-eqz p3, :cond_7

    .line 163
    const/4 p3, -0x1

    .line 164
    goto :goto_3

    .line 165
    .line 166
    .line 167
    :cond_7
    const p3, -0xaaaaab

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    return-object p1

    .line 172
    .line 173
    :cond_8
    sget-object v0, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 174
    .line 175
    if-ne p1, v0, :cond_15

    .line 176
    .line 177
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 178
    .line 179
    .line 180
    const v0, 0x7f0d0183

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 188
    move-result p2

    .line 189
    .line 190
    iget-object p3, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object p3

    .line 199
    .line 200
    .line 201
    const v0, 0x7f0a0ff7

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 210
    .line 211
    iget-object v2, v2, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    if-eqz p2, :cond_9

    .line 217
    .line 218
    .line 219
    const v2, 0x7f120071

    .line 220
    goto :goto_4

    .line 221
    .line 222
    .line 223
    :cond_9
    const v2, 0x7f120b53

    .line 224
    .line 225
    .line 226
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    .line 228
    .line 229
    const v2, 0x7f060078

    .line 230
    .line 231
    .line 232
    const v3, 0x7f060079

    .line 233
    .line 234
    if-eqz p2, :cond_b

    .line 235
    .line 236
    iget-boolean v4, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 237
    .line 238
    if-eqz v4, :cond_a

    .line 239
    move v4, v3

    .line 240
    goto :goto_5

    .line 241
    :cond_a
    move v4, v2

    .line 242
    goto :goto_5

    .line 243
    .line 244
    .line 245
    :cond_b
    const v4, 0x7f06007c

    .line 246
    .line 247
    .line 248
    :goto_5
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 249
    move-result-object v4

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    .line 254
    .line 255
    const v4, 0x7f080186

    .line 256
    .line 257
    .line 258
    const v5, 0x7f080187

    .line 259
    .line 260
    if-eqz p2, :cond_d

    .line 261
    .line 262
    iget-boolean v6, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 263
    .line 264
    if-eqz v6, :cond_c

    .line 265
    move v6, v5

    .line 266
    goto :goto_6

    .line 267
    :cond_c
    move v6, v4

    .line 268
    goto :goto_6

    .line 269
    .line 270
    .line 271
    :cond_d
    const v6, 0x7f080172

    .line 272
    .line 273
    .line 274
    :goto_6
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    .line 276
    iget-object v6, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 280
    move-result v6

    .line 281
    .line 282
    if-nez v6, :cond_e

    .line 283
    .line 284
    if-nez p2, :cond_f

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isJoinEnabled()Z

    .line 288
    move-result p2

    .line 289
    .line 290
    if-eqz p2, :cond_e

    .line 291
    goto :goto_7

    .line 292
    .line 293
    :cond_e
    const/16 v1, 0x8

    .line 294
    .line 295
    .line 296
    :cond_f
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    const p2, 0x7f0a100a

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 303
    move-result-object p2

    .line 304
    .line 305
    check-cast p2, Landroid/widget/TextView;

    .line 306
    .line 307
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 316
    move-result v0

    .line 317
    .line 318
    if-eqz v0, :cond_10

    .line 319
    .line 320
    .line 321
    const v0, 0x7f1203d9

    .line 322
    goto :goto_8

    .line 323
    .line 324
    .line 325
    :cond_10
    const v0, 0x7f1203e8

    .line 326
    .line 327
    .line 328
    :goto_8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 329
    .line 330
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 331
    .line 332
    if-eqz v0, :cond_11

    .line 333
    move v0, v3

    .line 334
    goto :goto_9

    .line 335
    :cond_11
    move v0, v2

    .line 336
    .line 337
    .line 338
    :goto_9
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 339
    move-result-object v0

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 343
    .line 344
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 345
    .line 346
    if-eqz v0, :cond_12

    .line 347
    move v0, v5

    .line 348
    goto :goto_a

    .line 349
    :cond_12
    move v0, v4

    .line 350
    .line 351
    .line 352
    :goto_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    const p2, 0x7f0a0ff6

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 359
    move-result-object p2

    .line 360
    .line 361
    check-cast p2, Landroid/widget/TextView;

    .line 362
    .line 363
    iget-boolean v0, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 364
    .line 365
    if-eqz v0, :cond_13

    .line 366
    move v2, v3

    .line 367
    .line 368
    .line 369
    :cond_13
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 370
    move-result-object p3

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 374
    .line 375
    iget-boolean p3, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 376
    .line 377
    if-eqz p3, :cond_14

    .line 378
    move v4, v5

    .line 379
    .line 380
    .line 381
    :cond_14
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 382
    .line 383
    iget-object p3, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 384
    .line 385
    iget-object p3, p3, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-object p1

    .line 390
    :cond_15
    return-object v2
.end method

.method public isJoinEnabled()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string v1, "pollSettings"

    .line 16
    .line 17
    const-string v2, "joinEnabled"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public isMine()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xf601

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string p2, "item"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    const-class p3, Lcom/narvii/model/Item;

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/model/Item;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2}, Lcom/narvii/poll/PollAdapter;->addCollectionPoll(Lcom/narvii/model/Item;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const p2, 0xf602

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    .line 38
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/poll/PollAdapter;->VOTE_TOOLBAR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    const p2, 0x7f1203e5

    .line 6
    const/4 p4, 0x0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-ne p3, p1, :cond_8

    .line 10
    .line 11
    if-eqz p5, :cond_8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0a100a

    .line 19
    .line 20
    if-ne v1, v2, :cond_8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 63
    move-result p3

    .line 64
    .line 65
    .line 66
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->abortVotersSummaryRequest()V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    move-result p1

    .line 92
    const/4 p2, 0x2

    .line 93
    .line 94
    if-ge p1, p2, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    const p2, 0x7f1203e1

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-nez p1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollVoted()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_4
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    const p2, 0x7f1203e4

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 151
    goto :goto_1

    .line 152
    .line 153
    :cond_5
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    .line 155
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 165
    move-result p3

    .line 166
    .line 167
    .line 168
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    move-result-object p3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2, p3, v0}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 173
    .line 174
    :cond_6
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 178
    :cond_7
    :goto_1
    return v0

    .line 179
    .line 180
    :cond_8
    if-ne p3, p1, :cond_e

    .line 181
    .line 182
    if-eqz p5, :cond_e

    .line 183
    .line 184
    .line 185
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 186
    move-result v1

    .line 187
    .line 188
    .line 189
    const v2, 0x7f0a0ff7

    .line 190
    .line 191
    if-ne v1, v2, :cond_e

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 197
    move-result p1

    .line 198
    .line 199
    if-eqz p1, :cond_9

    .line 200
    .line 201
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 213
    goto :goto_2

    .line 214
    .line 215
    .line 216
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 217
    move-result p1

    .line 218
    .line 219
    if-eqz p1, :cond_b

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 223
    move-result p1

    .line 224
    .line 225
    if-ne p1, v0, :cond_a

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->edit()V

    .line 229
    goto :goto_2

    .line 230
    .line 231
    :cond_a
    new-instance p1, Landroid/content/Intent;

    .line 232
    .line 233
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 237
    move-result-object p2

    .line 238
    .line 239
    const-class p3, Lcom/narvii/poll/post/PlainPollPostActivity;

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .line 244
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 245
    .line 246
    .line 247
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    move-result-object p2

    .line 249
    .line 250
    const-string p3, "blog"

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 256
    .line 257
    .line 258
    invoke-static {p2, p1}, Lcom/narvii/poll/PollAdapter;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 259
    goto :goto_2

    .line 260
    .line 261
    .line 262
    :cond_b
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 263
    move-result p1

    .line 264
    .line 265
    if-ne p1, v0, :cond_d

    .line 266
    .line 267
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 268
    .line 269
    .line 270
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 271
    move-result p1

    .line 272
    .line 273
    if-eqz p1, :cond_c

    .line 274
    return v0

    .line 275
    .line 276
    :cond_c
    const-class p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 277
    .line 278
    .line 279
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    const-string p2, "mine"

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    .line 287
    const-string p2, "mode"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    .line 292
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 293
    .line 294
    .line 295
    const p3, 0x7f1203e3

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 299
    move-result-object p2

    .line 300
    .line 301
    const-string p3, "title"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .line 306
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->fragment:Lcom/narvii/app/NVFragment;

    .line 307
    .line 308
    .line 309
    const p3, 0xf601

    .line 310
    .line 311
    .line 312
    invoke-static {p2, p1, p3}, Lcom/narvii/poll/PollAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 313
    :cond_d
    :goto_2
    return v0

    .line 314
    .line 315
    :cond_e
    if-ne p3, p1, :cond_12

    .line 316
    .line 317
    if-eqz p5, :cond_12

    .line 318
    .line 319
    .line 320
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 321
    move-result p1

    .line 322
    .line 323
    .line 324
    const p2, 0x7f0a0ff6

    .line 325
    .line 326
    if-ne p1, p2, :cond_12

    .line 327
    .line 328
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 329
    .line 330
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 334
    move-result-object p2

    .line 335
    .line 336
    .line 337
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 338
    .line 339
    .line 340
    const p2, 0x7f120fc9

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 347
    move-result p2

    .line 348
    .line 349
    if-nez p2, :cond_f

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 353
    move-result p2

    .line 354
    .line 355
    if-nez p2, :cond_10

    .line 356
    .line 357
    .line 358
    :cond_f
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 359
    move-result p2

    .line 360
    .line 361
    if-ne p2, v0, :cond_11

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isJoinEnabled()Z

    .line 365
    move-result p2

    .line 366
    .line 367
    if-nez p2, :cond_10

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 371
    move-result p2

    .line 372
    .line 373
    if-eqz p2, :cond_11

    .line 374
    .line 375
    .line 376
    :cond_10
    const p2, 0x7f1203e6

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 380
    .line 381
    :cond_11
    new-instance p2, Lcom/narvii/poll/PollAdapter$2;

    .line 382
    .line 383
    .line 384
    invoke-direct {p2, p0}, Lcom/narvii/poll/PollAdapter$2;-><init>(Lcom/narvii/poll/PollAdapter;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 391
    return v0

    .line 392
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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummary:Lcom/narvii/poll/VotersSummaryResponse;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object v1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-object v0, p1, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    :cond_2
    return-void
.end method

.method public organizer()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->polloptType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    const v2, 0xf602

    .line 9
    .line 10
    const-string v3, "blog"

    .line 11
    .line 12
    const-string v4, "id"

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-class v1, Lcom/narvii/poll/organizer/PollOptionOrganizerFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    check-cast v5, Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v1, v2}, Lcom/narvii/poll/PollAdapter;->safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    const-class v1, Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    check-cast v5, Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v1, v2}, Lcom/narvii/poll/PollAdapter;->safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 92
    .line 93
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->isMine()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    const-class v0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    check-cast v1, Landroid/app/Activity;

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0, v2}, Lcom/narvii/poll/PollAdapter;->safedk_Activity_startActivityForResult_206f42f0b65887e835d87ee52d14d221(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 135
    :cond_2
    return-void
.end method

.method public polloptType()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "pollSettings"

    .line 15
    .line 16
    const-string v2, "polloptType"

    .line 17
    .line 18
    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public refresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->showResult()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/poll/PollAdapter;->sendVotersSummaryRequest()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f1203e7

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 33
    return-void
.end method

.method sendVotersSummaryRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "/blog/"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "/poll/options-active-voterssummary"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryRequest:Lcom/narvii/util/http/ApiRequest;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->api:Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->votersSummaryListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 61
    return-void
.end method

.method public setBlog(Lcom/narvii/model/Blog;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->parent:Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v2

    .line 30
    :goto_1
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 34
    :cond_2
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 0

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/poll/PollAdapter;->backgroundColor:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/narvii/poll/PollAdapter;->darkTheme:Z

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    .line 12
    :cond_0
    return-void
.end method

.method public setPreview(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/poll/PollAdapter;->preview:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->optionsView:Lcom/narvii/poll/PollOptionListLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-boolean p1, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 9
    :cond_0
    return-void
.end method

.method protected showResult()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->forceShowResult:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/poll/PollAdapter;->blog:Lcom/narvii/model/Blog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isPollVoted()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 30
    :goto_1
    return v0
.end method
