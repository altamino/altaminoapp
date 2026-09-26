.class public final Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/PostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostViewHolder"
.end annotation


# instance fields
.field private final itemContentView:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/PostListAdapter;
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
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0762

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->itemContentView:Landroid/widget/FrameLayout;

    .line 22
    return-void
.end method


# virtual methods
.method public final bindData(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    return-void
.end method

.method public final getItemContentView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->itemContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method
