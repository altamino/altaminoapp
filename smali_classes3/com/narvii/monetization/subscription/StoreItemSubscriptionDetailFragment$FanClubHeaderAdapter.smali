.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoreItemSubscriptionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 272
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private getItemExpiredTime(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v0, 0x7f0f0146

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 367
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v0, 0x7f0f0147

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-le p1, v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v2, 0x7f0f0148

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

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
    .locals 9

    const p1, 0x7f0b044c

    .line 297
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 299
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$000(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    .line 300
    instance-of p3, p2, Lcom/narvii/model/StoreItemBaseObject;

    if-nez p3, :cond_0

    return-object p1

    .line 304
    :cond_0
    check-cast p2, Lcom/narvii/model/StoreItemBaseObject;

    const p3, 0x7f090562

    .line 306
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 307
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090b9a

    .line 309
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 310
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090a49

    .line 312
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$200(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const/4 v1, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$202(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 319
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v0

    .line 322
    iget v1, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 323
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v5, 0x7f0f103c

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$200(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 327
    :cond_3
    iget-object v1, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v5, 0x7f0f103d

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$200(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, v0, Lcom/narvii/model/OwnershipInfo;->expiredTime:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 332
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result v1

    .line 333
    invoke-direct {p0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->getItemExpiredTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :goto_2
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 338
    iget p3, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    if-ne p3, v4, :cond_9

    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result p3

    if-nez p3, :cond_9

    .line 339
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p3

    if-nez p3, :cond_7

    .line 341
    iget-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v1, 0x7f0f0b87

    invoke-virtual {p3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    if-ne p3, v4, :cond_8

    .line 343
    iget-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v1, 0x7f0f0b88

    invoke-virtual {p3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    if-lez p3, :cond_9

    const/4 v1, 0x7

    if-gt p3, v1, :cond_9

    .line 345
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v2, 0x7f0f0b89

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_4
    const p3, 0x7f090409

    .line 348
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 349
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 350
    :goto_5
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f090215

    .line 352
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 353
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    move-result v1

    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f090954

    .line 356
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 357
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 v3, 0x1

    :cond_b
    invoke-static {p3, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 376
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090215

    if-ne v0, v1, :cond_0

    .line 377
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 378
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$000(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p5, :cond_2

    .line 380
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090954

    if-ne v0, v1, :cond_2

    .line 381
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$300(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$400(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialogWithCheck()V

    goto :goto_0

    .line 384
    :cond_1
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 385
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 395
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
