.class public Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final POS_BOTTOM:I = 0x2

.field public static final POS_MIDDLE:I = 0x1

.field public static final POS_TOP:I


# instance fields
.field accountInfoLayout:Landroid/view/View;

.field private curPos:I

.field muteIndicator:Landroid/view/View;

.field topOffset:Landroid/view/View;

.field tvNickname:Landroid/widget/TextView;

.field volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

.field volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0020

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0edb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->topOffset:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0fec

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0feb

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0051

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->accountInfoLayout:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a015b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->muteIndicator:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a09f9

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 5

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->topOffset:Landroid/view/View;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    const/4 v4, 0x2

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    .line 30
    .line 31
    if-ne v1, v4, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x51

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    const/16 v1, 0x31

    .line 37
    .line 38
    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    .line 41
    .line 42
    if-ne p1, v4, :cond_3

    .line 43
    move v1, v3

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v1, v2

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    .line 51
    .line 52
    if-ne p1, v4, :cond_4

    .line 53
    move v2, v3

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public setStatus(ZZLjava/lang/String;IZZ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->muteIndicator:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    move p1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    .line 18
    int-to-float p2, p4

    .line 19
    .line 20
    const/high16 p4, 0x40800000    # 4.0f

    .line 21
    div-float/2addr p2, p4

    .line 22
    const/4 p4, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorTop:Lcom/narvii/widget/VolumeIndicator;

    .line 33
    const/4 p2, 0x2

    .line 34
    .line 35
    if-eqz p5, :cond_1

    .line 36
    .line 37
    iget p4, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    .line 38
    .line 39
    if-ne p4, p2, :cond_1

    .line 40
    move p4, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p4, v1

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->volumeIndicatorBottom:Lcom/narvii/widget/VolumeIndicator;

    .line 48
    .line 49
    if-eqz p5, :cond_2

    .line 50
    .line 51
    iget p4, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->curPos:I

    .line 52
    .line 53
    if-eq p4, p2, :cond_2

    .line 54
    move v1, v2

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 76
    const/4 p2, 0x0

    .line 77
    .line 78
    if-eqz p6, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 88
    move-result p1

    .line 89
    .line 90
    const/high16 p3, 0x41000000    # 8.0f

    .line 91
    .line 92
    .line 93
    const p4, 0x7f0803bd

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object p5

    .line 102
    .line 103
    .line 104
    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 105
    move-result-object p4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2, p2, p4, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 118
    move-result p2

    .line 119
    float-to-int p2, p2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object p5

    .line 130
    .line 131
    .line 132
    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 133
    move-result-object p4

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p4, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 146
    move-result p2

    .line 147
    float-to-int p2, p2

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 151
    goto :goto_2

    .line 152
    .line 153
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->tvNickname:Landroid/widget/TextView;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_2
    return-void
.end method
