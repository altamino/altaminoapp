.class public Lcom/narvii/catalog/AllEntriesAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "AllEntriesAdapter.java"


# instance fields
.field public allEntryCategoryId:Ljava/lang/String;

.field public count:I

.field private dataLoded:Z

.field protected previewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field final previewListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/CategoryPreviewResponse;",
            ">;"
        }
    .end annotation
.end field

.field public showLoading:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 120
    new-instance p1, Lcom/narvii/catalog/AllEntriesAdapter$1;

    const-class v0, Lcom/narvii/model/api/CategoryPreviewResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/catalog/AllEntriesAdapter$1;-><init>(Lcom/narvii/catalog/AllEntriesAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

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

    .line 83
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v0

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

    .line 92
    :cond_0
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 97
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

    if-nez p1, :cond_a

    const p1, 0x7f0b0075

    .line 44
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090619

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f019e

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 47
    invoke-static {p3, v0, v2}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p3

    .line 46
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090b5b

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 55
    :goto_1
    sget-object p3, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    const v0, 0x7f0905d8

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    const v1, 0x7f0905d9

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/CardView;

    const v3, 0x7f0905da

    .line 58
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/CardView;

    const/4 v4, 0x4

    if-lez p2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    .line 59
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v5, 0x1

    if-le p2, v5, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/4 v6, 0x4

    .line 60
    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v6, 0x2

    if-le p2, v6, :cond_4

    const/4 v4, 0x0

    .line 61
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    if-lez p2, :cond_5

    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    goto :goto_4

    :cond_5
    move-object v2, p3

    :goto_4
    invoke-virtual {v0, v2}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    if-le p2, v5, :cond_6

    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    goto :goto_5

    :cond_6
    move-object v0, p3

    :goto_5
    invoke-virtual {v1, v0}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    if-le p2, v6, :cond_7

    invoke-virtual {p0}, Lcom/narvii/catalog/AllEntriesAdapter;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/narvii/model/Item;

    :cond_7
    invoke-virtual {v3, p3}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 66
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 67
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    iget-boolean p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->dataLoded:Z

    if-nez p2, :cond_9

    .line 69
    iput-boolean v5, p0, Lcom/narvii/catalog/AllEntriesAdapter;->dataLoded:Z

    .line 70
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/item-category/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/item-previews"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    const-string p3, "api"

    .line 71
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 72
    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p3, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_9
    return-object p1

    :cond_a
    const p1, 0x7f0b04b8

    .line 77
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

.method public isOfficalEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    return-object v0
.end method
