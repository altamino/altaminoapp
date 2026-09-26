.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x8

    .line 9
    int-to-float v0, v0

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    mul-float/2addr v0, v1

    .line 13
    .line 14
    const/high16 v1, 0x41400000    # 12.0f

    .line 15
    div-float/2addr v0, v1

    .line 16
    float-to-double v0, v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 20
    move-result-wide v0

    .line 21
    double-to-int v0, v0

    .line 22
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result p1

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/onlinestatus/LockInfo;

    .line 27
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d05bb

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0632

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/GridLayout;

    .line 21
    .line 22
    mul-int/lit8 v1, p1, 0xc

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    add-int/2addr v1, v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 28
    .line 29
    const/16 v4, 0xc

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p3, v0, v1, v4}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->v(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/onlinestatus/LockInfo;Landroid/widget/GridLayout;II)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a082b

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a01c8

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockBackground(I)Z

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->emptyClickListener:Landroid/view/View$OnClickListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v3

    .line 73
    .line 74
    add-int/lit8 v3, v3, -0x1

    .line 75
    .line 76
    if-lt p1, v3, :cond_2

    .line 77
    .line 78
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v3

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x1

    .line 87
    .line 88
    if-ne p1, v3, :cond_0

    .line 89
    .line 90
    .line 91
    const v3, 0x7f0807e9

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getCount()I

    .line 99
    move-result v3

    .line 100
    .line 101
    add-int/lit8 v3, v3, -0x1

    .line 102
    .line 103
    if-ne p1, v3, :cond_1

    .line 104
    .line 105
    .line 106
    const v3, 0x7f0807e7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_1
    const v3, 0x7f0807e8

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    goto :goto_0

    .line 118
    .line 119
    .line 120
    :cond_2
    const v3, 0x7f0807e6

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    goto :goto_0

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockViews(I)Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    const v1, 0x7f0a06d5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 149
    .line 150
    iget v2, p3, Lcom/narvii/onlinestatus/LockInfo;->iconId:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 154
    .line 155
    .line 156
    const v1, 0x7f0a0e51

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    check-cast v1, Landroid/widget/TextView;

    .line 163
    .line 164
    iget v2, p3, Lcom/narvii/onlinestatus/LockInfo;->textId:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    .line 169
    .line 170
    const v1, 0x7f0a0f2a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    check-cast v0, Landroid/widget/Button;

    .line 177
    .line 178
    iget v1, p3, Lcom/narvii/onlinestatus/LockInfo;->unlockDrawableId:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    .line 183
    iget-object p3, p3, Lcom/narvii/onlinestatus/LockInfo;->onClickListener:Landroid/view/View$OnClickListener;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->isHover(I)Z

    .line 194
    move-result p3

    .line 195
    .line 196
    if-eqz p3, :cond_5

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockViews(I)Z

    .line 200
    move-result p1

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    goto :goto_2

    .line 209
    .line 210
    .line 211
    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    :goto_2
    return-object p2
.end method

.method public isHover(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public showLockBackground(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public showLockViews(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method
