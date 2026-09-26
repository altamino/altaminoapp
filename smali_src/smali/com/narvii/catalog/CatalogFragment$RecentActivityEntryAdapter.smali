.class Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentActivityEntryAdapter"
.end annotation


# instance fields
.field feeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public newItemsCount:I

.field recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$1;-><init>(Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    .line 13
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

.method private sendRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/knowledge-base-request/activities"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string/jumbo v2, "start"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    .line 22
    const/16 v1, 0x19

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string/jumbo v2, "size"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "api"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;

    .line 46
    .line 47
    const-class v3, Lcom/narvii/catalog/activity/RecentActivityResponse;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0, v3}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter$2;-><init>(Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isRootCategory()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0094

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    .line 10
    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    .line 14
    const p2, -0xff6404

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    const p2, 0x59ffffff

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a0e9e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Landroid/widget/TextView;

    .line 31
    .line 32
    iget p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    if-ne p3, v0, :cond_1

    .line 36
    .line 37
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f120d47

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    const/16 v1, 0x14

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    const v3, 0x7f120d48

    .line 52
    .line 53
    if-le p3, v1, :cond_2

    .line 54
    .line 55
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 56
    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v1, "20+"

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p3

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    if-le p3, v0, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 71
    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    aput-object p3, v0, v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p3

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 86
    .line 87
    .line 88
    const v0, 0x7f120200

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/catalog/activity/RecentActivityHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/catalog/activity/RecentActivityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->sendRequest()V

    .line 16
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 11
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    const-class p1, Lcom/narvii/catalog/activity/RecentActivityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    const-string p3, "background"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    const-string p3, "itemCategory"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/4 p2, 0x0

    .line 40
    .line 41
    iput p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->newItemsCount:I

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->recentActivityHelper:Lcom/narvii/catalog/activity/RecentActivityHelper;

    .line 44
    .line 45
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->feeds:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Lcom/narvii/catalog/activity/RecentActivityHelper;->cacheItemIds(Ljava/util/List;)V

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->runnable:Ljava/lang/Runnable;

    .line 51
    .line 52
    const-wide/16 p3, 0x3e8

    .line 53
    .line 54
    .line 55
    invoke-static {p2, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 59
    .line 60
    const-string/jumbo p1, "statistics"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 67
    .line 68
    const-string p2, "Recent Catalog Activities"

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const-string p2, "Recent Catalog Activities Total"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogFragment$RecentActivityEntryAdapter;->sendRequest()V

    .line 4
    return-void
.end method
