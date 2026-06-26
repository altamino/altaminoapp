.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SpeedDialRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormalItemViewHolder"
.end annotation


# instance fields
.field normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 355
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090779

    .line 356
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;->normaltemView:Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    return-void
.end method
