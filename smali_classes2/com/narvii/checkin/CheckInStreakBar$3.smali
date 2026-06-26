.class Lcom/narvii/checkin/CheckInStreakBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CheckInStreakBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInStreakBar;->startCheckInAnimation(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInStreakBar;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInStreakBar;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 327
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 328
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInStreakBar;->access$202(Lcom/narvii/checkin/CheckInStreakBar;Z)Z

    .line 329
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 331
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0906b2

    .line 336
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090562

    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0802f0

    .line 338
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    new-instance v3, Lcom/narvii/util/ScaleBounceHelper;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/narvii/checkin/CheckInStreakBar;->scaleArray:[F

    sget-object v6, Lcom/narvii/checkin/CheckInStreakBar;->timeArray:[I

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/narvii/util/ScaleBounceHelper;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    invoke-static {v2, v3}, Lcom/narvii/checkin/CheckInStreakBar;->access$302(Lcom/narvii/checkin/CheckInStreakBar;Lcom/narvii/util/ScaleBounceHelper;)Lcom/narvii/util/ScaleBounceHelper;

    .line 340
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-static {v2}, Lcom/narvii/checkin/CheckInStreakBar;->access$300(Lcom/narvii/checkin/CheckInStreakBar;)Lcom/narvii/util/ScaleBounceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/ScaleBounceHelper;->playSeq()V

    .line 341
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09077f

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    const/16 v1, 0xc8

    invoke-static {v0, p1, v1}, Lcom/narvii/checkin/CheckInStreakBar;->access$400(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;I)V

    return-void
.end method
