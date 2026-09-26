.class Lcom/narvii/checkin/CheckInStreakBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInStreakBar;->viewFadeOut(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInStreakBar;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/checkin/CheckInStreakBar;->a(Lcom/narvii/checkin/CheckInStreakBar;)Landroid/animation/Animator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void
.end method
