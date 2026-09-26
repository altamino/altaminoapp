.class public Lcom/narvii/prompt/ReputationPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# static fields
.field public static final REPUTATION_GAINED_SHOW_DURATION:I = 0x514


# instance fields
.field public isPopUpHold:Z

.field public isRankingTitleAnimEnd:Z

.field public reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/prompt/ReputationPromptHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/prompt/ReputationPromptHelper;->showReputationGainedView(I)V

    return-void
.end method

.method private showReputationGainedView(I)V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0a0c20

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x1

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    const v5, 0x7f0d069f

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    const v3, 0x7f010037

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    const v5, 0x7f010038

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    const v3, 0x7f0a0bcf

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v3

    .line 81
    move-object v6, v3

    .line 82
    .line 83
    check-cast v6, Lcom/narvii/widget/RankingTitleView;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    const-string v7, "account"

    .line 88
    .line 89
    .line 90
    invoke-interface {v3, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 94
    .line 95
    iget-object v7, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    const-string v8, "ranking"

    .line 98
    .line 99
    .line 100
    invoke-interface {v7, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v7

    .line 102
    .line 103
    check-cast v7, Lcom/narvii/util/ranking/RankingService;

    .line 104
    .line 105
    .line 106
    const v8, 0x7f0a0e9e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v8

    .line 111
    .line 112
    check-cast v8, Landroid/widget/TextView;

    .line 113
    .line 114
    new-instance v12, Lcom/narvii/prompt/ReputationPromptHelper$2;

    .line 115
    .line 116
    .line 117
    invoke-direct {v12, p0, v2, v5, v1}, Lcom/narvii/prompt/ReputationPromptHelper$2;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/ViewGroup;)V

    .line 118
    const/4 v1, 0x0

    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    .line 121
    .line 122
    iput-boolean v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 126
    move-result-object v5

    .line 127
    .line 128
    iget-object v9, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 129
    .line 130
    iget-object v10, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Lcom/narvii/achievements/ReputationGainedHelper;->getLastRP()I

    .line 134
    move-result v10

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    iget v3, v3, Lcom/narvii/model/User;->reputation:I

    .line 141
    .line 142
    new-instance v11, Lcom/narvii/prompt/ReputationPromptHelper$3;

    .line 143
    .line 144
    .line 145
    invoke-direct {v11, p0, v8, v7, v12}, Lcom/narvii/prompt/ReputationPromptHelper$3;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Landroid/widget/TextView;Lcom/narvii/util/ranking/RankingService;Ljava/lang/Runnable;)V

    .line 146
    move-object v7, v5

    .line 147
    move-object v8, v9

    .line 148
    move v9, v10

    .line 149
    move v10, v3

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {v6 .. v11}, Lcom/narvii/widget/RankingTitleView;->setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V

    .line 153
    .line 154
    iget-object v3, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/narvii/achievements/ReputationGainedHelper;->show()V

    .line 158
    .line 159
    .line 160
    const v3, 0x7f0a0c55

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    check-cast v3, Landroid/widget/TextView;

    .line 167
    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string v6, "+"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, " REP"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v5

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    const v3, 0x7f0a0c1f

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    check-cast v3, Landroid/widget/TextView;

    .line 201
    .line 202
    if-le p1, v4, :cond_2

    .line 203
    .line 204
    new-array v4, v4, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    aput-object p1, v4, v1

    .line 211
    .line 212
    .line 213
    const p1, 0x7f120fff

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    goto :goto_0

    .line 219
    .line 220
    .line 221
    :cond_2
    const p1, 0x7f121000

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    const p1, 0x7f0a083f

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    new-instance v0, Lcom/narvii/prompt/ReputationPromptHelper$4;

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, p0, v12}, Lcom/narvii/prompt/ReputationPromptHelper$4;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/achievements/ReputationGainedHelper;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/narvii/achievements/ReputationGainedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object v1, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/achievements/ReputationGainedHelper;->canShowNow()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper;->reputationGainedHelper:Lcom/narvii/achievements/ReputationGainedHelper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/achievements/ReputationGainedHelper;->getGainedRP()I

    .line 42
    move-result v0

    .line 43
    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/prompt/ReputationPromptHelper$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0, v0}, Lcom/narvii/prompt/ReputationPromptHelper$1;-><init>(Lcom/narvii/prompt/ReputationPromptHelper;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 61
    :goto_0
    return-void
.end method
