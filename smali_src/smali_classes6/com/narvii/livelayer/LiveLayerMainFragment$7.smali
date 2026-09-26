.class Lcom/narvii/livelayer/LiveLayerMainFragment$7;
.super Lcom/narvii/adapter/NVPagerStatusAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoading()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->errorMessage()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getItemViewType(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x2

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->contentEmpty()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->isLoading()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    const/4 p1, -0x3

    .line 32
    return p1
.end method

.method protected getMinHeight()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    const/high16 v3, 0x42f00000    # 120.0f

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 37
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v2

    .line 41
    .line 42
    :goto_0
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getCount()I

    .line 50
    move-result v4

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 60
    move-result v2

    .line 61
    float-to-int v2, v2

    .line 62
    .line 63
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 67
    move-result v3

    .line 68
    sub-int/2addr v0, v3

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 74
    move-result v3

    .line 75
    .line 76
    mul-int/lit8 v3, v3, 0x2

    .line 77
    sub-int/2addr v0, v3

    .line 78
    sub-int/2addr v0, v1

    .line 79
    sub-int/2addr v0, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    const v2, 0x7f070427

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v1

    .line 95
    .line 96
    mul-int/lit8 v1, v1, 0x2

    .line 97
    sub-int/2addr v0, v1

    .line 98
    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->onRefresh()V

    .line 6
    return-void
.end method

.method protected onErrorClickRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$7;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->onRefresh()V

    .line 6
    return-void
.end method
