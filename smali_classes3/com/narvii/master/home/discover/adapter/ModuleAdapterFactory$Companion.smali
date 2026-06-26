.class public final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;
.super Ljava/lang/Object;
.source "ModuleAdapterFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$clickShowAllLog(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$jumpToMyCommunityPage(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$showMoreChat(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreChat(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$showMoreCommunity(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreCommunity(Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$showMoreStory(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreStory(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V

    return-void
.end method

.method public static final synthetic access$showMoreTopic(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private final addAdsBannerAdapter(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p2, p3}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerSizeMedium"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 387
    new-instance p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-direct {p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 390
    new-instance p1, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;

    invoke-direct {p1, p2, v3, v2, v3}, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 394
    :goto_0
    new-instance v1, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    invoke-direct {v1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    if-eqz p1, :cond_2

    .line 396
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {p1, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    :cond_2
    move-object p1, v1

    .line 401
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance p3, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    invoke-direct {p3, p2, v3, v2, v3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 403
    invoke-virtual {p3, p1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 404
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final addChatCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ctx.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 94
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    .line 95
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 96
    new-instance v3, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    invoke-direct {v3, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    const/4 v4, 0x2

    .line 97
    invoke-virtual {v2, v3, v4}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v5, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addChatCardAdapter$1;

    invoke-direct {v5, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addChatCardAdapter$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v1, v5}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 105
    iget-boolean p3, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-nez p3, :cond_1

    .line 106
    :cond_0
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    const/4 v1, 0x4

    invoke-direct {p3, p1, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 107
    invoke-virtual {p3, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 108
    new-instance v1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addChatCardAdapter$2;

    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addChatCardAdapter$2;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p3, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, v4, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final addCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/topic/model/discover/ContentModule;->isJoinedCommunity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct/range {p0 .. p3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addMyCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v0, v7, v8}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v11, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 272
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v12, 0x0

    iput-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 273
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v12, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v12, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 275
    iget-object v0, v8, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v1, "GridCommunityCard"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-direct {v0, v7, v8, v9}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 277
    invoke-interface/range {p1 .. p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 278
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v1, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    const/4 v1, 0x3

    .line 279
    invoke-virtual {v2, v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 280
    invoke-virtual {v11, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 281
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getLastPageToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 284
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getCommunityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 285
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-direct {v0, v7, v8, v9}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 288
    invoke-virtual {v11, v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 289
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getLastPageToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 292
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getCommunityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 293
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 295
    :goto_0
    new-instance v15, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move-object v4, v13

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v11, v15}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_2

    .line 303
    iget-boolean v0, v9, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-nez v0, :cond_3

    .line 304
    :cond_2
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    const/4 v1, 0x6

    invoke-direct {v0, v7, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 305
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 306
    new-instance v1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$2;

    invoke-direct {v1, v7, v8, v13, v6}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addCommunityModule$2;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_3
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, v7, v12, v1, v12}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 313
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 314
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method private final addCommunityThumbnailAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v1, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 448
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 p3, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, p1, p3, v2, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 449
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final addCreateCommunityButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 423
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, p1, v1, v2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 424
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 425
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method private final addDiscoverTopicButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 410
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 412
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, p1, v1, v2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 413
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 414
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method private final addGridTopicAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    .line 158
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v11, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-direct {v11, p1, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 162
    new-instance v12, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    invoke-virtual {v12, v11}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 164
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    .line 166
    new-instance v6, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v0, 0x3

    .line 167
    invoke-virtual {v6, v11, v0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 168
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addGridTopicAdapter$1;

    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addGridTopicAdapter$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v12, v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_0

    .line 173
    iget-boolean v0, v9, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 175
    invoke-virtual {v0, v11}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 176
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addGridTopicAdapter$2;

    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addGridTopicAdapter$2;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_1
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    invoke-virtual {v0, v11}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 185
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method private final addHeaderLinePostsAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 434
    new-instance v2, Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/PostListAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 435
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 p3, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, p1, p3, v3, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 436
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 437
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final addMyCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    iget-object v2, p2, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v3, "GridCommunityCard"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    new-instance v2, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;

    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 345
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ctx.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 346
    new-instance v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v3, v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    const/4 v3, 0x3

    .line 347
    invoke-virtual {v4, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 348
    invoke-virtual {v1, v4}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_0
    new-instance v2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 354
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_1

    .line 361
    iget-boolean p3, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-nez p3, :cond_2

    .line 362
    :cond_1
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    const/4 v3, 0x6

    invoke-direct {p3, p1, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 363
    invoke-virtual {p3, v2}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 364
    new-instance v3, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addMyCommunityModule$1;

    invoke-direct {v3, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addMyCommunityModule$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p3, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2
    new-instance p3, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {p3, p1, v4, v3, v4}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 371
    invoke-virtual {p3, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 372
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addMyCommunityModule$2;

    invoke-direct {p3, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addMyCommunityModule$2;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v1, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private final addStoryCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addStoryCardAdapter"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v7

    .line 203
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move v6, v7

    invoke-direct/range {v4 .. v9}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 204
    new-instance v3, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, p3, v4}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)V

    const/4 v5, 0x2

    .line 205
    invoke-virtual {v2, v3, v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 206
    invoke-virtual {v1, v3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 207
    new-instance v5, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;

    invoke-direct {v5, p1, p3}, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 208
    invoke-virtual {v5, v3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V

    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 216
    iget-boolean v1, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-nez v1, :cond_1

    .line 217
    :cond_0
    new-instance v1, Lcom/narvii/master/home/discover/adapter/GeneralShowAllStoryAdapter;

    invoke-direct {v1, p1}, Lcom/narvii/master/home/discover/adapter/GeneralShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 218
    invoke-virtual {v1, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$2;

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addStoryCardAdapter$2;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V

    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/topic/model/discover/ContentModule;->isStoryTopic()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v1, p3, Lcom/narvii/topic/ModuleDisplayConfig;->showNoStoriesYet:Z

    if-ne v1, v4, :cond_2

    .line 226
    new-instance v1, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;

    invoke-direct {v1, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 227
    invoke-virtual {v1, v3}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->setHost(Lcom/narvii/topic/model/discover/SubRequestHost;)V

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    new-instance v1, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/model/discover/ContentModule;->isStoryTopic()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-direct {v1, p1, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 231
    invoke-virtual {v1, v3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final addTopicCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 132
    iget-object v2, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v3, "TopicBasedTrendingTopics"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v2, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 133
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;

    invoke-direct {p2, p1, p3}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 134
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 135
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    new-instance v9, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    invoke-virtual {v9, v1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 139
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;

    invoke-direct {p3, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion$addTopicCardAdapter$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {v9, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    const/4 p3, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2, p3, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 153
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V
    .locals 1

    .line 461
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 462
    iget-object v0, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    const-string v0, "listViewEnterSource"

    .line 463
    invoke-virtual {p1, v0, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 464
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 465
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private final jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 456
    new-instance v0, Lcom/narvii/master/MasterHelper;

    invoke-direct {v0, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 457
    invoke-virtual {v0}, Lcom/narvii/master/MasterHelper;->jumpToMyCommunityPage()V

    return-void
.end method

.method private final showMoreChat(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 121
    const-class v0, Lcom/narvii/chat/ChatModuleListFramgment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content_module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showMoreCommunity(Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 319
    iget-boolean v0, p3, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 320
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 321
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p2

    const-string p3, "key_topic_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    invoke-interface {p4, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 324
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :goto_0
    invoke-virtual {v1, v0, v2, p2}, Lcom/narvii/community/CommunityListFragment$Companion;->addShareCommunityList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 328
    const-class p1, Lcom/narvii/community/CommunityListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 329
    iget-object p2, p3, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const-string v1, "KEY_TITLE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object p2, p3, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    const-string v1, "KEY_PATH"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "KEY_DATA_SOURCE_ID"

    .line 331
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "KEY_REPLACE"

    .line 332
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_module"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-interface {p4, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private final showMoreStory(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;)V
    .locals 4

    .line 237
    iget-boolean v0, p1, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 238
    const-class p3, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p3

    .line 239
    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p1

    const-string p4, "key_topic_id"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 242
    :cond_0
    const-class v0, Lcom/narvii/story/StoryModuleListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_content_module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 245
    iget-boolean p3, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-ne p3, p1, :cond_1

    .line 246
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 249
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/paging/source/PageDataSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v1, v2

    .line 251
    :goto_0
    invoke-virtual {p4}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object p4

    invoke-virtual {p4}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object p4

    goto :goto_1

    :cond_4
    move-object p4, v2

    :goto_1
    instance-of v3, p4, Ljava/util/ArrayList;

    if-nez v3, :cond_5

    move-object p4, v2

    :cond_5
    check-cast p4, Ljava/util/ArrayList;

    .line 252
    sget-object v2, Lcom/narvii/story/StoryModuleListFragment;->Companion:Lcom/narvii/story/StoryModuleListFragment$Companion;

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    if-eqz p4, :cond_6

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    :goto_2
    invoke-virtual {v2, p3, v3, v1}, Lcom/narvii/story/StoryModuleListFragment$Companion;->addShareStoryList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string p4, "KEY_REPLACE"

    .line 254
    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "KEY_DATA_SOURCE_ID"

    .line 255
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v1, :cond_7

    const-string p3, "key_is_end"

    .line 257
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    :cond_7
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method

.method private final showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 190
    const-class v0, Lcom/narvii/topic/TopicListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    iget-object v1, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const-string v2, "KEY_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    const-string v2, "KEY_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_module"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getModuleAdapterList(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p1, "QuizStoryCard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addStoryCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_3

    :sswitch_1
    const-string p1, "GeneralChatCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addChatCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_3

    :sswitch_2
    const-string p1, "CreateCommunityButton"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCreateCommunityButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_3

    :sswitch_3
    const-string p1, "DiscoverTopicsButton"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addDiscoverTopicButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "BannerSizeMedium"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_5
    const-string v1, "BannerSizeTop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addAdsBannerAdapter(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_3

    :sswitch_6
    const-string p1, "GridCommunityCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :sswitch_7
    const-string p1, "CommunityThumbnailLine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityThumbnailAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_8
    const-string p1, "GeneralStoryCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addStoryCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_9
    const-string p1, "HeadlinePost"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addHeaderLinePostsAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_a
    const-string p1, "GridTopicCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addGridTopicAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_b
    const-string p1, "GeneralTopicCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addTopicCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_c
    const-string p1, "PollStoryCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addStoryCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :sswitch_d
    const-string p1, "GeneralCommunityCard"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    :goto_1
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 83
    :cond_1
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b5fe94f -> :sswitch_d
        -0x64329b7a -> :sswitch_c
        -0x60ac9309 -> :sswitch_b
        -0x5f7f5fe7 -> :sswitch_a
        -0x56681b4c -> :sswitch_9
        -0x11dfba43 -> :sswitch_8
        -0x9145249 -> :sswitch_7
        -0x825172d -> :sswitch_6
        -0x4170358 -> :sswitch_5
        0x16f2f42 -> :sswitch_4
        0x19c2ec1f -> :sswitch_3
        0x4369bfbf -> :sswitch_2
        0x51c7d370 -> :sswitch_1
        0x55d062b0 -> :sswitch_0
    .end sparse-switch
.end method
