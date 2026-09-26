.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->d(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->d(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->b(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    .line 59
    move-result v2

    .line 60
    .line 61
    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 62
    sub-int/2addr v2, v3

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->b(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    .line 68
    move-result v3

    .line 69
    .line 70
    iget-object v4, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->b(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    .line 74
    move-result v4

    .line 75
    .line 76
    iget v5, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 77
    sub-int/2addr v4, v5

    .line 78
    int-to-float v4, v4

    .line 79
    .line 80
    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    mul-float/2addr v4, v5

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->b(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    .line 87
    move-result v5

    .line 88
    .line 89
    iget-object v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 90
    .line 91
    .line 92
    invoke-static {v6}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->c(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    .line 93
    move-result v6

    .line 94
    sub-int/2addr v5, v6

    .line 95
    int-to-float v5, v5

    .line 96
    div-float/2addr v4, v5

    .line 97
    .line 98
    iget-object v5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 99
    .line 100
    iget-boolean v5, v5, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method
