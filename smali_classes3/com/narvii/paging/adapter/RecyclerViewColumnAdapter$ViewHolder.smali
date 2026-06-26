.class Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewColumnAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field childViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field ll:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;Landroid/view/View;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->this$0:Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 130
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    .line 131
    sget p1, Lcom/narvii/lib/R$id;->column_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->ll:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public addChildViewHolder(ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bindView()V
    .locals 0

    return-void
.end method

.method public getChildViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public removeChildViewHolder(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter$ViewHolder;->childViewHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
