.class Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ItemOrganizeFragment.java"


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

    .line 186
    iput-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    .line 187
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 261
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->pageSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 202
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/item"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {v1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$100(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    if-nez v1, :cond_0

    const-string v1, "catalog-all"

    .line 204
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "user-all"

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 207
    iget-object v1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {v1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$100(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 209
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 210
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
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 192
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

    .line 225
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/narvii/model/Item;

    const v0, 0x7f0b0449

    .line 227
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 230
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const p3, 0x7f090619

    .line 231
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 1

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 240
    iget-object p3, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {p3}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$200(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    .line 241
    iget-object p3, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v0}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$202(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;Ljava/util/List;)Ljava/util/List;

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$200(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/narvii/catalog/organizer/ItemOrganizeFragment$ItemListAdapter;->this$0:Lcom/narvii/catalog/organizer/ItemOrganizeFragment;

    invoke-static {p1}, Lcom/narvii/catalog/organizer/ItemOrganizeFragment;->access$200(Lcom/narvii/catalog/organizer/ItemOrganizeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 184
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

    .line 197
    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    return-object v0
.end method
