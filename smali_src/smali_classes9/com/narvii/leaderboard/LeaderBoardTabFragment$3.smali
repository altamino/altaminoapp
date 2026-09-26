.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$000(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, p1

    .line 24
    .line 25
    add-int/lit8 p1, v0, -0x1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 35
    :cond_1
    return-void
.end method
