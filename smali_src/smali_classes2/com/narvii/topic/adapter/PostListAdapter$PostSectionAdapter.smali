.class public final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/PostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostSectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/PostListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 14
    return-void
.end method

.method private static final notifyDataSetChanged$lambda$1(Lcom/narvii/topic/adapter/PostListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    return-void
.end method

.method private static final onFailResponse$lambda$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private static final onItemClick$lambda$0(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object p2, p1

    .line 8
    .line 9
    check-cast p2, Lcom/narvii/model/Feed;

    .line 10
    .line 11
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 39
    return-void
.end method

.method private static final onPageResponse$lambda$2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/narvii/topic/adapter/PostListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->notifyDataSetChanged$lambda$1(Lcom/narvii/topic/adapter/PostListAdapter;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onFailResponse$lambda$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onItemClick$lambda$0(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onPageResponse$lambda$2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/logging/ObjectInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 18
    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->isReadyToRequest()Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v0

    .line 27
    :cond_1
    return-object v0
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "moduleType"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method

.method protected isHeadline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/adapter/s;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/narvii/topic/adapter/s;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->access$getDataSetEventDispatcher$p$s-695836687(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/topic/adapter/p;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Lcom/narvii/topic/adapter/p;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 33
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0653

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    const-string p2, "affiliations"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-string p4, "getService(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    .line 34
    .line 35
    const-string p4, "null cannot be cast to non-null type com.narvii.model.Feed"

    .line 36
    .line 37
    .line 38
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object p4, p3

    .line 40
    .line 41
    check-cast p4, Lcom/narvii/model/Feed;

    .line 42
    .line 43
    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 47
    .line 48
    .line 49
    const p2, 0x7f120781

    .line 50
    const/4 p4, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 54
    .line 55
    new-instance p2, Lcom/narvii/topic/adapter/r;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p0, p3}, Lcom/narvii/topic/adapter/r;-><init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/headlines/HeadlineListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 4
    invoke-static {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->access$getDataSetEventDispatcher$p$s-695836687(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    new-instance p2, Lcom/narvii/topic/adapter/q;

    invoke-direct {p2}, Lcom/narvii/topic/adapter/q;-><init>()V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "v"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter;->access$onSubviewClick(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;Z)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public resetEmptyList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 13
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 13
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/headlines/HeadlineListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/master/search/GlobalPostListResponse;

    return-object v0
.end method

.method protected showPromote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
