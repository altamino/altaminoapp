.class public final Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;
    }
.end annotation


# instance fields
.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 11
    return-void
.end method


# virtual methods
.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d075b

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;Landroid/view/View;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    if-ne p1, v0, :cond_0

    .line 41
    .line 42
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const/high16 v1, 0x41f00000    # 30.0f

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_0
    return-object p2
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method
