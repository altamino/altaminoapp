.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;
.super Ljava/lang/Object;
.source "LeaderBoardTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 320
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->topOverlayHeight:I

    invoke-static {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$502(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I

    .line 355
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$500(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$600(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V

    :cond_0
    if-nez p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$102(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I

    .line 359
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$700(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    .line 360
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object p1, p1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 323
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sub-float p2, v0, p2

    .line 324
    :goto_0
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object p3, p3, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    sub-float/2addr v0, p2

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 325
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    move-result p3

    if-ne p1, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 326
    :cond_1
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object p3, p3, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_2

    return-void

    .line 329
    :cond_2
    iget-object p3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {p3, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$200(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I

    move-result p3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_5

    const/4 v1, 0x5

    if-gt p3, v1, :cond_5

    .line 330
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object v1, v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    goto :goto_1

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object v2, v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    invoke-static {v1, v2, p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$300(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/widget/NVImageView;I)V

    const/4 v1, 0x4

    if-lt p1, v1, :cond_4

    return-void

    .line 337
    :cond_4
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$400(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F

    move-result p1

    .line 338
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v0, p3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$400(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F

    move-result p3

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    sub-float/2addr p3, p1

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iget-object v0, v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setCheckPosition(I)V

    :cond_0
    return-void
.end method
