.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopicViewHolder"
.end annotation


# instance fields
.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

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
    iput-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 31
    .line 32
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p2, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
