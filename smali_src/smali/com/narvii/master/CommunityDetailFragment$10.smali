.class Lcom/narvii/master/CommunityDetailFragment$10;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$10$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$10$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$10;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->minTimeRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$10$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$10$2;-><init>(Lcom/narvii/master/CommunityDetailFragment$10;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/CommunityDetailFragment$10;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/CommunityLaunchHelper;->isFinished:Z

    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/master/CommunityDetailFragment$10;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/CommunityLaunchHelper;->progress()V

    .line 4
    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/master/CommunityDetailFragment$10;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/master/CommunityDetailFragment$10;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/narvii/master/CommunityDetailFragment$10;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/master/CommunityDetailFragment$10;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->satisfyTime:Z

    return-void
.end method

.method private setStartTime()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->startTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->startTime:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->minTimeRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    const-wide/16 v1, 0x3e8

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 28
    return-void
.end method


# virtual methods
.method _onFinish()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method

.method protected beginFinishWork()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->minTimeRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->beginFinishWork()V

    .line 16
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->clear()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    .line 14
    :cond_0
    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-super/range {p0 .. p8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 13

    move-object v12, p0

    iget-object v0, v12, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 1
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

    .line 2
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment$10;->setStartTime()V

    return-void
.end method

.method protected onFail(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->startTime:J

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->minTimeRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->W(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onFinish()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->minTimeRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->startTime:J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/narvii/master/CommunityDetailFragment;->F(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment;->K(Lcom/narvii/master/CommunityDetailFragment;I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->W(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    const v1, 0x7f010028

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$10$3;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$10$3;-><init>(Lcom/narvii/master/CommunityDetailFragment$10;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->animation:Landroid/view/animation/Animation;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    const v2, 0x7f010029

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void
.end method

.method protected onProgress(IF)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment$10;->setStartTime()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/narvii/master/CommunityDetailFragment$10;->startTime:J

    .line 10
    sub-long/2addr v0, v2

    .line 11
    long-to-float p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 14
    div-float/2addr p1, v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 21
    .line 22
    const/high16 v0, 0x42a00000    # 80.0f

    .line 23
    mul-float/2addr p1, v0

    .line 24
    float-to-int p1, p1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x14

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/narvii/master/CommunityDetailFragment;->K(Lcom/narvii/master/CommunityDetailFragment;I)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->W(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 41
    return-void
.end method

.method protected readyForFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->satisfyTime:Z

    return v0
.end method
