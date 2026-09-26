.class public final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityModule$lambda$6(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p2, p3}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "BannerSizeMedium"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2, v3, v2, v3}, Lcom/narvii/master/home/discover/adapter/CardTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p1, v3

    .line 43
    .line 44
    :goto_0
    new-instance v1, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 56
    :cond_2
    move-object p1, v1

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    new-instance p3, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, p2, v3, v2, v3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    const/16 v7, 0x8

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v1

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    const/high16 v3, 0x41700000    # 15.0f

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 36
    move-result v6

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v4, v2

    .line 43
    move-object v5, p1

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v4 .. v9}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 47
    .line 48
    new-instance v3, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 52
    const/4 v4, 0x2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    new-instance v5, Lcom/narvii/master/home/discover/adapter/k;

    .line 67
    .line 68
    .line 69
    invoke-direct {v5, p1, p2}, Lcom/narvii/master/home/discover/adapter/k;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    if-eqz p3, :cond_0

    .line 75
    .line 76
    iget-boolean p3, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 77
    .line 78
    if-nez p3, :cond_1

    .line 79
    .line 80
    :cond_0
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    .line 81
    const/4 v1, 0x4

    .line 82
    .line 83
    .line 84
    invoke-direct {p3, p1, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 88
    .line 89
    new-instance v1, Lcom/narvii/master/home/discover/adapter/l;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/adapter/l;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    :cond_1
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 101
    const/4 p3, 0x0

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p1, p3, v4, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0
.end method

.method private static final addChatCardAdapter$lambda$0(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moduleTitle"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreChat(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
.end method

.method private static final addChatCardAdapter$lambda$1(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moreButton"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreChat(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
.end method

.method private final addCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;
    .locals 15
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

    .line 1
    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/topic/model/discover/ContentModule;->isJoinedCommunity()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p3}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addMyCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v7, v8}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    new-instance v11, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    const/16 v5, 0x8

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v0, v11

    .line 38
    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    move-object/from16 v3, p3

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 47
    .line 48
    new-instance v6, Lkotlin/jvm/internal/p0;

    .line 49
    .line 50
    .line 51
    invoke-direct {v6}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 52
    .line 53
    new-instance v12, Lkotlin/jvm/internal/p0;

    .line 54
    .line 55
    .line 56
    invoke-direct {v12}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 57
    .line 58
    new-instance v13, Lkotlin/jvm/internal/p0;

    .line 59
    .line 60
    .line 61
    invoke-direct {v13}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 62
    .line 63
    iget-object v0, v8, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "GridCommunityCard"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v7, v8, v9}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 77
    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    const v2, 0x7f070168

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 91
    move-result v1

    .line 92
    .line 93
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 94
    const/4 v3, 0x0

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, v7, v1, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 98
    const/4 v1, 0x3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getLastPageToken()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    iput-object v1, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getCommunityList()Ljava/util/ArrayList;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    iput-object v1, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v0, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_1
    new-instance v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, v7, v8, v9}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getLastPageToken()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    iput-object v1, v6, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getCommunityList()Ljava/util/ArrayList;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    iput-object v1, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v0, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 154
    .line 155
    :goto_0
    new-instance v14, Lcom/narvii/master/home/discover/adapter/h;

    .line 156
    move-object v0, v14

    .line 157
    .line 158
    move-object/from16 v1, p1

    .line 159
    .line 160
    move-object/from16 v2, p2

    .line 161
    move-object v3, v13

    .line 162
    move-object v4, v12

    .line 163
    move-object v5, v6

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/home/discover/adapter/h;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v14}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    if-eqz v9, :cond_2

    .line 172
    .line 173
    iget-boolean v0, v9, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 174
    .line 175
    if-nez v0, :cond_3

    .line 176
    .line 177
    :cond_2
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    .line 178
    const/4 v1, 0x6

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v7, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 182
    .line 183
    iget-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 189
    .line 190
    new-instance v1, Lcom/narvii/master/home/discover/adapter/i;

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v7, v8, v12, v6}, Lcom/narvii/master/home/discover/adapter/i;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    :cond_3
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 202
    const/4 v1, 0x2

    .line 203
    const/4 v2, 0x0

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v7, v2, v1, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 207
    .line 208
    iget-object v1, v13, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-object v10
.end method

.method private static final addCommunityModule$lambda$5(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p5, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p5, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p5, "$hostAdapter"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p5, "$list"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string p5, "$token"

    .line 23
    .line 24
    .line 25
    invoke-static {p4, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    sget-object p5, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 28
    .line 29
    const-string v0, "moduleTitle"

    .line 30
    .line 31
    .line 32
    invoke-direct {p5, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v0, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 35
    .line 36
    instance-of v1, v0, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/topic/model/CommunityDataSourceCarrier;->getCommunityList()Ljava/util/ArrayList;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object p2, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Lcom/narvii/topic/model/CommunityDataSourceCarrier;

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Lcom/narvii/topic/model/CommunityDataSourceCarrier;->getLastPageToken()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    iput-object p2, p4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_0
    iget-object p2, p3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object p3, p4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p3, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-direct {p5, p2, p3, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreCommunity(Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 68
    return-void
.end method

.method private static final addCommunityModule$lambda$6(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p4, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p4, "$list"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p4, "$token"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    sget-object p4, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 23
    .line 24
    const-string v0, "moreButton"

    .line 25
    .line 26
    .line 27
    invoke-direct {p4, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p2, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object p3, p3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p3, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-direct {p4, p2, p3, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreCommunity(Ljava/util/ArrayList;Ljava/lang/String;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 39
    return-void
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p1, p3, v2, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
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

    .line 1
    .line 2
    new-instance p3, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CreateCommunityButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p1, v1, v2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
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

    .line 1
    .line 2
    new-instance p3, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p1, v1, v2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
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

    .line 1
    move-object v7, p1

    .line 2
    move-object v8, p2

    .line 3
    .line 4
    move-object/from16 v9, p3

    .line 5
    .line 6
    new-instance v10, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    new-instance v11, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {v11, p1, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 23
    .line 24
    new-instance v12, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v0, v12

    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p2

    .line 32
    .line 33
    move-object/from16 v3, p3

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v12, v11}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const/high16 v1, 0x41700000    # 15.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 52
    move-result v5

    .line 53
    .line 54
    new-instance v6, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v0, v6

    .line 59
    move-object v1, p1

    .line 60
    .line 61
    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 63
    const/4 v0, 0x3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v11, v0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/master/home/discover/adapter/m;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p1, p2}, Lcom/narvii/master/home/discover/adapter/m;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v12, v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    if-eqz v9, :cond_0

    .line 80
    .line 81
    iget-boolean v0, v9, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    :cond_0
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    .line 86
    const/4 v1, 0x6

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v11}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    new-instance v1, Lcom/narvii/master/home/discover/adapter/n;

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/adapter/n;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    :cond_1
    new-instance v0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 106
    const/4 v1, 0x2

    .line 107
    const/4 v2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p1, v2, v1, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v11}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v10
.end method

.method private static final addGridTopicAdapter$lambda$3(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moduleTitle"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
.end method

.method private static final addGridTopicAdapter$lambda$4(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moreButton"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    const/16 v7, 0x8

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v1

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/topic/adapter/PostListAdapter;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/PostListAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 34
    const/4 p3, 0x0

    .line 35
    const/4 v3, 0x2

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p1, p3, v3, p3}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    const/16 v7, 0x8

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v1

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    iget-object v2, p2, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "GridCommunityCard"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    const v4, 0x7f070168

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 56
    move-result v3

    .line 57
    .line 58
    new-instance v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 59
    const/4 v5, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, p1, v3, v5}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 63
    const/4 v3, 0x3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_0
    new-instance v2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p1, p2, p3}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    :goto_0
    if-eqz p3, :cond_1

    .line 93
    .line 94
    iget-boolean p3, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 95
    .line 96
    if-nez p3, :cond_2

    .line 97
    .line 98
    :cond_1
    new-instance p3, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;

    .line 99
    const/4 v3, 0x6

    .line 100
    .line 101
    .line 102
    invoke-direct {p3, p1, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v2}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 106
    .line 107
    new-instance v3, Lcom/narvii/master/home/discover/adapter/f;

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, p1, p2}, Lcom/narvii/master/home/discover/adapter/f;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v3}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    :cond_2
    new-instance p3, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 119
    const/4 v3, 0x2

    .line 120
    const/4 v4, 0x0

    .line 121
    .line 122
    .line 123
    invoke-direct {p3, p1, v4, v3, v4}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    new-instance p3, Lcom/narvii/master/home/discover/adapter/g;

    .line 132
    .line 133
    .line 134
    invoke-direct {p3, p1, p2}, Lcom/narvii/master/home/discover/adapter/g;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v0
.end method

.method private static final addMyCommunityModule$lambda$7(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moreButton"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
.end method

.method private static final addMyCommunityModule$lambda$8(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moduleTitle"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V

    .line 21
    return-void
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 19
    .line 20
    iget-object v2, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "TopicBasedTrendingTopics"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    iget-boolean v2, p3, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p1, p3}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    new-instance v9, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 50
    const/4 v6, 0x0

    .line 51
    .line 52
    const/16 v7, 0x8

    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v2, v9

    .line 55
    move-object v3, p1

    .line 56
    move-object v4, p2

    .line 57
    move-object v5, p3

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v2 .. v8}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    new-instance p3, Lcom/narvii/master/home/discover/adapter/j;

    .line 69
    .line 70
    .line 71
    invoke-direct {p3, p1, p2}, Lcom/narvii/master/home/discover/adapter/j;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, p3}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    .line 80
    const/4 p3, 0x2

    .line 81
    const/4 v2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p1, v2, p3, v2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/k;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method private static final addTopicCardAdapter$lambda$2(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-string p2, "$ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$module"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 13
    .line 14
    const-string v0, "moduleTitle"

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0, p1, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V

    .line 18
    .line 19
    iget-object v0, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "BookmarkedTopics"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V

    .line 41
    :goto_0
    return-void
.end method

.method private final appendMedRecAdapter(Lcom/narvii/app/NVContext;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    check-cast p2, Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/topic/adapter/MedRecAdAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->getDiscoverScreenAdAppearance()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p1, v1, v2}, Lcom/narvii/topic/adapter/MedRecAdAdapter;-><init>(Lcom/narvii/app/NVContext;J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-object v0
.end method

.method public static synthetic b(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityModule$lambda$5(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Lkotlin/jvm/internal/p0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addTopicCardAdapter$lambda$2(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method private final clickShowAllLog(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p2, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    .line 13
    const-string v0, "listViewEnterSource"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 23
    return-void
.end method

.method public static synthetic d(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addChatCardAdapter$lambda$0(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addChatCardAdapter$lambda$1(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addGridTopicAdapter$lambda$3(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addGridTopicAdapter$lambda$4(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method private final getDiscoverScreenAdAppearance()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "getInstance(...)"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->g()Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    const-string v1, "android_discover_screen_ad_appearance"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->m(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public static synthetic getModuleAdapterList$default(Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;ZILjava/lang/Object;)Ljava/util/List;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->getModuleAdapterList(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic h(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addMyCommunityModule$lambda$8(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addMyCommunityModule$lambda$7(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Landroid/view/View;)V

    return-void
.end method

.method private final jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/MasterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/MasterHelper;->jumpToMyCommunityPage()V

    .line 9
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showMoreChat(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/ChatModuleListFramgment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "content_module"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 19
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

    .line 1
    .line 2
    iget-boolean v0, p3, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string p2, "key_topic_id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    .line 22
    move-result p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {p4, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "toString(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1, v0, v2, p2}, Lcom/narvii/community/CommunityListFragment$Companion;->addShareCommunityList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 59
    .line 60
    const-class p1, Lcom/narvii/community/CommunityListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "KEY_TITLE"

    .line 67
    .line 68
    iget-object v1, p3, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    const-string p2, "KEY_PATH"

    .line 74
    .line 75
    iget-object v1, p3, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    const-string p2, "KEY_DATA_SOURCE_ID"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    const-string p2, "KEY_REPLACE"

    .line 86
    const/4 v0, 0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    .line 91
    const-string p2, "_module"

    .line 92
    .line 93
    .line 94
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-static {p4, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 102
    :goto_1
    return-void
.end method

.method private final showMoreTopic(Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/topic/TopicListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "KEY_TITLE"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "KEY_PATH"

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "_module"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v0}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final getModuleAdapterList(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)Ljava/util/List;
    .locals 2
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Lcom/narvii/topic/ModuleDisplayConfig;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    sparse-switch v1, :sswitch_data_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string p1, "GeneralChatCard"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addChatCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :sswitch_1
    const-string p1, "CreateCommunityButton"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCreateCommunityButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :sswitch_2
    const-string p1, "DiscoverTopicsButton"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addDiscoverTopicButtonAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_3
    const-string p5, "BannerSizeMedium"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p5

    .line 80
    .line 81
    if-nez p5, :cond_3

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :sswitch_4
    const-string p5, "BannerSizeTop"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p5

    .line 90
    .line 91
    if-nez p5, :cond_3

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addAdsBannerAdapter(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 96
    move-result-object p1

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :sswitch_5
    const-string p1, "GridCommunityCard"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-nez p1, :cond_8

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :sswitch_6
    const-string p1, "CommunityThumbnailLine"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-nez p1, :cond_4

    .line 115
    goto :goto_0

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityThumbnailAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 119
    move-result-object p1

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :sswitch_7
    const-string p1, "HeadlinePost"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    .line 128
    if-nez p1, :cond_5

    .line 129
    goto :goto_0

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addHeaderLinePostsAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 133
    move-result-object p1

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :sswitch_8
    const-string p1, "GridTopicCard"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result p1

    .line 141
    .line 142
    if-nez p1, :cond_6

    .line 143
    goto :goto_0

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addGridTopicAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 147
    move-result-object p1

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :sswitch_9
    const-string p1, "GeneralTopicCard"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result p1

    .line 155
    .line 156
    if-nez p1, :cond_7

    .line 157
    goto :goto_0

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addTopicCardAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 161
    move-result-object p1

    .line 162
    goto :goto_1

    .line 163
    .line 164
    :sswitch_a
    const-string p1, "GeneralCommunityCard"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result p1

    .line 169
    .line 170
    if-nez p1, :cond_8

    .line 171
    goto :goto_0

    .line 172
    .line 173
    .line 174
    :cond_8
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->addCommunityModule(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    if-eqz p5, :cond_a

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p2, p1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->appendMedRecAdapter(Lcom/narvii/app/NVContext;Ljava/util/List;)Ljava/util/List;

    .line 181
    move-result-object p1

    .line 182
    goto :goto_1

    .line 183
    .line 184
    :cond_9
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_a
    :goto_1
    return-object p1

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    :sswitch_data_0
    .sparse-switch
        -0x7b5fe94f -> :sswitch_a
        -0x60ac9309 -> :sswitch_9
        -0x5f7f5fe7 -> :sswitch_8
        -0x56681b4c -> :sswitch_7
        -0x9145249 -> :sswitch_6
        -0x825172d -> :sswitch_5
        -0x4170358 -> :sswitch_4
        0x16f2f42 -> :sswitch_3
        0x19c2ec1f -> :sswitch_2
        0x4369bfbf -> :sswitch_1
        0x51c7d370 -> :sswitch_0
    .end sparse-switch
.end method
