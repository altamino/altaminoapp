.class public Lcom/narvii/bookmark/BookmarkAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "BookmarkAdapter.java"


# instance fields
.field filterHelper:Lcom/narvii/util/FilterHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Bookmarks"

    .line 35
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/FilterHelper;->filterClosed()Lcom/narvii/util/FilterHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/bookmark"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 62
    instance-of v0, p3, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p5, :cond_1

    .line 64
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09043d

    if-ne v1, v2, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/bookmark/BookmarkAdapter;->showMore(Lcom/narvii/model/Feed;)V

    const/4 p1, 0x1

    return p1

    .line 70
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 108
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/Feed;

    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    const-string v0, "delete"

    .line 109
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/bookmark/BookMarkListResponse;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/narvii/bookmark/BookMarkListResponse;

    return-object v0
.end method

.method public showMore(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 102
    invoke-super {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;Z)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f10fb

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 83
    new-instance v1, Lcom/narvii/bookmark/BookmarkAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/bookmark/BookmarkAdapter$1;-><init>(Lcom/narvii/bookmark/BookmarkAdapter;Lcom/narvii/model/Feed;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_1
    return-void
.end method
