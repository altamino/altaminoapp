.class public Lcom/narvii/bookmark/BookmarkAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# instance fields
.field filterHelper:Lcom/narvii/util/FilterHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const-string v0, "Bookmarks"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/FilterHelper;->filterClosed()Lcom/narvii/util/FilterHelper;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/bookmark/BookmarkAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/bookmark/BookmarkAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/bookmark"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object p1

    .line 15
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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/bookmark/BookmarkAdapter;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Feed;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 11
    move-result v1

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 19
    move-result v1

    .line 20
    .line 21
    const/16 v2, 0x9

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    :cond_0
    if-eqz p5, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    const v2, 0x7f0a0574

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/bookmark/BookmarkAdapter;->showMore(Lcom/narvii/model/Feed;)V

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/model/Feed;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/Feed;

    .line 19
    .line 20
    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    .line 21
    .line 22
    const/16 v1, 0x130

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const-string v0, "delete"

    .line 27
    .line 28
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 32
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    return-void
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 4
    move-result p1

    .line 5
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

    const-class v0, Lcom/narvii/bookmark/BookMarkListResponse;

    return-object v0
.end method

.method public showMore(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->status()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->showMore(Lcom/narvii/model/Feed;Z)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f121204

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/bookmark/BookmarkAdapter$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0, p1}, Lcom/narvii/bookmark/BookmarkAdapter$1;-><init>(Lcom/narvii/bookmark/BookmarkAdapter;Lcom/narvii/model/Feed;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 50
    :goto_1
    return-void
.end method
