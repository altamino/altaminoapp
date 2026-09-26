.class Lcom/narvii/scene/quiz/SceneQuizView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->showAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;

.field final synthetic val$answerItem:Landroid/view/View;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_9

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/ScaleBounceAnimator;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 28
    .line 29
    sget-object v3, Lcom/narvii/scene/quiz/SceneQuizView;->scaleArray:[F

    .line 30
    .line 31
    sget-object v4, Lcom/narvii/scene/quiz/SceneQuizView;->timeArray:[I

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/util/ScaleBounceAnimator;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    if-eqz v1, :cond_7

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    const/4 v3, 0x2

    .line 44
    .line 45
    if-eq v1, v3, :cond_3

    .line 46
    const/4 v3, 0x3

    .line 47
    .line 48
    if-eq v1, v3, :cond_1

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v3

    .line 65
    int-to-float v3, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v3, v2

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    move v3, v2

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_4
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 92
    move-result v3

    .line 93
    int-to-float v3, v3

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_5
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 108
    move-result v3

    .line 109
    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 126
    move-result v2

    .line 127
    int-to-float v2, v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 131
    goto :goto_3

    .line 132
    .line 133
    :cond_7
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 137
    move-result v3

    .line 138
    .line 139
    if-eqz v3, :cond_8

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_8
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 146
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    .line 149
    .line 150
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 156
    move-result v2

    .line 157
    int-to-float v2, v2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 161
    .line 162
    :goto_3
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$10$1;

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$10$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView$10;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/narvii/util/ScaleBounceAnimator;->playSeq(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    .line 170
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 171
    .line 172
    const/16 v1, 0xd0

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;I)V

    .line 176
    .line 177
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    .line 178
    const/4 v1, 0x0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void
.end method
