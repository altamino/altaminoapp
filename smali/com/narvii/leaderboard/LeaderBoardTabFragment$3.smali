.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;
.super Ljava/lang/Object;
.source "LeaderBoardTabFragment.java"

# interfaces
.implements Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/LeaderBoardTabFragment;->initLeaderBoardTabBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$800(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$900(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method
