.class Lcom/narvii/widget/NVDrawableAnimatedView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastFraction:F

.field final synthetic this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

.field final synthetic val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    .line 11
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    .line 14
    .line 15
    cmpl-float v1, v0, p1

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    sub-float p1, v0, p1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 22
    .line 23
    iget v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 24
    mul-float/2addr p1, v1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 29
    .line 30
    iget p1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 31
    mul-float/2addr p1, v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    .line 35
    .line 36
    sub-float v3, v0, v1

    .line 37
    .line 38
    iget-object v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 39
    .line 40
    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 41
    mul-float/2addr v3, v5

    .line 42
    .line 43
    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 44
    const/4 v6, 0x7

    .line 45
    .line 46
    if-ne v5, v6, :cond_3

    .line 47
    .line 48
    cmpg-float v1, v0, v1

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    iget v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    .line 53
    .line 54
    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    check-cast v6, Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 64
    move-result v6

    .line 65
    .line 66
    iget-object v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 67
    .line 68
    iget v8, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 69
    .line 70
    iget v9, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 71
    add-float/2addr v8, v9

    .line 72
    sub-float/2addr v6, v8

    .line 73
    mul-float/2addr v5, v6

    .line 74
    add-float/2addr v1, v5

    .line 75
    .line 76
    iput v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 77
    .line 78
    iget v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    .line 79
    .line 80
    iget v4, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 90
    move-result p1

    .line 91
    .line 92
    iget-object v5, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 93
    .line 94
    iget v6, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 95
    .line 96
    iget v5, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 97
    add-float/2addr v6, v5

    .line 98
    sub-float/2addr p1, v6

    .line 99
    mul-float/2addr v4, p1

    .line 100
    add-float/2addr v1, v4

    .line 101
    .line 102
    iput v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    iget v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    .line 106
    .line 107
    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 111
    move-result-object v6

    .line 112
    .line 113
    check-cast v6, Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 117
    move-result v6

    .line 118
    .line 119
    iget-object v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 120
    .line 121
    iget v8, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 122
    sub-float/2addr v6, v8

    .line 123
    mul-float/2addr v5, v6

    .line 124
    add-float/2addr v1, v5

    .line 125
    .line 126
    iput v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 127
    .line 128
    iget v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 129
    .line 130
    iget v4, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 140
    move-result p1

    .line 141
    .line 142
    iget-object v5, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 143
    .line 144
    iget v5, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 145
    sub-float/2addr p1, v5

    .line 146
    mul-float/2addr v4, p1

    .line 147
    add-float/2addr v1, v4

    .line 148
    .line 149
    iput v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 150
    :cond_3
    :goto_0
    move p1, v3

    .line 151
    .line 152
    :goto_1
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 155
    .line 156
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 157
    .line 158
    if-ne v1, v2, :cond_4

    .line 159
    .line 160
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 161
    sub-float/2addr v1, p1

    .line 162
    .line 163
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/4 v2, 0x2

    .line 166
    .line 167
    if-ne v1, v2, :cond_5

    .line 168
    .line 169
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 170
    add-float/2addr v1, p1

    .line 171
    .line 172
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    const/4 v2, 0x3

    .line 175
    .line 176
    if-ne v1, v2, :cond_6

    .line 177
    .line 178
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 179
    sub-float/2addr v1, p1

    .line 180
    .line 181
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    const/4 v2, 0x4

    .line 184
    .line 185
    if-ne v1, v2, :cond_7

    .line 186
    .line 187
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 188
    add-float/2addr v1, p1

    .line 189
    .line 190
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    const/4 v2, 0x5

    .line 193
    .line 194
    if-ne v1, v2, :cond_8

    .line 195
    .line 196
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 197
    add-float/2addr v1, p1

    .line 198
    .line 199
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    const/4 v2, 0x6

    .line 202
    .line 203
    if-ne v1, v2, :cond_9

    .line 204
    .line 205
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 206
    sub-float/2addr v1, p1

    .line 207
    .line 208
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 209
    .line 210
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 214
    return-void
.end method
