.class Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MySubscriptionListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/MySubscriptionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/store/data/StoreItem;",
        "Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private final objectType:I

.field final synthetic this$0:Lcom/narvii/influencer/MySubscriptionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 279
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 280
    iput p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->objectType:I

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 306
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/store/subscription"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 307
    iget v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->objectType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 308
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation

    .line 285
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    return-object v0
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
    .locals 6

    .line 321
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_a

    const v0, 0x7f0b0454

    .line 322
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 324
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 325
    instance-of p3, p1, Lcom/narvii/model/StoreItemBaseObject;

    if-nez p3, :cond_0

    return-object p2

    .line 329
    :cond_0
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    const p3, 0x7f0900f2

    .line 331
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 332
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f0900f4

    .line 334
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 335
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900a2

    .line 337
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 338
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 339
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f090a97

    .line 352
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 353
    iget-object v0, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 354
    :goto_1
    iget-object v3, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 355
    :goto_2
    iget-object v4, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    invoke-static {v4}, Lcom/narvii/influencer/MySubscriptionListFragment;->access$000(Lcom/narvii/influencer/MySubscriptionListFragment;)Lcom/narvii/monetization/utils/StoreItemHelper;

    move-result-object v4

    iget-object v5, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    invoke-virtual {v4, v5}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, -0xff3183

    const v5, 0x7f0f0063

    if-eqz v3, :cond_4

    .line 358
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 359
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_8

    .line 361
    iget-object p1, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    neg-int p1, p1

    const v0, -0xbfc0

    if-nez p1, :cond_5

    .line 363
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const v1, 0x7f0f0b87

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_6

    .line 366
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const v1, 0x7f0f0b88

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x7

    if-lez p1, :cond_7

    if-gt p1, v3, :cond_7

    .line 369
    iget-object v3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const v4, 0x7f0f0b89

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    if-le p1, v3, :cond_9

    .line 372
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 373
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_8
    const p1, 0x7f0f0402

    .line 376
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, -0x666667

    .line 377
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_3
    return-object p2

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 313
    const-class v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "storeItem"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 316
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 388
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 391
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 395
    invoke-virtual {v2}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v2, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 398
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;",
            ">;"
        }
    .end annotation

    .line 290
    const-class v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;

    return-object v0
.end method
