.class Lcom/narvii/livelayer/LiveLayerMainFragment$7;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 435
    invoke-super {p0, p1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    return p1

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoading()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, -0x3

    return p1
.end method

.method protected getMinHeight()I
    .locals 5

    .line 427
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 428
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/high16 v2, 0x42f00000    # 120.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v4, v4, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v3, v2

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->onRefresh()V

    return-void
.end method

.method protected onErrorClickRetry()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->onRefresh()V

    return-void
.end method
