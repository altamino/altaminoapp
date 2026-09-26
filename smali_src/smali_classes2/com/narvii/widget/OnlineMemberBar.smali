.class public final Lcom/narvii/widget/OnlineMemberBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private avatarSize:I

.field private final binding:Lcom/narvii/amino/databinding/OnlineMemberBarBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxAvatarSize:I

.field private memberCount:I

.field private final overlapRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/OnlineMemberBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/OnlineMemberBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    iput-wide p2, p0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x1

    .line 5
    invoke-static {p2, p0, p3}, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/OnlineMemberBarBinding;

    move-result-object p2

    const-string p3, "inflate(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/widget/OnlineMemberBar;->binding:Lcom/narvii/amino/databinding/OnlineMemberBarBinding;

    const/high16 p3, 0x41c00000    # 24.0f

    .line 6
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 9
    iget-object p1, p2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->bar:Lcom/narvii/widget/NVImageView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    return-void
.end method

.method private final getAvatarView(Lcom/narvii/model/User;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d060c

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0f36

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    .line 32
    .line 33
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 45
    return-object p2
.end method


# virtual methods
.method public final getAvatarSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    return v0
.end method

.method public final getFormatedMemberCount()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    .line 3
    .line 4
    const/16 v1, 0x2710

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    const v2, 0xf4240

    .line 23
    .line 24
    if-ge v0, v2, :cond_1

    .line 25
    div-int/2addr v0, v1

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "0K"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    div-int/2addr v0, v2

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "M"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    :goto_0
    return-object v0
.end method

.method public final getMaxAvatarSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    return v0
.end method

.method public final getMemberCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    return v0
.end method

.method public final getOverlapRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    iget-object v2, v0, Lcom/narvii/widget/OnlineMemberBar;->binding:Lcom/narvii/amino/databinding/OnlineMemberBarBinding;

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 9
    .line 10
    iget-object v3, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->onlineTextLayout:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 18
    move-result v4

    .line 19
    .line 20
    const/high16 v5, 0x40400000    # 3.0f

    .line 21
    .line 22
    .line 23
    const v6, 0x7f070425

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-object v4, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->onlineTextLayout:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v7, v7, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    move-result v4

    .line 45
    sub-int/2addr v3, v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 53
    move-result v4

    .line 54
    sub-int/2addr v3, v4

    .line 55
    .line 56
    iget-object v4, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-le v4, v8, :cond_1

    .line 63
    .line 64
    iget-object v4, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    move-result v4

    .line 69
    move v5, v8

    .line 70
    .line 71
    :goto_0
    if-ge v5, v4, :cond_1

    .line 72
    .line 73
    iget-object v6, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object v6

    .line 78
    int-to-double v9, v3

    .line 79
    .line 80
    add-int/lit8 v11, v5, -0x1

    .line 81
    .line 82
    iget v12, v0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    .line 83
    mul-int/2addr v11, v12

    .line 84
    int-to-double v13, v11

    .line 85
    .line 86
    move/from16 p1, v3

    .line 87
    .line 88
    move/from16 p2, v4

    .line 89
    int-to-double v3, v8

    .line 90
    .line 91
    iget-wide v7, v0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    .line 92
    sub-double/2addr v3, v7

    .line 93
    mul-double/2addr v13, v3

    .line 94
    add-double/2addr v9, v13

    .line 95
    double-to-int v3, v9

    .line 96
    add-int/2addr v12, v3

    .line 97
    const/4 v4, 0x0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v3, v4, v12, v1}, Landroid/view/View;->layout(IIII)V

    .line 101
    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    move/from16 v3, p1

    .line 105
    .line 106
    move/from16 v4, p2

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x1

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    move-result v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 117
    move-result v7

    .line 118
    sub-int/2addr v4, v7

    .line 119
    sub-int/2addr v4, v3

    .line 120
    .line 121
    iget-object v7, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->onlineTextLayout:Landroid/widget/RelativeLayout;

    .line 122
    add-int/2addr v3, v4

    .line 123
    const/4 v8, 0x0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v4, v8, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 138
    move-result v3

    .line 139
    add-int/2addr v4, v3

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 147
    move-result v3

    .line 148
    add-int/2addr v4, v3

    .line 149
    .line 150
    iget-object v3, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 154
    move-result v3

    .line 155
    const/4 v5, 0x1

    .line 156
    .line 157
    if-le v3, v5, :cond_1

    .line 158
    .line 159
    iget-object v3, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 163
    move-result v3

    .line 164
    const/4 v5, 0x1

    .line 165
    .line 166
    :goto_1
    if-ge v5, v3, :cond_1

    .line 167
    .line 168
    iget-object v6, v2, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    move-result-object v6

    .line 173
    int-to-double v7, v4

    .line 174
    .line 175
    add-int/lit8 v9, v5, -0x1

    .line 176
    .line 177
    iget v10, v0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    .line 178
    mul-int/2addr v9, v10

    .line 179
    int-to-double v11, v9

    .line 180
    const/4 v9, 0x1

    .line 181
    int-to-double v13, v9

    .line 182
    .line 183
    move/from16 p1, v10

    .line 184
    .line 185
    iget-wide v9, v0, Lcom/narvii/widget/OnlineMemberBar;->overlapRatio:D

    .line 186
    sub-double/2addr v13, v9

    .line 187
    mul-double/2addr v11, v13

    .line 188
    sub-double/2addr v7, v11

    .line 189
    double-to-int v7, v7

    .line 190
    .line 191
    sub-int v8, v7, p1

    .line 192
    const/4 v9, 0x0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v8, v9, v7, v1}, Landroid/view/View;->layout(IIII)V

    .line 196
    .line 197
    add-int/lit8 v5, v5, 0x1

    .line 198
    goto :goto_1

    .line 199
    :cond_1
    return-void
.end method

.method public final setAvatarSize(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/OnlineMemberBar;->avatarSize:I

    return-void
.end method

.method public final setMemberCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    return-void
.end method

.method public final setUserList(Ljava/util/List;I)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/OnlineMemberBar;->binding:Lcom/narvii/amino/databinding/OnlineMemberBarBinding;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/OnlineMemberBar;->memberCount:I

    .line 5
    .line 6
    iget-object v1, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->onlineMemberCount:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/OnlineMemberBar;->getFormatedMemberCount()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    move-object p2, p1

    .line 18
    .line 19
    check-cast p2, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    move-object p2, p1

    .line 36
    .line 37
    check-cast p2, Ljava/util/Collection;

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    if-eqz p2, :cond_6

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    move-result p2

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    goto :goto_5

    .line 48
    .line 49
    :cond_2
    iget p2, p0, Lcom/narvii/widget/OnlineMemberBar;->maxAvatarSize:I

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result v3

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result p2

    .line 58
    .line 59
    :goto_2
    iget-object v3, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v2

    .line 65
    .line 66
    if-le v3, p2, :cond_3

    .line 67
    .line 68
    iget-object v3, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    move-result v4

    .line 73
    sub-int/2addr v4, v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_3
    :goto_3
    if-ge v1, p2, :cond_7

    .line 80
    .line 81
    iget-object v2, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 82
    .line 83
    add-int/lit8 v3, v1, 0x1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/model/User;

    .line 96
    .line 97
    iget-object v2, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    const-string v4, "mainLayout"

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v1, v2}, Lcom/narvii/widget/OnlineMemberBar;->getAvatarView(Lcom/narvii/model/User;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    iget-object v2, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    goto :goto_4

    .line 113
    .line 114
    .line 115
    :cond_4
    const v4, 0x7f0a0f36

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 122
    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Lcom/narvii/model/User;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 133
    :cond_5
    :goto_4
    move v1, v3

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_6
    :goto_5
    iget-object p1, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 140
    move-result p1

    .line 141
    .line 142
    if-le p1, v2, :cond_7

    .line 143
    .line 144
    iget-object p1, v0, Lcom/narvii/amino/databinding/OnlineMemberBarBinding;->mainLayout:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 148
    move-result p2

    .line 149
    sub-int/2addr p2, v2

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    return-void
.end method
