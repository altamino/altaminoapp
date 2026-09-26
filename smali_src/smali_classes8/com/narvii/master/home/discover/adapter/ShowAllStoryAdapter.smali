.class public Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;,
        Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_COUNT:I = 0x3e8

.field private static final MEDIUM_COUNT:I = 0x64

.field private static final MIN_COUNT:I = 0x32


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final minSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput p2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x4

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public final getClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 28
    .line 29
    instance-of v2, v0, Lcom/narvii/topic/model/ModuleItemCountHost;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const-string v2, "null cannot be cast to non-null type com.narvii.topic.model.ModuleItemCountHost"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/topic/model/ModuleItemCountHost;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lcom/narvii/topic/model/ModuleItemCountHost;->allItemCount()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iget v2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    .line 45
    .line 46
    if-le v0, v2, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_0
    return v1
.end method

.method public final getMinSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
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
    instance-of p2, p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    .line 8
    .line 9
    if-eqz p2, :cond_3

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 12
    .line 13
    instance-of v0, p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type com.narvii.paging.adapter.RecyclerViewColumnAdapter"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 25
    .line 26
    :cond_0
    instance-of v0, p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/topic/model/ModuleItemCountHost;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lcom/narvii/topic/model/ModuleItemCountHost;->allItemCount()I

    .line 35
    move-result p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p2, v1

    .line 38
    .line 39
    :goto_0
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->minSize:I

    .line 40
    const/4 v2, 0x1

    .line 41
    add-int/2addr v0, v2

    .line 42
    .line 43
    if-gt v0, p2, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x3e9

    .line 46
    .line 47
    if-ge p2, v0, :cond_2

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    const v0, 0x7f1210ef

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    check-cast p1, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;->getText()Landroid/widget/TextView;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    new-array v0, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    const/16 v2, 0x3e8

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    aput-object v2, v0, v1

    .line 89
    .line 90
    .line 91
    const v1, 0x7f1210f0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    :goto_1
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
    new-instance p2, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;

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
    const v1, 0x7f0d0471

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
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter$ShowAllStoryViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ShowAllStoryAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method
