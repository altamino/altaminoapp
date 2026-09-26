.class public final Lcom/narvii/topic/adapter/MedRecAdAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMedRecAdAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MedRecAdAdapter.kt\ncom/narvii/topic/adapter/MedRecAdAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 MedRecAdAdapter.kt\ncom/narvii/topic/adapter/MedRecAdAdapter\n*L\n45#1:85,2\n*E\n"
.end annotation


# instance fields
.field private final discoverScreenAdAppearance:J


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;J)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/narvii/topic/adapter/MedRecAdAdapter;->discoverScreenAdAppearance:J

    .line 6
    return-void
.end method

.method private final getAdSize()Lai/medialab/medialabads2/data/AdSize;
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/topic/adapter/MedRecAdAdapter;->discoverScreenAdAppearance:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;->getMediaLabAdView()Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    instance-of v1, v0, Landroid/app/Activity;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Landroid/app/Activity;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v2

    .line 27
    .line 28
    :goto_0
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MedRecAdAdapter;->getAdSize()Lai/medialab/medialabads2/data/AdSize;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    .line 47
    instance-of v3, v1, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v1, v2

    .line 54
    .line 55
    :goto_1
    if-eqz v1, :cond_4

    .line 56
    .line 57
    const-string v3, "MedRecAdAdapter"

    .line 58
    .line 59
    const-string v4, "MediaLab MedRec - New ad view ready"

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    const v4, 0x7f070056

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v3

    .line 74
    .line 75
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    .line 77
    mul-int/lit8 v3, v3, 0x2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    const-string v6, "getContext(...)"

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 90
    move-result v0

    .line 91
    add-int/2addr v3, v0

    .line 92
    const/4 v0, -0x1

    .line 93
    .line 94
    .line 95
    invoke-direct {v4, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    move-object v2, v0

    .line 108
    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    .line 111
    :cond_2
    if-eqz v2, :cond_3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;->setMediaLabAdView(Lai/medialab/medialabads2/banners/MediaLabAdView;)V

    .line 121
    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MedRecAdAdapter;->getAdSize()Lai/medialab/medialabads2/data/AdSize;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;

    .line 14
    .line 15
    new-instance p2, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    new-instance p1, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;

    .line 31
    .line 32
    new-instance p2, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    .line 46
    new-instance p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 49
    const/4 v8, 0x0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v0, v8

    .line 58
    .line 59
    :goto_0
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    check-cast v0, Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    const-string v1, "feed"

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    .line 74
    const/16 v6, 0x1c

    .line 75
    const/4 v7, 0x0

    .line 76
    move-object v0, p2

    .line 77
    .line 78
    .line 79
    invoke-static/range {v0 .. v7}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize$default(Lai/medialab/medialabads2/banners/MediaLabAdView;Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;ZZLai/medialab/medialabads2/banners/BannerLoadListener;ILjava/lang/Object;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 82
    .line 83
    instance-of v1, v0, Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v0, v8

    .line 90
    .line 91
    :goto_1
    if-eqz v0, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object v0, v8

    .line 116
    .line 117
    :goto_2
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    move-object v8, v0

    .line 121
    .line 122
    check-cast v8, Landroid/view/ViewGroup;

    .line 123
    .line 124
    :cond_4
    if-eqz v8, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-static {v8}, Lcom/narvii/ad/MediaLabAdsUtilsKt;->findFullObstructions(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    check-cast v0, Ljava/lang/Iterable;

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    check-cast v1, Landroid/view/View;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 150
    goto :goto_3

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/MedRecAdAdapter$MedRecAdViewHolder;->setMediaLabAdView(Lai/medialab/medialabads2/banners/MediaLabAdView;)V

    .line 154
    return-object p1
.end method
