.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MonetizationStoreMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreSectionsAdapter"
.end annotation


# instance fields
.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 504
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 505
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$800(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$500(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$500(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 599
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 604
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/data/StoreSection;

    .line 605
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    const-string v1, "sticker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "account"

    .line 607
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 608
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0b052b

    .line 609
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090ab6

    .line 611
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$1000(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090828

    .line 613
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    iget-object v5, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v5}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$300(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    move-result v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$300(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090ad1

    .line 618
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 619
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090ad2

    .line 620
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090ad0

    .line 622
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 623
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    const v1, 0x7f0f0f66

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/narvii/monetization/store/data/StoreSection;->allItemsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v1, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 627
    :goto_3
    iget v1, p1, Lcom/narvii/monetization/store/data/StoreSection;->allItemsCount:I

    if-ge v0, v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setVisibility(I)V

    const p3, 0x7f090acf

    .line 629
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 630
    invoke-virtual {p3, v4}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 631
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreSection;->icon()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p3, 0x7f0905e6

    .line 632
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/GridLayout;

    .line 633
    invoke-virtual {p3}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 634
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 635
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 636
    new-instance v1, Lcom/narvii/monetization/store/StoreItemView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;)V

    .line 637
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$1100(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    .line 638
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 639
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 640
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 642
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3ea3d70a    # 0.32f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 643
    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 644
    invoke-virtual {p3, v1, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$400(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-string v2, "chat-bubble"

    const-string v3, "sticker"

    const-string v4, "avatar-frame"

    const v5, 0xc8f98a1

    const v6, -0x70aaf6c3

    const v7, -0x77faa807

    const-string v9, "Category"

    const-string v11, "Source"

    const v13, 0x7f090ad0

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v1, :cond_b

    .line 511
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v8, v13, :cond_b

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v8

    const v10, 0x7f090ad2

    if-ne v8, v10, :cond_0

    goto/16 :goto_3

    .line 537
    :cond_0
    instance-of v8, v1, Lcom/narvii/monetization/store/StoreItemView;

    if-eqz v8, :cond_9

    .line 539
    move-object/from16 v8, p3

    check-cast v8, Lcom/narvii/monetization/store/data/StoreSection;

    iget-object v8, v8, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    .line 540
    sget-object v9, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 541
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eq v10, v7, :cond_3

    if-eq v10, v6, :cond_2

    if-eq v10, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v12, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v12, -0x1

    :goto_1
    if-eqz v12, :cond_7

    if-eq v12, v15, :cond_6

    if-eq v12, v14, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    .line 550
    :cond_5
    sget-object v9, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    const-string v10, "ProfileFramesList"

    goto :goto_2

    :cond_6
    const-string v10, "ChatBubblesList"

    goto :goto_2

    :cond_7
    const-string v10, "StickersList"

    :goto_2
    if-eqz v10, :cond_8

    .line 555
    iget-object v2, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v2, v9}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 558
    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 559
    iget-object v2, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {v2, v1}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    return v15

    .line 561
    :cond_9
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090ab6

    if-ne v2, v3, :cond_a

    .line 562
    const-class v2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 563
    iget-object v3, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {v3}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$300(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    move-result v3

    const-string v4, "pendingRequestCount"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    invoke-virtual {v0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 567
    :cond_a
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1

    .line 512
    :cond_b
    :goto_3
    move-object/from16 v8, p3

    check-cast v8, Lcom/narvii/monetization/store/data/StoreSection;

    iget-object v8, v8, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 515
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v13, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    .line 516
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v7, :cond_f

    if-eq v12, v6, :cond_e

    if-eq v12, v5, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v2, -0x1

    :goto_6
    if-eqz v2, :cond_15

    if-eq v2, v15, :cond_13

    if-eq v2, v14, :cond_11

    const/4 v10, 0x0

    goto :goto_8

    :cond_11
    if-eqz v10, :cond_12

    const-string v2, "ProfileFrameSeeAll"

    goto :goto_7

    :cond_12
    const-string v2, "ProfileFrameHeader"

    :goto_7
    move-object v10, v2

    goto :goto_8

    :cond_13
    if-eqz v10, :cond_14

    const-string v2, "ChatBubblesSeeAll"

    goto :goto_7

    :cond_14
    const-string v2, "ChatBubblesHeader"

    goto :goto_7

    :cond_15
    if-eqz v10, :cond_16

    const-string v2, "StickersSeeAll"

    goto :goto_7

    :cond_16
    const-string v2, "StickersHeader"

    goto :goto_7

    :goto_8
    if-eqz v10, :cond_17

    .line 528
    iget-object v2, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    sget-object v3, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v2, v3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 531
    :cond_17
    invoke-static {v8}, Lcom/narvii/monetization/store/data/StoreSection;->getSectionFragment(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v1, :cond_18

    .line 532
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v13, :cond_18

    const-string v9, "See All"

    :cond_18
    invoke-virtual {v2, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sectionGroupId"

    .line 533
    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-static/range {p3 .. p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sectionGroupInfo"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {v0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v15
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    .line 578
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 579
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
