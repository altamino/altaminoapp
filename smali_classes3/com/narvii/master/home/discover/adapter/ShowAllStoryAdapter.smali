.class public Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "ShowAllStoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;,
        Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;

.field private static final MAX_COUNT:I = 0x3e8

.field private static final MEDIUM_COUNT:I = 0x64

.field private static final MIN_COUNT:I = 0x32


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private final minSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput p2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x4

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public final getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v2, v0, Lcom/narvii/topic/model/ModuleItemCountHost;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_1

    .line 30
    check-cast v0, Lcom/narvii/topic/model/ModuleItemCountHost;

    invoke-interface {v0}, Lcom/narvii/topic/model/ModuleItemCountHost;->allItemCount()I

    move-result v0

    iget v2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.ModuleItemCountHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_4
    return v1
.end method

.method public final getMinSize()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of p2, p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    if-eqz p2, :cond_d

    .line 38
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 39
    instance-of v0, p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 40
    check-cast p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    iget-object p2, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.paging.adapter.RecyclerViewColumnAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v0, v0, Lcom/narvii/topic/TopicRelatedDiscoverFragment;

    const v1, 0x7f0f0fe5

    const/16 v2, 0x3e8

    const v3, 0x7f0f0fe6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    .line 43
    instance-of v0, p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    invoke-interface {p2}, Lcom/narvii/topic/model/ModuleItemCountHost;->allItemCount()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 44
    :goto_1
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    add-int/2addr v0, v5

    const/16 v6, 0x32

    if-le v0, p2, :cond_3

    goto :goto_2

    :cond_3
    if-lt v6, p2, :cond_4

    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_4
    :goto_2
    const/16 v0, 0x33

    const/16 v1, 0x64

    if-le v0, p2, :cond_5

    goto :goto_3

    :cond_5
    if-lt v1, p2, :cond_6

    .line 45
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    :goto_3
    const v0, 0x7fffffff

    const/16 v6, 0x3e9

    if-le v6, p2, :cond_7

    goto :goto_4

    :cond_7
    if-lt v0, p2, :cond_8

    .line 46
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 47
    :cond_8
    :goto_4
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    sub-int/2addr p2, v5

    div-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    .line 51
    :cond_9
    instance-of v0, p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    invoke-interface {p2}, Lcom/narvii/topic/model/ModuleItemCountHost;->allItemCount()I

    move-result p2

    goto :goto_6

    :cond_a
    const/4 p2, 0x0

    .line 52
    :goto_6
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    add-int/2addr v0, v5

    if-le v0, p2, :cond_b

    goto :goto_7

    :cond_b
    if-lt v2, p2, :cond_c

    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 53
    :cond_c
    :goto_7
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p2, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b043b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026ore_story, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method
