.class public Lcom/narvii/chat/MultiAvatarView;
.super Lcom/narvii/widget/MaskView;
.source "SourceFile"


# instance fields
.field count:I

.field v1:Lcom/narvii/widget/NVImageView;

.field v2:Lcom/narvii/widget/NVImageView;

.field v3:Lcom/narvii/widget/NVImageView;

.field v4:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 7
    return-void
.end method


# virtual methods
.method protected varargs set([Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    array-length v0, p1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 25
    .line 26
    if-eq v1, v4, :cond_3

    .line 27
    .line 28
    if-eq v1, v3, :cond_2

    .line 29
    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    const/4 v5, 0x4

    .line 32
    .line 33
    .line 34
    const v6, 0x7f0d00e3

    .line 35
    .line 36
    if-eq v1, v5, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    const v1, 0x7f0d00e2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    const v1, 0x7f0d00e1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_3
    const v1, 0x7f0d00e0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    :goto_0
    const v0, 0x7f0a06ec

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v1:Lcom/narvii/widget/NVImageView;

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0a06ed

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v2:Lcom/narvii/widget/NVImageView;

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a06ee

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v3:Lcom/narvii/widget/NVImageView;

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a06ef

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v4:Lcom/narvii/widget/NVImageView;

    .line 109
    .line 110
    :cond_4
    iget v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 111
    const/4 v1, 0x0

    .line 112
    .line 113
    if-le v0, v4, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    const v5, 0x7f0604a2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 124
    move-result v0

    .line 125
    .line 126
    iput v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_5
    iput v1, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 130
    :goto_1
    array-length v0, p1

    .line 131
    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v1:Lcom/narvii/widget/NVImageView;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    aget-object v1, p1, v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 142
    :cond_6
    array-length v0, p1

    .line 143
    .line 144
    if-le v0, v4, :cond_7

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v2:Lcom/narvii/widget/NVImageView;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    aget-object v1, p1, v4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 154
    :cond_7
    array-length v0, p1

    .line 155
    .line 156
    if-le v0, v3, :cond_8

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v3:Lcom/narvii/widget/NVImageView;

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    aget-object v1, p1, v3

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 166
    :cond_8
    array-length v0, p1

    .line 167
    .line 168
    if-le v0, v2, :cond_9

    .line 169
    .line 170
    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v4:Lcom/narvii/widget/NVImageView;

    .line 171
    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    aget-object p1, p1, v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 178
    :cond_9
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    new-array p1, p1, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    .line 17
    :goto_0
    return-void
.end method

.method public setAvatars(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    .line 28
    new-array p1, p1, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    .line 32
    :goto_1
    return-void
.end method
