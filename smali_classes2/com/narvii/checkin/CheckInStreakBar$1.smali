.class Lcom/narvii/checkin/CheckInStreakBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CheckInStreakBar.java"


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

    .line 186
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 190
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInStreakBar;->access$000(Lcom/narvii/checkin/CheckInStreakBar;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 193
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 194
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$1;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
