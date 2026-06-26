.class Lcom/narvii/leaderboard/ShareHeaderFragment$1;
.super Ljava/lang/Object;
.source "ShareHeaderFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/ShareHeaderFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/ShareHeaderFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$1;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment$1;->this$0:Lcom/narvii/leaderboard/ShareHeaderFragment;

    invoke-static {p1, p2}, Lcom/narvii/leaderboard/ShareHeaderFragment;->access$002(Lcom/narvii/leaderboard/ShareHeaderFragment;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
