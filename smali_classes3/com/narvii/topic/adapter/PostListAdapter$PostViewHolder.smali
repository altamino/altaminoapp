.class public final Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PostListAdapter.kt"


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

.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0905e1

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->itemContentView:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final bindData(I)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final getItemContentView()Landroid/widget/FrameLayout;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->itemContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method
