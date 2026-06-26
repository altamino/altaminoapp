.class Lcom/narvii/checkin/CheckInStreakRepairLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CheckInStreakRepairLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInStreakRepairLayout;->startFixAnimation(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInStreakRepairLayout;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->access$002(Lcom/narvii/checkin/CheckInStreakRepairLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 87
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
