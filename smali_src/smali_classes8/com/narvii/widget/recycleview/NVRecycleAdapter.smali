.class public abstract Lcom/narvii/widget/recycleview/NVRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
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

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "loading"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/util/Tag;

    .line 12
    .line 13
    const-string v1, "loadMore"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/util/Tag;

    .line 21
    .line 22
    const-string v1, "listEnd"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/util/Tag;

    .line 30
    .line 31
    const-string v1, "error"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->responseType()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$1;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 17
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    return p0
.end method

.method static bridge synthetic h(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method


# virtual methods
.method protected autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p2, Lcom/narvii/lib/R$layout;->normal_error_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    const v0, -0xbbbbbc

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_1
    return-object p1
.end method

.method public createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->normal_list_end_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget v1, Lcom/narvii/lib/R$id;->icon:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroid/widget/TextView;

    .line 15
    .line 16
    sget v2, Lcom/narvii/lib/R$id;->text:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    sget p2, Lcom/narvii/lib/R$string;->normal_empty_list:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    const/16 v4, 0x8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    sget v4, Lcom/narvii/lib/R$string;->normal_end_n_items:I

    .line 54
    const/4 v5, 0x1

    .line 55
    .line 56
    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    aput-object p2, v5, v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    const/4 p1, -0x1

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 76
    move-result p2

    .line 77
    .line 78
    if-eqz p2, :cond_1

    .line 79
    move p2, p1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_1
    const p2, -0x99999a

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    :cond_2
    if-eqz v1, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 92
    move-result p2

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_3
    const p1, -0x777778

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :cond_4
    return-object v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->horizontal_load_more_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, -0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    const v1, -0xbbbbbc

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_1
    return-object p1
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->horizontal_loading_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$id;->spinner:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 15
    .line 16
    .line 17
    const v1, -0xbbbbbc

    .line 18
    const/4 v2, -0x1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    move v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 33
    .line 34
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isDarkTheme()Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    move v1, v2

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_3
    return-object p1
.end method

.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
.end method

.method protected createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 43
    :goto_1
    return-object p1

    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->autoLoadNextPage()Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 62
    .line 63
    if-nez p1, :cond_7

    .line 64
    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    iget-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 68
    .line 69
    if-nez p1, :cond_6

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_6
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 73
    return-object p1

    .line 74
    .line 75
    :cond_7
    :goto_2
    sget-object p1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 76
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->showListEnd(I)Z

    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 22
    move-result p1

    .line 23
    int-to-long v0, p1

    .line 24
    :goto_0
    return-wide v0
.end method

.method protected abstract getItemType(ILjava/lang/Object;)I
.end method

.method protected abstract getItemTypeCount()I
.end method

.method protected abstract getItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_1
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    const/4 p1, 0x2

    .line 20
    return p1

    .line 21
    .line 22
    :cond_2
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 23
    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    const/4 p1, 0x3

    .line 26
    return p1

    .line 27
    .line 28
    :cond_3
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 29
    .line 30
    if-ne v0, v1, :cond_4

    .line 31
    const/4 p1, 0x4

    .line 32
    return p1

    .line 33
    .line 34
    .line 35
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemType(ILjava/lang/Object;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-gez p1, :cond_5

    .line 39
    const/4 p1, -0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_5
    add-int/lit8 p1, p1, 0x5

    .line 43
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

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public insertItem(Lcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

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
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
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

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    return-object v0
.end method

.method public loadNextPage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    const-string v1, "api"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    iget v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    .line 32
    move-result v2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->resetList()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/widget/recycleview/ItemClickSupport;->addTo(Landroidx/recyclerview/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->itemClickSupport:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->setOnItemClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 15
    return-void
.end method

.method protected onBindEndViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemViewType(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x3

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onBindEndViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, ".getItemType returns null"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const p2, 0x1090003

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    .line 44
    const p2, 0x1020014

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    check-cast p2, Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v0, "getItem() returns null"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    :cond_0
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    .line 62
    return-object p2

    .line 63
    :cond_1
    const/4 v0, 0x1

    .line 64
    .line 65
    if-ne p2, v0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createLoadingItem(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    .line 72
    .line 73
    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    .line 77
    return-object p2

    .line 78
    :cond_2
    const/4 v0, 0x2

    .line 79
    .line 80
    if-ne p2, v0, :cond_3

    .line 81
    .line 82
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    .line 83
    .line 84
    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    .line 92
    return-object p2

    .line 93
    :cond_3
    const/4 v0, 0x3

    .line 94
    .line 95
    if-ne p2, v0, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    if-nez p2, :cond_4

    .line 102
    const/4 p2, 0x0

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 111
    move-result p2

    .line 112
    .line 113
    :goto_0
    new-instance v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    .line 114
    .line 115
    sget-object v1, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createListEndItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    .line 123
    return-object v0

    .line 124
    :cond_5
    const/4 v0, 0x4

    .line 125
    .line 126
    if-ne p2, v0, :cond_6

    .line 127
    .line 128
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createErrorItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    new-instance p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;

    .line 135
    .line 136
    sget-object v0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter$DefaultViewHolder;-><init>(Lcom/narvii/widget/recycleview/NVRecycleAdapter;Lcom/narvii/util/Tag;Landroid/view/View;)V

    .line 140
    return-object p2

    .line 141
    .line 142
    :cond_6
    add-int/lit8 p2, p2, -0x5

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 146
    move-result-object p1

    .line 147
    return-object p1
.end method

.method protected onEndItemClicked()V
    .locals 0

    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    .line 7
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    const/4 p3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 36
    :cond_1
    return-void
.end method

.method public onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onEndItemClicked()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object p2, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 15
    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public onItemLongClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)Z
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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string v3, "start"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v4, "size"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :cond_1
    const/4 p1, 0x1

    .line 61
    .line 62
    if-eqz p3, :cond_a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 73
    .line 74
    if-eqz v3, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    move-result v3

    .line 79
    .line 80
    if-gt v3, v1, :cond_2

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_2
    if-nez p3, :cond_3

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 88
    move-result v2

    .line 89
    .line 90
    :goto_1
    if-nez p3, :cond_4

    .line 91
    return-void

    .line 92
    .line 93
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    .line 103
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 104
    move-result p3

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    .line 108
    move-result v0

    .line 109
    .line 110
    if-le p3, v0, :cond_5

    .line 111
    .line 112
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 116
    move-result v0

    .line 117
    .line 118
    .line 119
    invoke-interface {p3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 120
    move-result-object p3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2, p3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 124
    .line 125
    :cond_5
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 126
    .line 127
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_6
    :goto_2
    if-nez p3, :cond_7

    .line 137
    .line 138
    new-instance p3, Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 144
    goto :goto_3

    .line 145
    .line 146
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .line 151
    iput-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 152
    :goto_3
    add-int/2addr v0, v1

    .line 153
    .line 154
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 158
    move-result-object p3

    .line 159
    .line 160
    if-eqz p3, :cond_8

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    .line 167
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 168
    move-result p3

    .line 169
    .line 170
    if-nez p3, :cond_9

    .line 171
    :cond_8
    move v2, p1

    .line 172
    .line 173
    :cond_9
    iput-boolean v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 174
    .line 175
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 176
    .line 177
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 181
    goto :goto_6

    .line 182
    :cond_a
    const/4 p3, 0x0

    .line 183
    .line 184
    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 185
    .line 186
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 187
    .line 188
    if-nez p3, :cond_b

    .line 189
    .line 190
    new-instance p3, Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    iput-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 196
    .line 197
    .line 198
    :cond_b
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 199
    move-result-object p3

    .line 200
    .line 201
    if-eqz p3, :cond_d

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    .line 208
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 209
    move-result p3

    .line 210
    .line 211
    if-nez p3, :cond_c

    .line 212
    goto :goto_4

    .line 213
    .line 214
    .line 215
    :cond_c
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 224
    move-result p3

    .line 225
    .line 226
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 227
    .line 228
    .line 229
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    add-int/2addr v0, v1

    .line 231
    .line 232
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 236
    move-result p1

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 240
    goto :goto_5

    .line 241
    .line 242
    :cond_d
    :goto_4
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 246
    .line 247
    :goto_5
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 248
    .line 249
    if-nez p1, :cond_e

    .line 250
    .line 251
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 252
    .line 253
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 254
    :cond_e
    :goto_6
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "list"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/ArrayList;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->dataType()Ljava/lang/Class;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 40
    .line 41
    const-string v0, "start"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 48
    .line 49
    const-string v0, "isEnd"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 56
    .line 57
    const-string v0, "stopTime"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "errorMsg"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 72
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "start"

    .line 14
    .line 15
    iget v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    const-string v2, "list"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string v1, "isEnd"

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    const-string v1, "stopTime"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    const-string v1, "errorMsg"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_errorMessage:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public refresh()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v2, "api"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->pageSize()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4, v2, v3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iput-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iput-boolean v4, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 55
    return-void

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->resetList()V

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 61
    return-void
.end method

.method public resetList()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_start:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_stopTime:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    const-string v3, "api"

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 33
    .line 34
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->isRefreshing:Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->loadNextPage()V

    .line 38
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_list:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method protected showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
