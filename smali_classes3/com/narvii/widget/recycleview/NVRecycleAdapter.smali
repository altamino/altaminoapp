.class public abstract Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NVRecycleAdapter.java"

# interfaces
.implements Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;
.implements Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;",
        "Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TYPE_COUNT:I = 0x5

.field public static final ERROR:Lcom/narvii/util/Tag;

.field public static final LIST_END:Lcom/narvii/util/Tag;

.field public static final LOADING:Lcom/narvii/util/Tag;

.field public static final LOAD_MORE:Lcom/narvii/util/Tag;

.field private static final TAG:Ljava/lang/String; = "NVRecyclerViewAdapter"

.field private static final TYPE_ERROR:I = 0x4

.field private static final TYPE_LIST_END:I = 0x3

.field private static final TYPE_LOADING:I = 0x1

.field private static final TYPE_LOAD_MORE:I = 0x2

.field private static final TYPE_NULL:I


# instance fields
.field private _errorMessage:Ljava/lang/String;

.field protected _isEnd:Z

.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private _start:I

.field private _stopTime:Ljava/lang/String;

.field protected context:Lcom/narvii/app/NVContext;

.field private isRefreshing:Z

.field private itemClickSupport:Lcom/narvii/widget/recycleview/ItemClickSupport;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private final requestListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "loading"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 52
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "loadMore"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 53
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "listEnd"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 54
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 296
    new-instance v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->responseType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 70
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method


# virtual methods
.method protected autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 461
    sget p2, Lcom/narvii/lib/R$layout;->normal_error_list_item:I

    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 462
    sget p2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, -0xbbbbbc

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-object p1
.end method

.method public createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 479
    sget v0, Lcom/narvii/lib/R$layout;->normal_list_end_item:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 480
    sget v1, Lcom/narvii/lib/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 481
    sget v2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 483
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->normal_empty_list:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    .line 486
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/narvii/lib/R$string;->normal_end_n_items:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 488
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    .line 487
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, -0x1

    if-eqz v2, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    const p2, -0x99999a

    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v1, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const p1, -0x777778

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-object v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 470
    sget v0, Lcom/narvii/lib/R$layout;->horizontal_load_more_list_item:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 471
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0xbbbbbc

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 448
    sget v0, Lcom/narvii/lib/R$layout;->horizontal_loading_list_item:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 449
    sget v0, Lcom/narvii/lib/R$id;->spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    const/4 v1, -0x1

    const v2, -0xbbbbbc

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const v3, -0xbbbbbc

    :goto_0
    invoke-virtual {v0, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 453
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const v1, -0xbbbbbc

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-object p1
.end method

.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
.end method

.method protected createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 442
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract dataType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method protected getItemAt(I)Ljava/lang/Object;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1

    .line 181
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-eqz p1, :cond_3

    .line 182
    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    if-nez p1, :cond_2

    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    :goto_1
    return-object p1

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 185
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->autoLoadNextPage()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 188
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 190
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_7

    if-nez v0, :cond_6

    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-nez p1, :cond_6

    goto :goto_2

    .line 193
    :cond_6
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    return-object p1

    .line 191
    :cond_7
    :goto_2
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->showListEnd(I)Z

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 198
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 199
    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method protected abstract getItemType(ILjava/lang/Object;)I
.end method

.method protected abstract getItemTypeCount()I
.end method

.method protected abstract getItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 217
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_1
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 224
    :cond_2
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_3

    const/4 p1, 0x3

    return p1

    .line 226
    :cond_3
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_4

    const/4 p1, 0x4

    return p1

    .line 229
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemType(ILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_5

    const/4 p1, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x5

    :goto_0
    return p1
.end method

.method public insertItem(ILcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public insertItem(Lcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    return-object v0
.end method

.method public loadNextPage()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 169
    iget v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 170
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->resetList()V

    goto :goto_1

    .line 82
    :cond_1
    iget v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 90
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    invoke-static {p1}, Lcom/narvii/widget/recycleview/ItemClickSupport;->addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->itemClickSupport:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 92
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->itemClickSupport:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->setOnItemClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;

    return-void
.end method

.method protected onBindEndViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 430
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onBindEndViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_1

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".getItemType returns null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    const p2, 0x1090003

    .line 405
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 406
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p2, :cond_0

    const p2, 0x1020014

    .line 407
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "getItem() returns null"

    .line 408
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :cond_0
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 412
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createLoadingItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 413
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 415
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    return-object p2

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 417
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 418
    :goto_0
    new-instance v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    return-object v0

    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 420
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createErrorItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 421
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    return-object p2

    :cond_6
    add-int/lit8 p2, p2, -0x5

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onEndItemClicked()V
    .locals 0

    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 383
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
    .locals 0

    .line 522
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 523
    sget-object p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onEndItemClicked()V

    goto :goto_0

    .line 525
    :cond_0
    sget-object p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, p2, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemLongClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;Z)V"
        }
    .end annotation

    .line 318
    iget v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 319
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 321
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "start"

    .line 322
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    .line 323
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    const/4 p1, 0x1

    if-eqz p3, :cond_a

    .line 332
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 333
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    goto :goto_2

    .line 345
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-nez p3, :cond_4

    return-void

    .line 347
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    move-result v0

    if-le p3, v0, :cond_5

    .line 349
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 351
    :cond_5
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 352
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_8

    :cond_6
    :goto_3
    if-nez p3, :cond_7

    .line 336
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    goto :goto_4

    .line 338
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    :goto_4
    add-int/2addr v0, v1

    .line 340
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 341
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :cond_9
    :goto_5
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 342
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_8

    :cond_a
    const/4 p3, 0x0

    .line 358
    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 359
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez p3, :cond_b

    .line 360
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 362
    :cond_b
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_c

    goto :goto_6

    .line 366
    :cond_c
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 368
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v0, v1

    .line 369
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_7

    .line 363
    :cond_d
    :goto_6
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 372
    :goto_7
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    if-nez p1, :cond_e

    .line 373
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    :cond_e
    :goto_8
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    const-string v1, "list"

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    const-string v0, "start"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    const-string v0, "isEnd"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    const-string v0, "stopTime"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    const-string v0, "errorMsg"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    const-string v3, "start"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "list"

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    const-string v2, "isEnd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    const-string v2, "stopTime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public refresh()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 260
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 265
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v2, :cond_2

    .line 266
    iput-boolean v4, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    goto :goto_0

    .line 268
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 269
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 254
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->resetList()V

    .line 255
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    return-void
.end method

.method public resetList()V
    .locals 4

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 243
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 245
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 247
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 248
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    return-void
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end method

.method public setListData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
