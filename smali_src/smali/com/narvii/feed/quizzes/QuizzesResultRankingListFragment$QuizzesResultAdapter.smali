.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuizzesResultAdapter"
.end annotation


# instance fields
.field private currentResultShown:Z

.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->currentResultShown:Z

    .line 9
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->currentResultShown:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->showBeatResultView(Z)V

    return-void
.end method

.method private isFromFeedDetail()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->F(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method private showBeatResultView(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 47
    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 52
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d068b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a01b8

    .line 17
    .line 18
    .line 19
    const v0, 0x7f120e77

    .line 20
    .line 21
    .line 22
    const v1, 0x7f0a1046

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 35
    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    aput-object v4, v3, v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/widget/VersatileLoaderView;

    .line 56
    .line 57
    const/high16 p3, 0x41200000    # 10.0f

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VersatileLoaderView;->setNewFinalPercentage(F)V

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->isFromFeedDetail()Z

    .line 65
    move-result p2

    .line 66
    .line 67
    .line 68
    const v4, 0x7f0a0c75

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 81
    .line 82
    .line 83
    const v6, 0x7f1201a5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 91
    .line 92
    .line 93
    const v6, 0x7f1212b0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    const v4, 0x7f0a1044

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    check-cast v4, Lcom/narvii/widget/ColorTextView;

    .line 110
    .line 111
    if-eqz v4, :cond_7

    .line 112
    .line 113
    if-eqz p2, :cond_3

    .line 114
    .line 115
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 116
    .line 117
    .line 118
    invoke-static {v5}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    iget v5, v5, Lcom/narvii/model/CurrentQuizzesResult;->highestScore:I

    .line 122
    .line 123
    .line 124
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    move-result-object v5

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_3
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    iget v5, v5, Lcom/narvii/model/CurrentQuizzesResult;->latestScore:I

    .line 135
    .line 136
    .line 137
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    if-eqz p2, :cond_5

    .line 144
    .line 145
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    iget v5, v5, Lcom/narvii/model/CurrentQuizzesResult;->highestMode:I

    .line 152
    .line 153
    if-ne v5, v3, :cond_4

    .line 154
    :goto_2
    move v5, v3

    .line 155
    goto :goto_3

    .line 156
    :cond_4
    move v5, v2

    .line 157
    goto :goto_3

    .line 158
    .line 159
    :cond_5
    iget-object v5, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    iget v5, v5, Lcom/narvii/model/CurrentQuizzesResult;->latestMode:I

    .line 166
    .line 167
    if-ne v5, v3, :cond_4

    .line 168
    goto :goto_2

    .line 169
    .line 170
    :goto_3
    iget-object v6, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 171
    .line 172
    .line 173
    invoke-static {v6}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 174
    move-result-object v7

    .line 175
    .line 176
    iget-boolean v7, v7, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    .line 177
    .line 178
    if-eqz v7, :cond_6

    .line 179
    .line 180
    if-eqz v5, :cond_6

    .line 181
    move v5, v3

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move v5, v2

    .line 184
    .line 185
    .line 186
    :goto_4
    invoke-static {v6, v4, v5}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->X(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/widget/ColorTextView;Z)V

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    check-cast v1, Landroid/widget/TextView;

    .line 193
    .line 194
    iget-object v4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 195
    .line 196
    new-array v5, v3, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 200
    move-result-object v6

    .line 201
    .line 202
    iget v6, v6, Lcom/narvii/model/CurrentQuizzesResult;->highestScore:I

    .line 203
    .line 204
    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    move-result-object v6

    .line 207
    .line 208
    aput-object v6, v5, v2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    new-array v0, v3, [Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v4, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 223
    .line 224
    .line 225
    invoke-static {v4}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 226
    move-result-object v4

    .line 227
    .line 228
    iget v4, v4, Lcom/narvii/model/CurrentQuizzesResult;->latestScore:I

    .line 229
    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v4

    .line 233
    .line 234
    aput-object v4, v0, v2

    .line 235
    .line 236
    .line 237
    const v4, 0x7f120b6a

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    :cond_8
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 244
    .line 245
    .line 246
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 247
    move-result-object p2

    .line 248
    .line 249
    iget p2, p2, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    .line 250
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v0, " ("

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    if-ne p2, v3, :cond_9

    .line 269
    .line 270
    .line 271
    const v5, 0x7f120f94

    .line 272
    goto :goto_5

    .line 273
    .line 274
    .line 275
    :cond_9
    const v5, 0x7f120f96

    .line 276
    .line 277
    :goto_5
    new-array v6, v3, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    move-result-object p2

    .line 282
    .line 283
    aput-object p2, v6, v2

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object p2

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string p2, ")"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object p2

    .line 300
    .line 301
    if-eqz v1, :cond_a

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    :cond_a
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 307
    .line 308
    .line 309
    const v0, 0x7f0a0bda

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    check-cast v0, Landroid/widget/LinearLayout;

    .line 316
    .line 317
    .line 318
    invoke-static {p2, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->G(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Landroid/widget/LinearLayout;)V

    .line 319
    .line 320
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 321
    .line 322
    .line 323
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 324
    move-result-object p2

    .line 325
    .line 326
    .line 327
    const v0, 0x7f0a01ba

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    move-result-object p2

    .line 332
    .line 333
    check-cast p2, Landroid/widget/TextView;

    .line 334
    .line 335
    if-eqz p2, :cond_b

    .line 336
    .line 337
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 338
    .line 339
    new-array v1, v3, [Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 343
    move-result-object v3

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/narvii/model/CurrentQuizzesResult;->getCurBeatRate()I

    .line 347
    move-result v3

    .line 348
    .line 349
    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object v3

    .line 352
    .line 353
    aput-object v3, v1, v2

    .line 354
    .line 355
    .line 356
    const v3, 0x7f120fa6

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    :cond_b
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 366
    .line 367
    .line 368
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 369
    move-result-object p2

    .line 370
    .line 371
    .line 372
    const v0, 0x7f0a01b9

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object p2

    .line 377
    .line 378
    check-cast p2, Landroid/widget/TextView;

    .line 379
    .line 380
    if-eqz p2, :cond_c

    .line 381
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 388
    .line 389
    .line 390
    invoke-static {v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 391
    move-result-object v1

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/narvii/model/CurrentQuizzesResult;->getCurBeatRate()I

    .line 395
    move-result v1

    .line 396
    .line 397
    .line 398
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 399
    move-result-object v1

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v1, "%"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    .line 413
    .line 414
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    :cond_c
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 418
    move-result-object p2

    .line 419
    .line 420
    check-cast p2, Lcom/narvii/widget/VersatileLoaderView;

    .line 421
    .line 422
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 423
    .line 424
    .line 425
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 426
    move-result-object p3

    .line 427
    .line 428
    .line 429
    invoke-virtual {p3}, Lcom/narvii/model/CurrentQuizzesResult;->getCurBeatRate()I

    .line 430
    move-result p3

    .line 431
    .line 432
    iget-boolean v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->currentResultShown:Z

    .line 433
    .line 434
    if-nez v0, :cond_d

    .line 435
    int-to-float p3, p3

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VersatileLoaderView;->setNewFinalPercentage(F)V

    .line 439
    .line 440
    new-instance p3, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;

    .line 441
    .line 442
    .line 443
    invoke-direct {p3, p0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;-><init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VersatileLoaderView;->setStateChangeListener(Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;)V

    .line 447
    goto :goto_6

    .line 448
    :cond_d
    int-to-float p3, p3

    .line 449
    .line 450
    .line 451
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VersatileLoaderView;->setToFinalFrame(F)V

    .line 452
    .line 453
    iget-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 454
    .line 455
    .line 456
    invoke-static {p2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 457
    move-result-object p2

    .line 458
    .line 459
    .line 460
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    invoke-direct {p0, v2}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->showBeatResultView(Z)V

    .line 464
    :goto_6
    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
