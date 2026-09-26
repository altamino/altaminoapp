.class Lcom/narvii/widget/RankingTitleView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/RankingTitleView$4;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f11001d

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/narvii/widget/RankingTitleView;->badgeSmall:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->a(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 42
    .line 43
    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {p1}, Lcom/narvii/widget/RankingTitleView;->a(Lcom/narvii/widget/RankingTitleView;)Lcom/narvii/util/ranking/RankingService;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 55
    .line 56
    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/widget/RankingTitleView;->e(Lcom/narvii/widget/RankingTitleView;Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    const v0, 0x7f010017

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 85
    .line 86
    .line 87
    const v1, 0x7f080852

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/widget/RankingTitleView;->badgeAnimate:Landroid/widget/ImageView;

    .line 106
    .line 107
    const/16 v0, 0x8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 113
    .line 114
    iget-object v0, p1, Lcom/narvii/widget/RankingTitleView$4;->val$onAnimListener:Lcom/narvii/widget/RankingTitleView$OnAnimListener;

    .line 115
    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    iget p1, p1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, p1}, Lcom/narvii/widget/RankingTitleView$OnAnimListener;->onLevelChanged(I)V

    .line 122
    .line 123
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 124
    .line 125
    iget-object v0, p1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 126
    .line 127
    iget p1, p1, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lcom/narvii/widget/RankingTitleView;->getMaxReputation(I)I

    .line 131
    move-result p1

    .line 132
    const/4 v0, 0x2

    .line 133
    .line 134
    new-array v0, v0, [F

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    .line 138
    aput v1, v0, v2

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 141
    .line 142
    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    .line 143
    int-to-float v1, v1

    .line 144
    const/4 v3, 0x1

    .line 145
    .line 146
    aput v1, v0, v3

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 153
    .line 154
    iget-object v3, v1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 155
    .line 156
    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    .line 157
    .line 158
    .line 159
    invoke-static {v3, v2, v1, p1}, Lcom/narvii/widget/RankingTitleView;->c(Lcom/narvii/widget/RankingTitleView;III)I

    .line 160
    move-result v1

    .line 161
    int-to-long v3, v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 167
    .line 168
    iget-object v3, v1, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 169
    .line 170
    iget v1, v1, Lcom/narvii/widget/RankingTitleView$4;->val$newRP:I

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v2, v1, p1}, Lcom/narvii/widget/RankingTitleView;->f(Lcom/narvii/widget/RankingTitleView;III)V

    .line 174
    .line 175
    new-instance v1, Lcom/narvii/widget/RankingTitleView$4$1$1;

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/RankingTitleView$4$1$1;-><init>(Lcom/narvii/widget/RankingTitleView$4$1;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    .line 183
    new-instance p1, Lcom/narvii/widget/RankingTitleView$4$1$2;

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, p0}, Lcom/narvii/widget/RankingTitleView$4$1$2;-><init>(Lcom/narvii/widget/RankingTitleView$4$1;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
