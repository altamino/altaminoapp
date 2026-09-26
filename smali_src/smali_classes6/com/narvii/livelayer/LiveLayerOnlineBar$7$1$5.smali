.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

.field final synthetic val$avatarSpace:I

.field final synthetic val$finalLessThanMaxCount:Z


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$finalLessThanMaxCount:Z

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$avatarSpace:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 19
    .line 20
    iget v3, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 21
    .line 22
    add-int/lit8 v4, v3, -0x1

    .line 23
    .line 24
    if-ge v0, v4, :cond_2

    .line 25
    .line 26
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 27
    .line 28
    add-int/lit8 v3, v3, -0x1

    .line 29
    sub-int/2addr v3, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v3

    .line 38
    int-to-float v4, p1

    .line 39
    .line 40
    iget-object v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 43
    .line 44
    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 45
    .line 46
    iget v6, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 47
    int-to-float v6, v6

    .line 48
    .line 49
    iget v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 50
    .line 51
    const/high16 v7, 0x3f800000    # 1.0f

    .line 52
    .line 53
    sub-float v5, v7, v5

    .line 54
    mul-float/2addr v6, v5

    .line 55
    int-to-float v5, v1

    .line 56
    mul-float/2addr v6, v5

    .line 57
    add-float/2addr v6, v4

    .line 58
    float-to-int v5, v6

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v5}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$finalLessThanMaxCount:Z

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 77
    .line 78
    iget v3, v3, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 79
    .line 80
    add-int/lit8 v3, v3, -0x2

    .line 81
    .line 82
    if-ne v0, v3, :cond_1

    .line 83
    .line 84
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$avatarSpace:I

    .line 85
    int-to-float v5, v3

    .line 86
    .line 87
    .line 88
    const v6, 0x3e99999a    # 0.3f

    .line 89
    mul-float/2addr v5, v6

    .line 90
    .line 91
    cmpg-float v4, v4, v5

    .line 92
    .line 93
    if-gez v4, :cond_0

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_0
    sub-int v4, v3, p1

    .line 97
    int-to-float v4, v4

    .line 98
    int-to-float v3, v3

    .line 99
    .line 100
    .line 101
    const v5, 0x3f333333    # 0.7f

    .line 102
    mul-float/2addr v3, v5

    .line 103
    .line 104
    div-float v7, v4, v3

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 108
    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_2
    if-lez v3, :cond_3

    .line 113
    .line 114
    :try_start_0
    iget-object v0, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 115
    .line 116
    add-int/lit8 v3, v3, -0x1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    const v1, 0x7f0a0f36

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 138
    .line 139
    iget v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    .line 140
    .line 141
    sget v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    :catch_0
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$finalLessThanMaxCount:Z

    .line 147
    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->val$avatarSpace:I

    .line 163
    .line 164
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 167
    .line 168
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 169
    .line 170
    iget v3, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 171
    .line 172
    add-int/lit8 v3, v3, -0x2

    .line 173
    mul-int/2addr v1, v3

    .line 174
    add-int/2addr p1, v1

    .line 175
    .line 176
    iget v1, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 177
    add-int/2addr p1, v1

    .line 178
    .line 179
    div-int/lit8 v1, v1, 0x2

    .line 180
    sub-int/2addr p1, v1

    .line 181
    .line 182
    .line 183
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 184
    .line 185
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;->this$2:Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    :cond_4
    return-void
.end method
