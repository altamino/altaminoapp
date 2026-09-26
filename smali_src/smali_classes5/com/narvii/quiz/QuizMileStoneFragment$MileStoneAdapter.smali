.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MileStoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final EDGE_PLACEHOLDER:I = 0x0

.field public static final NORMAL_MILESTONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method

.method private atEdge(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->getItemCount()I

    .line 7
    move-result v1

    .line 8
    sub-int/2addr v1, v0

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    return v0
.end method

.method private showLeftBar(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showRightBar(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->A(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x2

    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->atEdge(I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-gt p2, v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    if-ne v0, p2, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->s(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move v0, v1

    .line 39
    .line 40
    :goto_1
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    move v5, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move v5, v4

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 62
    .line 63
    iget v3, v3, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    goto :goto_3

    .line 67
    .line 68
    .line 69
    :cond_3
    const v3, -0xe7e7e8

    .line 70
    .line 71
    :goto_3
    iget-object v5, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    move v0, v2

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    move v0, v4

    .line 82
    .line 83
    .line 84
    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 90
    move-result v0

    .line 91
    add-int/2addr v0, v1

    .line 92
    .line 93
    if-ne p2, v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->r(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    move v0, v1

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    move v0, v2

    .line 105
    .line 106
    :goto_5
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    .line 111
    const v0, 0x7f080598

    .line 112
    goto :goto_6

    .line 113
    .line 114
    .line 115
    :cond_6
    const v0, 0x7f080596

    .line 116
    .line 117
    .line 118
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 121
    .line 122
    const-string v3, "currentQuestion"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 126
    move-result v0

    .line 127
    .line 128
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 132
    .line 133
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 134
    .line 135
    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 139
    move-result v5

    .line 140
    add-int/2addr v5, v1

    .line 141
    const/4 v6, 0x4

    .line 142
    .line 143
    if-ne p2, v5, :cond_8

    .line 144
    .line 145
    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    iget-boolean v5, v5, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    .line 152
    .line 153
    if-eqz v5, :cond_7

    .line 154
    move v5, v6

    .line 155
    goto :goto_7

    .line 156
    :cond_7
    move v5, v2

    .line 157
    goto :goto_7

    .line 158
    :cond_8
    move v5, v4

    .line 159
    .line 160
    .line 161
    :goto_7
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->w(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 169
    move-result v5

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setMileStoneColor(I)V

    .line 173
    .line 174
    iget-object v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 175
    .line 176
    const-string v5, "account"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    iget-object v5, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v3}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setUser(Lcom/narvii/model/User;)V

    .line 192
    .line 193
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 194
    const/4 v5, 0x0

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    add-int/2addr v0, v1

    .line 199
    .line 200
    if-ne p2, v0, :cond_9

    .line 201
    .line 202
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->o(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    .line 206
    move-result v0

    .line 207
    .line 208
    if-nez v0, :cond_9

    .line 209
    .line 210
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1}, Lcom/narvii/quiz/QuizMileStoneFragment;->D(Lcom/narvii/quiz/QuizMileStoneFragment;Z)V

    .line 219
    .line 220
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    .line 229
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;)V

    .line 233
    .line 234
    const-wide/16 v3, 0x12c

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 238
    .line 239
    :cond_9
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarLeft:Landroid/view/View;

    .line 240
    .line 241
    .line 242
    invoke-direct {p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->showLeftBar(I)Z

    .line 243
    move-result v1

    .line 244
    .line 245
    if-eqz v1, :cond_a

    .line 246
    move v1, v2

    .line 247
    goto :goto_8

    .line 248
    :cond_a
    move v1, v6

    .line 249
    .line 250
    .line 251
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarRight:Landroid/view/View;

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->showRightBar(I)Z

    .line 257
    move-result p2

    .line 258
    .line 259
    if-eqz p2, :cond_b

    .line 260
    goto :goto_9

    .line 261
    :cond_b
    move v2, v6

    .line 262
    .line 263
    .line 264
    :goto_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    move-result-object p2

    .line 271
    .line 272
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->x(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 276
    move-result v0

    .line 277
    .line 278
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    .line 280
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .line 285
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 286
    .line 287
    .line 288
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->q(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 289
    :cond_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-eq p2, v1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0d067a

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/view/View;)V

    .line 33
    return-object p2

    .line 34
    .line 35
    :cond_1
    new-instance p1, Landroid/view/View;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/quiz/QuizMileStoneFragment;->y(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/view/View;)V

    .line 66
    return-object p2
.end method
