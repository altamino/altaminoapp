.class Lcom/narvii/master/CommunityDetailFragment$11;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->initLaunchHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MIN_TIME_LIMIT:J = 0x3e8L


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private minTimeRunnable:Ljava/lang/Runnable;

.field private satisfyTime:Z

.field private startTime:J

.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;

.field private updateProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 1553
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 1584
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$11$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$11$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$11;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->minTimeRunnable:Ljava/lang/Runnable;

    .line 1595
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$11$2;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$11$2;-><init>(Lcom/narvii/master/CommunityDetailFragment$11;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/master/CommunityDetailFragment$11;)Ljava/lang/Runnable;
    .locals 0

    .line 1553
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/narvii/master/CommunityDetailFragment$11;Z)Z
    .locals 0

    .line 1553
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->satisfyTime:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/narvii/master/CommunityDetailFragment$11;)Z
    .locals 0

    .line 1553
    iget-boolean p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->isFinished:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/narvii/master/CommunityDetailFragment$11;)V
    .locals 0

    .line 1553
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    return-void
.end method

.method static synthetic access$2900(Lcom/narvii/master/CommunityDetailFragment$11;)Landroid/view/animation/Animation;
    .locals 0

    .line 1553
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/narvii/master/CommunityDetailFragment$11;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 1553
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private setStartTime()V
    .locals 5

    .line 1575
    iget-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 1578
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->startTime:J

    .line 1579
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 1580
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->minTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method _onFinish()V
    .locals 0

    .line 1614
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method

.method protected beginFinishWork()V
    .locals 2

    .line 1626
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->minTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1627
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1628
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->beginFinishWork()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1675
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    .line 1676
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    .line 1678
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V
    .locals 0

    .line 1620
    invoke-super/range {p0 .. p8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 13

    move-object v12, p0

    .line 1561
    iget-object v0, v12, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v11, v0, Lcom/narvii/master/CommunityDetailFragment;->intentAfterLaunch:Landroid/content/Intent;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-super/range {v0 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    .line 1562
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment$11;->setStartTime()V

    return-void
.end method

.method protected onFail(ILjava/lang/String;)V
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    const-wide/16 v0, 0x0

    .line 1606
    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->startTime:J

    .line 1607
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->minTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1608
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1609
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$2400(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 1610
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method protected onFinish()V
    .locals 3

    .line 1638
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->minTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1639
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 1640
    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->startTime:J

    .line 1641
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1642
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/narvii/master/CommunityDetailFragment;->access$502(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1643
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->access$2202(Lcom/narvii/master/CommunityDetailFragment;I)I

    .line 1644
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$2400(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 1645
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1650
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$11$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$11$3;-><init>(Lcom/narvii/master/CommunityDetailFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1668
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->animation:Landroid/view/animation/Animation;

    .line 1669
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1670
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v1, v0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f01001b

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onProgress(IF)V
    .locals 4

    .line 1567
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment$11;->setStartTime()V

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/master/CommunityDetailFragment$11;->startTime:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1569
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x14

    invoke-static {p2, p1}, Lcom/narvii/master/CommunityDetailFragment;->access$2202(Lcom/narvii/master/CommunityDetailFragment;I)I

    .line 1570
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1571
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->access$2400(Lcom/narvii/master/CommunityDetailFragment;)V

    return-void
.end method

.method protected readyForFinish()Z
    .locals 1

    .line 1633
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment$11;->satisfyTime:Z

    return v0
.end method
