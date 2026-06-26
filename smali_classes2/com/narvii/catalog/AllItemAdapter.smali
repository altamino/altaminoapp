.class public Lcom/narvii/catalog/AllItemAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "AllItemAdapter.java"


# instance fields
.field public count:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation
.end field

.field public showLoading:Z

.field final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 68
    new-instance p1, Lcom/narvii/catalog/AllItemAdapter$1;

    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/catalog/AllItemAdapter$1;-><init>(Lcom/narvii/catalog/AllItemAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/catalog/AllItemAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 35
    iput-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    :cond_2
    :goto_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p1, :cond_b

    const p1, 0x7f0b0075

    .line 114
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090619

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00eb

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00ec

    :goto_0
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {p3, v0, v2}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p3

    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090b5b

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-nez p2, :cond_3

    iget p2, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 125
    :goto_3
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    if-nez p3, :cond_4

    sget-object v1, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    :cond_4
    const p3, 0x7f0905d8

    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CardView;

    const v0, 0x7f0905d9

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    const v2, 0x7f0905da

    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/CardView;

    const/4 v5, 0x4

    if-lez p2, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v6, 0x4

    .line 129
    :goto_4
    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-le p2, v3, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x4

    .line 130
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v6, 0x2

    if-le p2, v6, :cond_7

    const/4 v5, 0x0

    .line 131
    :cond_7
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    iget-object v5, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-eqz v5, :cond_8

    if-lez p2, :cond_8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Item;

    goto :goto_6

    :cond_8
    move-object v4, v1

    :goto_6
    invoke-virtual {p3, v4}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 133
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-eqz p3, :cond_9

    if-le p2, v3, :cond_9

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Item;

    goto :goto_7

    :cond_9
    move-object p3, v1

    :goto_7
    invoke-virtual {v0, p3}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 134
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-eqz p3, :cond_a

    if-le p2, v6, :cond_a

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/narvii/model/Item;

    :cond_a
    invoke-virtual {v2, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    return-object p1

    :cond_b
    const p1, 0x7f0b04b8

    .line 138
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttach()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 41
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method sendReqeust()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/item"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    const-string/jumbo v2, "type"

    if-nez v1, :cond_0

    const-string v1, "catalog-all"

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "user-all"

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    iget-object v1, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :goto_0
    const/4 v1, 0x0

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x4

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "cv"

    const-string v2, "1.2"

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 57
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/catalog/AllItemAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
