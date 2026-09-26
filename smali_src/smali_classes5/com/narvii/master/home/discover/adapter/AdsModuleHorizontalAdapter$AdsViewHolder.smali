.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AdsViewHolder"
.end annotation


# instance fields
.field private currentSnapPos:I

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 4
    .param p1    # Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a04db

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setInnerRecyclerView$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 37
    .line 38
    .line 39
    const v2, 0x7f0a071c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/widgets/AdsModuleIndicator;)V

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 53
    .line 54
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p2

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/SnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    .line 80
    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 87
    .line 88
    instance-of p2, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 89
    .line 90
    if-eqz p2, :cond_0

    .line 91
    .line 92
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 93
    .line 94
    new-instance p2, Lcom/narvii/master/home/discover/adapter/d;

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/d;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setPositionChangeListener(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "this$1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const-string p1, "innerDataSource"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 37
    move-result p1

    .line 38
    rem-int/2addr p0, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setSelectedIndex(I)V

    .line 42
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->_init_$lambda$0(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    return-void
.end method

.method public static final synthetic access$maybeNotifySnapPositionChange(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->maybeNotifySnapPositionChange(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    return-void
.end method

.method private final getSnapPosition(Landroidx/recyclerview/widget/SnapHelper;Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    return v0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method private final maybeNotifySnapPositionChange(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->getSnapPosition(Landroidx/recyclerview/widget/SnapHelper;Landroidx/recyclerview/widget/RecyclerView;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 13
    .line 14
    if-eq v0, p1, :cond_3

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->currentSnapPos:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const-string v1, "innerDataSource"

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 45
    move-result v1

    .line 46
    rem-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setSelectedIndex(I)V

    .line 50
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
