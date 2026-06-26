.class Lcom/narvii/checkin/CheckInStreakBar$2;
.super Ljava/lang/Object;
.source "CheckInStreakBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 316
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$2;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar$2;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/checkin/CheckInStreakBar;->access$102(Lcom/narvii/checkin/CheckInStreakBar;F)F

    .line 320
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$2;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
