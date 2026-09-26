.class Lcom/narvii/checkin/CheckInStreakBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInStreakBar;->c(Lcom/narvii/checkin/CheckInStreakBar;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    const v1, 0x7f0a083f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f0a06d5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    .line 48
    const v3, 0x7f0803fa

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 54
    .line 55
    new-instance v3, Lcom/narvii/util/ScaleBounceHelper;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    sget-object v5, Lcom/narvii/checkin/CheckInStreakBar;->scaleArray:[F

    .line 62
    .line 63
    sget-object v6, Lcom/narvii/checkin/CheckInStreakBar;->timeArray:[I

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4, v1, v5, v6}, Lcom/narvii/util/ScaleBounceHelper;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3}, Lcom/narvii/checkin/CheckInStreakBar;->e(Lcom/narvii/checkin/CheckInStreakBar;Lcom/narvii/util/ScaleBounceHelper;)V

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/narvii/checkin/CheckInStreakBar;->b(Lcom/narvii/checkin/CheckInStreakBar;)Lcom/narvii/util/ScaleBounceHelper;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/narvii/util/ScaleBounceHelper;->playSeq()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a0a1b

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/checkin/CheckInStreakBar$3;->this$0:Lcom/narvii/checkin/CheckInStreakBar;

    .line 91
    .line 92
    const/16 v1, 0xc8

    .line 93
    .line 94
    .line 95
    invoke-static {v0, p1, v1}, Lcom/narvii/checkin/CheckInStreakBar;->f(Lcom/narvii/checkin/CheckInStreakBar;Landroid/view/View;I)V

    .line 96
    return-void
.end method
