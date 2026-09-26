.class Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->this$0:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a02a2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/chat/hangout/HangoutItem;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;->liveItemView:Lcom/narvii/chat/hangout/HangoutItem;

    .line 17
    return-void
.end method
