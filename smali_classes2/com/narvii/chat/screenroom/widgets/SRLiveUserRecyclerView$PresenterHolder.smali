.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SRLiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenterHolder"
.end annotation


# instance fields
.field presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 369
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 370
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    return-void
.end method
