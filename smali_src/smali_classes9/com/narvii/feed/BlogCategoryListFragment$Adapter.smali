.class Lcom/narvii/feed/BlogCategoryListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BlogCategoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/BlogCategory;",
        "Lcom/narvii/model/api/BlogCategoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BlogCategoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/BlogCategoryListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BlogCategoryListFragment$Adapter;->this$0:Lcom/narvii/feed/BlogCategoryListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/blog-category"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/BlogCategory;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/BlogCategory;->type:I

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    return v0

    .line 17
    :cond_2
    const/4 v0, 0x3

    .line 18
    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    return v0

    .line 21
    :cond_3
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/BlogCategory;->type:I

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0077

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    const p3, 0x7f0a0e51

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    check-cast p3, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-object p2

    .line 30
    .line 31
    :cond_0
    if-eqz v0, :cond_2

    .line 32
    const/4 v1, 0x2

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    const/4 v1, 0x3

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    const v0, 0x7f0d0078

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    move-object p3, p2

    .line 49
    .line 50
    check-cast p3, Lcom/narvii/blog/category/BlogCategoryListItem;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lcom/narvii/blog/category/BlogCategoryListItem;->setCategory(Lcom/narvii/model/BlogCategory;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/narvii/feed/BlogCategoryListFragment$Adapter;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V

    .line 57
    return-object p2
.end method

.method protected markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/BlogCategory;

    .line 7
    .line 8
    const-class p1, Lcom/narvii/feed/BlogInCategoryListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p2, p3, Lcom/narvii/model/BlogCategory;->categoryId:Ljava/lang/String;

    .line 15
    .line 16
    const-string p4, "id"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    const-string p2, "blogCategory"

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    iget p2, p3, Lcom/narvii/model/BlogCategory;->type:I

    .line 31
    const/4 p3, 0x2

    .line 32
    const/4 p4, 0x1

    .line 33
    .line 34
    if-ne p2, p3, :cond_0

    .line 35
    move p2, p4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    .line 39
    :goto_0
    const-string p3, "isFeaturedCategory"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    const-string p2, "Source"

    .line 45
    .line 46
    const-string p3, "Topic Categories"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/narvii/feed/BlogCategoryListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 53
    return p4

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/BlogCategoryListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogCategoryListResponse;

    return-object v0
.end method
