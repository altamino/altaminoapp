.class Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAdapter"
.end annotation


# instance fields
.field public collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field collectionCount:Ljava/lang/Integer;

.field private collectionListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 1

    .line 2430
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2431
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2453
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;

    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 2510
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1200(Lcom/narvii/user/profile/UserProfileFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 2513
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const p1, 0x7f0b06c3

    .line 2528
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2529
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 2531
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionCount:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    .line 2532
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2535
    iget p2, p2, Lcom/narvii/model/User;->itemsCount:I

    :cond_1
    :goto_0
    const p2, 0x7f090c13

    .line 2538
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090c15

    .line 2539
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2540
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    const/4 v0, -0x1

    const v1, -0x777778

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const p3, -0x777778

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2541
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2542
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v2, 0x7f0f0be9

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2544
    :cond_3
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v2, 0x7f0f1124

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const p2, 0x7f090c14

    .line 2547
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 2548
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_4

    const/4 p3, -0x1

    goto :goto_3

    :cond_4
    const p3, -0x777778

    :goto_3
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const p2, 0x7f090818

    .line 2550
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 2551
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p2, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setDarkTheme(Z)V

    .line 2552
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/16 v3, 0x19

    if-lt p3, v3, :cond_5

    const/4 p3, 0x1

    goto :goto_4

    :cond_5
    const/4 p3, 0x0

    .line 2553
    :goto_4
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v4}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v4

    invoke-virtual {p2, v3, v4, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setItems(Ljava/util/List;ZZ)V

    .line 2554
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->access$2200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setOnItemClickListener(Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;)V

    const p3, 0x7f090c2f

    .line 2555
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v3, 0x4

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090c28

    .line 2556
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/SpinningView;

    if-eqz p3, :cond_8

    .line 2558
    iget-boolean v4, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const v0, -0x777778

    :goto_5
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 2559
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x4

    :goto_6
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2561
    :cond_8
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    if-nez p3, :cond_9

    const/4 v2, 0x4

    :cond_9
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 2436
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 2437
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2438
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-nez p5, :cond_0

    goto :goto_0

    .line 2568
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c13

    if-ne v0, v1, :cond_1

    .line 2569
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$600(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 2571
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 2480
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_4

    const-string v0, "account"

    .line 2481
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 2482
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 2483
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2484
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Item;

    .line 2485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 2487
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2489
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v2

    .line 2490
    iget-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v4, "delete"

    if-ne v3, v4, :cond_1

    if-ltz v2, :cond_3

    .line 2492
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v4, "new"

    if-ne v3, v4, :cond_2

    const/4 v2, 0x0

    .line 2495
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_3

    .line 2497
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2499
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 2500
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2503
    :cond_4
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2504
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    :cond_5
    return-void
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

    .line 2473
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 2474
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    .line 2475
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method sendCollectionRequest()V
    .locals 4

    const-string v0, "api"

    .line 2443
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 2444
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/item"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "user-all"

    .line 2445
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/16 v2, 0x19

    .line 2447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "cv"

    const-string v3, "1.2"

    .line 2448
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2449
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 2444
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
