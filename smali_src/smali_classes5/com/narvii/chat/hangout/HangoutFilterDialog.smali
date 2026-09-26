.class public final Lcom/narvii/chat/hangout/HangoutFilterDialog;
.super Lcom/narvii/util/dialog/PopupBubbleDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final item1:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final item2:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final item3:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d035d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0a074f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "findViewById(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item1:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0750

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item2:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a0751

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    iput-object v2, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item3:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final getItem1()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item1:Landroid/view/View;

    return-object v0
.end method

.method public final getItem2()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item2:Landroid/view/View;

    return-object v0
.end method

.method public final getItem3()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->item3:Landroid/view/View;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a074f

    .line 23
    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 36
    goto :goto_3

    .line 37
    .line 38
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v1

    .line 44
    .line 45
    .line 46
    const v2, 0x7f0a0750

    .line 47
    .line 48
    if-ne v1, v2, :cond_6

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 63
    goto :goto_3

    .line 64
    .line 65
    .line 66
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0a0751

    .line 71
    .line 72
    if-ne v0, v1, :cond_9

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    const/4 v1, 0x2

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1, p1}, Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;->onItemClick(ILandroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 84
    :cond_9
    :goto_3
    return-void
.end method

.method protected popupBubbleLayout()I
    .locals 1

    const v0, 0x7f0d01b4

    return v0
.end method

.method public final setOnItemClickListener(Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutFilterDialog;->onItemClickListener:Lcom/narvii/chat/hangout/HangoutFilterDialog$OnItemClickListener;

    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 11
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "null cannot be cast to non-null type android.widget.AbsoluteLayout.LayoutParams"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    const-string v3, "null cannot be cast to non-null type android.view.View"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v2, Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v3

    .line 46
    .line 47
    const/high16 v4, -0x80000000

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    move-result v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result v5

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    move-result v2

    .line 69
    .line 70
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    div-int/lit8 v4, v2, 0x2

    .line 73
    sub-int/2addr v3, v4

    .line 74
    .line 75
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    add-int/2addr v5, v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 80
    move-result v4

    .line 81
    int-to-float v4, v4

    .line 82
    .line 83
    .line 84
    const v6, 0x3f19999a    # 0.6f

    .line 85
    mul-float/2addr v4, v6

    .line 86
    float-to-int v4, v4

    .line 87
    .line 88
    sub-int v3, v4, v3

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 92
    move-result v3

    .line 93
    sub-int/2addr v4, v5

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 97
    move-result v4

    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x1

    .line 100
    .line 101
    if-ge v3, v4, :cond_0

    .line 102
    move v3, v6

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move v3, v5

    .line 105
    .line 106
    :goto_0
    if-eqz v3, :cond_1

    .line 107
    .line 108
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 109
    sub-int/2addr v4, v2

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    :goto_1
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    move-result v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 122
    move-result v7

    .line 123
    .line 124
    div-int/lit8 v8, v2, 0x2

    .line 125
    sub-int/2addr v7, v8

    .line 126
    .line 127
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 131
    move-result v9

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 135
    move-result v10

    .line 136
    .line 137
    div-int/lit8 v10, v10, 0x2

    .line 138
    .line 139
    if-ge v9, v10, :cond_2

    .line 140
    .line 141
    if-lez v8, :cond_2

    .line 142
    .line 143
    div-int/lit8 v8, v8, 0x4

    .line 144
    .line 145
    .line 146
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 147
    move-result v7

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 151
    move-result v8

    .line 152
    .line 153
    iget v9, p1, Landroid/graphics/Rect;->right:I

    .line 154
    sub-int/2addr v8, v9

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 158
    move-result v9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 162
    move-result v10

    .line 163
    .line 164
    div-int/lit8 v10, v10, 0x2

    .line 165
    .line 166
    if-le v9, v10, :cond_3

    .line 167
    .line 168
    if-lez v8, :cond_3

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v1

    .line 173
    .line 174
    div-int/lit8 v8, v8, 0x4

    .line 175
    sub-int/2addr v1, v8

    .line 176
    sub-int/2addr v1, v2

    .line 177
    .line 178
    .line 179
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 180
    move-result v7

    .line 181
    .line 182
    :cond_3
    iput v7, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 183
    .line 184
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 185
    .line 186
    iget-object v1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 195
    .line 196
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 197
    .line 198
    xor-int/lit8 v1, v3, 0x1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 202
    move-result p1

    .line 203
    sub-int/2addr p1, v7

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    .line 207
    return-void
.end method
