.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    check-cast p2, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 10
    return-void
.end method
