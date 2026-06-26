.class Lcom/narvii/leaderboard/LeaderBoardTabBar$1;
.super Ljava/lang/Object;
.source "LeaderBoardTabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/LeaderBoardTabBar;->setLeaderBoardItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/LeaderBoardTabBar;

.field final synthetic val$curPos:I


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/LeaderBoardTabBar;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    iput p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;->val$curPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    iget-object p1, p1, Lcom/narvii/leaderboard/LeaderBoardTabBar;->listener:Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;

    if-eqz p1, :cond_0

    .line 120
    iget v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabBar$1;->val$curPos:I

    invoke-interface {p1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
