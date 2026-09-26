.class public final Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isShow:Z

.field final synthetic $isSubscript:Z

.field final synthetic this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;


# direct methods
.method constructor <init>(ZLcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isShow:Z

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isShow:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$setFollowNotificationState(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->getCheckCanShowTooltip()Le8/a;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    const v1, 0x7f12045c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const/high16 v2, 0x41400000    # 12.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    .line 91
    move-result-object p1

    .line 92
    const/4 v1, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    const-string v1, "#FFFFC700"

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 102
    move-result v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getToolTipHelper$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Lcom/narvii/util/ToolTipHelper;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 132
    .line 133
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$setAnimating$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V

    .line 137
    return-void
.end method
