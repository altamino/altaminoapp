.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "LiveLayerDetailBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/list/NVPagedAdapter<",
        "TT;TE;>;"
    }
.end annotation


# instance fields
.field protected apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private config:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

.field public recommendList:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

.field protected timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    .line 281
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 282
    invoke-virtual {p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->config:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    const/4 p1, 0x1

    .line 283
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;)Ljava/lang/Class;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;)Ljava/lang/Class;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->responseType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->dataDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected alignOnlineBar(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0907b2

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 344
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    invoke-virtual {p1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 298
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/live-layer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->config:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 299
    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->listApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getLayoutId()I

    move-result p4

    invoke-virtual {p0, p4, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 317
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p3, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f060122

    invoke-static {p4, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f060121

    invoke-static {p4, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p3, 0x7f0907b0

    .line 324
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz p3, :cond_4

    .line 326
    instance-of p4, p1, Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;

    if-eqz p4, :cond_4

    .line 327
    check-cast p1, Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;

    invoke-interface {p1}, Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;->getOnlineUserInfoInfo()Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_1
    iget v0, p1, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileCount:I

    :goto_0
    if-eqz p1, :cond_2

    .line 330
    iget-object p1, p1, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileList:Ljava/util/List;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p4

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    .line 333
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {p3, p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    :cond_4
    return-object p2
.end method

.method protected abstract getLayoutId()I
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 0

    .line 311
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;I)V"
        }
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 357
    iget-object p3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->timestamp:Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 359
    instance-of p1, p2, Lcom/narvii/livelayer/detailview/OnlineDataResponse;

    if-eqz p1, :cond_1

    .line 360
    new-instance p1, Lcom/narvii/util/FilterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    check-cast p2, Lcom/narvii/livelayer/detailview/OnlineDataResponse;

    invoke-interface {p2}, Lcom/narvii/livelayer/detailview/OnlineDataResponse;->getRecommendedList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    .line 361
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 363
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 364
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->recommendList:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVPagedAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 368
    :goto_0
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
