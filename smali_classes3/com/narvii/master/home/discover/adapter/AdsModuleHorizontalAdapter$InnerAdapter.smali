.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/ad/AdsModuleItem;",
        "Lcom/narvii/ad/AdsModuleListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdsModuleHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdsModuleHorizontalAdapter.kt\ncom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter\n*L\n1#1,306:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 175
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/ad/AdsModuleItem;",
            "Lcom/narvii/ad/AdsModuleListResponse;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/narvii/paging/source/PagingConfiguration;

    const/16 v1, 0x19

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    .line 191
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    new-instance v2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    invoke-direct {v2, v1, p1, v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    invoke-static {v1, v2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;)V

    .line 192
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/ad/AdsModuleItem;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/ad/AdsModuleItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/ad/AdsModuleItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/ad/AdsModuleItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x7530

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerViewHolder;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/narvii/amino/R$id;->ads_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/ad/AdsModuleItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/ad/AdsModuleItem;->imageUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 185
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/ad/AdsModuleItem;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerViewHolder;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->getItemLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(cont\u2026mLayout(), parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 211
    instance-of v0, p3, Lcom/narvii/ad/AdsModuleItem;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/narvii/ad/AdsModuleItem;

    iget-object v1, v0, Lcom/narvii/ad/AdsModuleItem;->deepLink:Ljava/lang/String;

    const-string v2, "item.deepLink"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p3, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 213
    iget-object p1, v0, Lcom/narvii/ad/AdsModuleItem;->deepLink:Ljava/lang/String;

    .line 214
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 218
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
