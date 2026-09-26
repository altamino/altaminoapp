.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/LeaderBoardTabFragment;
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
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 6
    .line 7
    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->topOverlayHeight:I

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->q(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->n(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->v(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V

    .line 20
    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->r(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->w(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 40
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 45
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->o(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    .line 6
    move-result p3

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-ne p1, p3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sub-float p2, v0, p2

    .line 14
    .line 15
    :goto_0
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 16
    .line 17
    iget-object p3, p3, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 18
    sub-float/2addr v0, p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->o(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    .line 27
    move-result p3

    .line 28
    .line 29
    if-ne p1, p3, :cond_1

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    :cond_1
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 34
    .line 35
    iget-object p3, p3, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 39
    move-result p3

    .line 40
    .line 41
    if-lt p1, p3, :cond_2

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->u(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I

    .line 48
    move-result p3

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    if-lt p3, v0, :cond_5

    .line 52
    const/4 v1, 0x5

    .line 53
    .line 54
    if-gt p3, v1, :cond_5

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    move-result v1

    .line 63
    .line 64
    if-lt p1, v1, :cond_3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2, p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->s(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/widget/NVImageView;I)V

    .line 73
    const/4 v1, 0x4

    .line 74
    .line 75
    if-lt p1, v1, :cond_4

    .line 76
    return-void

    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->o(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, v0

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->t(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F

    .line 87
    move-result p1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->t(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F

    .line 93
    move-result p3

    .line 94
    .line 95
    cmpl-float v0, p1, p3

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    .line 102
    sub-float/2addr p3, p1

    .line 103
    mul-float/2addr p3, p2

    .line 104
    add-float/2addr p1, p3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 108
    :cond_5
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setCheckPosition(I)V

    .line 10
    :cond_0
    return-void
.end method
