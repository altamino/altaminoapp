.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SRLiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerHolder"
.end annotation


# instance fields
.field public line:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 388
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090368

    .line 389
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;->line:Landroid/view/View;

    return-void
.end method
