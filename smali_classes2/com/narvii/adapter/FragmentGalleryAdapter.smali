.class public abstract Lcom/narvii/adapter/FragmentGalleryAdapter;
.super Lcom/narvii/util/FixedFragmentStatePagerAdapter;
.source "FragmentGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;,
        Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/util/FixedFragmentStatePagerAdapter;"
    }
.end annotation


# static fields
.field public static final PRE_LOAD_NUMBER:I = 0x5


# instance fields
.field protected _errorMsg:Ljava/lang/String;

.field protected _isEnd:Z

.field protected _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected _start:I

.field protected _stopTime:Ljava/lang/String;

.field loadNextPageRunnable:Ljava/lang/Runnable;

.field nvContext:Lcom/narvii/app/NVContext;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field protected final requestListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field

.field public runnable:Ljava/lang/Runnable;

.field public viewpagerIdle:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    .line 53
    new-instance p1, Lcom/narvii/adapter/FragmentGalleryAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/adapter/FragmentGalleryAdapter$1;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;)V

    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance p1, Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->responseType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$2;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 62
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz p3, :cond_0

    .line 64
    iput-object p3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 66
    iput p5, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 67
    iput-boolean p6, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method private createErrorFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .line 208
    new-instance v0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;

    invoke-direct {v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;-><init>()V

    .line 209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    const-string v3, "_errorMsg"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 212
    new-instance v1, Lcom/narvii/adapter/FragmentGalleryAdapter$3;

    invoke-direct {v1, p0}, Lcom/narvii/adapter/FragmentGalleryAdapter$3;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;)V

    iput-object v1, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;->errorRetryCallback:Lcom/narvii/util/Callback;

    return-object v0
.end method

.method private createLoadingFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 224
    new-instance v0, Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;

    invoke-direct {v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;-><init>()V

    return-object v0
.end method

.method private isError()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract createFragment(Lcom/narvii/model/NVObject;)Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation
.end method

.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
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

.method public editList(Lcom/narvii/notification/Notification;Z)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->dataType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/NVObject;

    .line 265
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-ne p1, v2, :cond_1

    .line 266
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    const-string v2, "edit"

    if-ne p1, v2, :cond_4

    .line 269
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 272
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 274
    iget p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    goto :goto_0

    .line 276
    :cond_2
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_6

    .line 281
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "update"

    if-ne p1, p2, :cond_5

    .line 286
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 288
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_5
    const-string p2, "delete"

    if-ne p1, p2, :cond_6

    .line 292
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    .line 293
    iget p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    if-eqz p1, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onNotificationDeleteSuccess()V

    .line 296
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 322
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getFragmentAt(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getTag(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    .line 142
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createFragment(Lcom/narvii/model/NVObject;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createErrorFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createLoadingFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getObject(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1
.end method

.method public getTag(I)Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    .line 160
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getTag(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadNextPage()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    .line 239
    iput-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 241
    iget v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->pageSize()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 242
    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    if-nez v1, :cond_1

    const-string v0, "loadNextPage pending..."

    .line 243
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 247
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 166
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onNotificationDeleteSuccess()V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .line 171
    iget v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 172
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 174
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "start"

    .line 175
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "size"

    .line 176
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 179
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
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    if-nez p1, :cond_2

    .line 186
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 188
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 192
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v0, v1

    .line 193
    iput v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 195
    :goto_3
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 196
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 199
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected pageSize()I
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 252
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getPageSize()I

    move-result v0

    return v0
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

.method public setViewPagerIdle(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
