.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecyclerViewHolder"
.end annotation


# instance fields
.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 4
    .param p1    # Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;
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
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

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
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0e9e

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->title:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    move-result-object v1

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
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getInnerAdapter()Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/topic/adapter/z;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p1}, Lcom/narvii/topic/adapter/z;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private static final _init_$lambda$2(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/topic/adapter/y;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/y;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->_init_$lambda$2(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->lambda$2$lambda$1(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    return-void
.end method

.method private static final lambda$2$lambda$1(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->access$getDataSetEventDispatcher$p$s2056886769(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/topic/adapter/x;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/topic/adapter/x;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 22
    return-void
.end method

.method private static final lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "obj"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 9
    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
