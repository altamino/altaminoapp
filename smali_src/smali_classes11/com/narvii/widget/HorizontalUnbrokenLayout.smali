.class public Lcom/narvii/widget/HorizontalUnbrokenLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final COUNT_MAX:I = 0x5


# instance fields
.field private adapter:Lcom/narvii/list/NVArrayAdapter;

.field private isRtl:Z

.field private memberCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    .line 7
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x1

    .line 10
    sub-int/2addr p2, p3

    .line 11
    const/4 p4, 0x0

    .line 12
    move p5, p4

    .line 13
    move v0, p5

    .line 14
    move v1, v0

    .line 15
    .line 16
    :goto_0
    const/high16 v2, 0x40800000    # 4.0f

    .line 17
    .line 18
    if-ltz p2, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v4

    .line 31
    sub-int/2addr v4, p3

    .line 32
    .line 33
    if-ne p2, v4, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    move-result v1

    .line 44
    .line 45
    mul-int/lit8 v1, v1, 0x3

    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr v1, v2

    .line 48
    :goto_1
    int-to-float v4, p5

    .line 49
    add-float/2addr v4, v1

    .line 50
    int-to-float v1, p1

    .line 51
    .line 52
    cmpl-float v1, v4, v1

    .line 53
    .line 54
    if-ltz v1, :cond_1

    .line 55
    move v1, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    float-to-int p5, v4

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    add-int/lit8 p2, p2, -0x1

    .line 62
    move v1, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_2
    const/4 p2, 0x5

    .line 65
    .line 66
    if-gt v0, p2, :cond_3

    .line 67
    int-to-float p2, p5

    .line 68
    .line 69
    mul-int/lit8 v3, v1, 0x3

    .line 70
    int-to-float v3, v3

    .line 71
    div-float/2addr v3, v2

    .line 72
    add-float/2addr p2, v3

    .line 73
    int-to-float v3, p1

    .line 74
    .line 75
    cmpg-float p2, p2, v3

    .line 76
    .line 77
    if-gez p2, :cond_3

    .line 78
    move p2, p3

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    move p2, p4

    .line 81
    .line 82
    :goto_3
    iget-boolean v3, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 88
    move-result p1

    .line 89
    add-int/2addr p1, p5

    .line 90
    goto :goto_4

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 94
    move-result v3

    .line 95
    add-int/2addr v3, p1

    .line 96
    .line 97
    sub-int p1, v3, p5

    .line 98
    .line 99
    :goto_4
    if-eqz p2, :cond_5

    .line 100
    int-to-float p1, p1

    .line 101
    .line 102
    mul-int/lit8 v1, v1, 0x3

    .line 103
    int-to-float p5, v1

    .line 104
    div-float/2addr p5, v2

    .line 105
    add-float/2addr p1, p5

    .line 106
    float-to-int p1, p1

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 110
    move-result p5

    .line 111
    move v1, p4

    .line 112
    .line 113
    :goto_5
    add-int/lit8 v3, v0, -0x1

    .line 114
    .line 115
    if-ge v1, v3, :cond_9

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 119
    move-result v3

    .line 120
    .line 121
    if-le v0, v3, :cond_6

    .line 122
    return-void

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    iget-boolean v4, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 134
    move-result v4

    .line 135
    .line 136
    sub-int v4, p1, v4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 140
    move-result v5

    .line 141
    add-int/2addr v5, p5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4, p5, p1, v5}, Landroid/view/View;->layout(IIII)V

    .line 145
    goto :goto_6

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 149
    move-result v4

    .line 150
    add-int/2addr v4, p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 154
    move-result v5

    .line 155
    add-int/2addr v5, p5

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, p1, p5, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 159
    .line 160
    .line 161
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    move-result v3

    .line 163
    .line 164
    mul-int/lit8 v3, v3, 0x3

    .line 165
    int-to-float v3, v3

    .line 166
    div-float/2addr v3, v2

    .line 167
    float-to-int v3, v3

    .line 168
    .line 169
    iget-boolean v4, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    .line 170
    .line 171
    if-eqz v4, :cond_8

    .line 172
    sub-int/2addr p1, v3

    .line 173
    goto :goto_7

    .line 174
    :cond_8
    add-int/2addr p1, v3

    .line 175
    .line 176
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto :goto_5

    .line 178
    .line 179
    .line 180
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 181
    move-result v0

    .line 182
    sub-int/2addr v0, p3

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 186
    move-result-object p3

    .line 187
    .line 188
    if-eqz p3, :cond_c

    .line 189
    .line 190
    if-eqz p2, :cond_a

    .line 191
    .line 192
    const/16 p4, 0x8

    .line 193
    .line 194
    .line 195
    :cond_a
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    iget-boolean p2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->isRtl:Z

    .line 198
    .line 199
    if-eqz p2, :cond_b

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 203
    move-result p2

    .line 204
    .line 205
    sub-int p2, p1, p2

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 209
    move-result p4

    .line 210
    add-int/2addr p4, p5

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p2, p5, p1, p4}, Landroid/view/View;->layout(IIII)V

    .line 214
    goto :goto_8

    .line 215
    .line 216
    .line 217
    :cond_b
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 218
    move-result p2

    .line 219
    add-int/2addr p2, p1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 223
    move-result p4

    .line 224
    add-int/2addr p4, p5

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3, p1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 228
    :cond_c
    :goto_8
    return-void
.end method

.method public setAdapter(Lcom/narvii/list/NVArrayAdapter;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->memberCount:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->updateChildViews()V

    .line 8
    return-void
.end method

.method public updateChildViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-le v2, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    .line 32
    :goto_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/HorizontalUnbrokenLayout;->adapter:Lcom/narvii/list/NVArrayAdapter;

    .line 38
    .line 39
    .line 40
    invoke-interface {v3, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    const v2, 0x7f0d03b8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method
