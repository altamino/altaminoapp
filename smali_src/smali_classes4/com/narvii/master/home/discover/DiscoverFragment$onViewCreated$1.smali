.class public final Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "recyclerView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    .line 32
    if-ne p1, p2, :cond_2

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p3, p0, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    instance-of v0, p3, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    check-cast p3, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p3, 0x0

    .line 69
    .line 70
    :goto_0
    if-eqz p3, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getImmersiveHeaderHeight()I

    .line 78
    move-result v1

    .line 79
    .line 80
    if-le v0, v1, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 84
    move-result p1

    .line 85
    .line 86
    if-ltz p1, :cond_1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 p2, 0x0

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {p3, p2}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateImmersiveHeader(Z)V

    .line 92
    :cond_2
    return-void
.end method
