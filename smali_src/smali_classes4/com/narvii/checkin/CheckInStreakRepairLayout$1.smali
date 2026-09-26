.class Lcom/narvii/checkin/CheckInStreakRepairLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->a(Lcom/narvii/checkin/CheckInStreakRepairLayout;Landroid/animation/AnimatorSet;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/checkin/CheckInStreakRepairLayout;->light:Landroid/view/View;

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->this$0:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/checkin/CheckInStreakRepairLayout;->checked:Landroid/view/View;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakRepairLayout$1;->val$callback:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method
