.class public final Lcom/narvii/widget/InfluencerRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;,
        Lcom/narvii/widget/InfluencerRecyclerView$InfluencerHolder;,
        Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;-><init>(Lcom/narvii/widget/InfluencerRecyclerView;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/widget/SpaceItemDecoration;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    const/high16 v0, 0x41200000    # 10.0f

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getOnUserClickListener()Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/InfluencerRecyclerView;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    return-object v0
.end method

.method public final setAdapter(Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    return-void
.end method

.method public final setOnUserClickListener(Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

    return-void
.end method

.method public final updateInfluencerList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->list:Ljava/util/List;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/InfluencerRecyclerView;->adapter:Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    return-void
.end method
