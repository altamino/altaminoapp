.class public abstract Lcom/narvii/master/search/GlobalPostSearchAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "SourceFile"


# instance fields
.field dID:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field private listViewFirstBecomeVisible:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    .line 10
    .line 11
    .line 12
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->dID:Ljava/lang/String;

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 19
    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 30
    return-void
.end method

.method public static synthetic p(Lcom/narvii/master/search/GlobalPostSearchAdapter;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->lambda$onItemClick$0(Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-boolean p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->videoAutoPlay()Z

    .line 22
    move-result p2

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 32
    :cond_0
    const/4 p2, 0x1

    .line 33
    .line 34
    iput-boolean p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    .line 35
    :cond_1
    return-object p1

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method protected abstract getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
.end method

.method protected isHeadline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

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
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    .line 29
    move-object p4, p3

    .line 30
    .line 31
    check-cast p4, Lcom/narvii/model/Feed;

    .line 32
    .line 33
    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 37
    .line 38
    .line 39
    const p2, 0x7f120781

    .line 40
    const/4 p4, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 44
    .line 45
    new-instance p2, Lcom/narvii/master/search/c;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p0, p3}, Lcom/narvii/master/search/c;-><init>(Lcom/narvii/master/search/GlobalPostSearchAdapter;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->videoAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "keyword"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "keyword"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-object v0
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

    const-class v0, Lcom/narvii/master/search/GlobalPostListResponse;

    return-object v0
.end method

.method protected showAllLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showPromote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract videoAutoPlay()Z
.end method
