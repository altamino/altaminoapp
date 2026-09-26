.class Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/organizer/ItemOrganizeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Item;",
        "Lcom/narvii/model/api/ItemListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->pageSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-object p2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/item"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->w(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "type"

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "catalog-all"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string v1, "user-all"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->w(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const-string v2, "uid"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/Item;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d047e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a06eb

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 30
    .line 31
    .line 32
    const p3, 0x7f0a0799

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    check-cast p3, Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-object p2

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return-object p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p3, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 3
    invoke-static {p3}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->v(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->x(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->v(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->v(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    return-object v0
.end method
