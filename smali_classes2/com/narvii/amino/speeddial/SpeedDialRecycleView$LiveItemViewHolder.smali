.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SpeedDialRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveItemViewHolder"
.end annotation


# instance fields
.field liveItemView:Lcom/narvii/chat/hangout/HangoutItem;

.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;


# direct methods
.method public constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Landroid/view/View;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 365
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901eb

    .line 366
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/hangout/HangoutItem;

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->liveItemView:Lcom/narvii/chat/hangout/HangoutItem;

    return-void
.end method
