.class public Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private claimedRep:Landroid/widget/TextView;

.field private data:Lcom/narvii/model/api/ReputationPostResponse;

.field private duration:Landroid/widget/TextView;

.field private loading:Lcom/narvii/widget/SpinningView;

.field private viewers:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->data:Lcom/narvii/model/api/ReputationPostResponse;

    .line 6
    return-void
.end method

.method private setData(Lcom/narvii/model/api/ReputationPostResponse;)V
    .locals 13

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->loading:Lcom/narvii/widget/SpinningView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget v0, p1, Lcom/narvii/model/api/ReputationPostResponse;->duration:I

    .line 16
    .line 17
    mul-int/lit16 v1, v0, 0x3e8

    .line 18
    int-to-long v1, v1

    .line 19
    .line 20
    const/16 v3, 0xe10

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x2

    .line 24
    .line 25
    if-lt v0, v3, :cond_1

    .line 26
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 31
    move-result-wide v7

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 35
    move-result-wide v9

    .line 36
    .line 37
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 41
    move-result-wide v11

    .line 42
    sub-long/2addr v9, v11

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 52
    move-result-wide v11

    .line 53
    sub-long/2addr v0, v11

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 57
    move-result-wide v2

    .line 58
    sub-long/2addr v0, v2

    .line 59
    .line 60
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    const/4 v3, 0x3

    .line 62
    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v7

    .line 68
    .line 69
    aput-object v7, v3, v5

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    aput-object v7, v3, v4

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    aput-object v0, v3, v6

    .line 82
    .line 83
    const-string v0, "%02d:%02d:%02d"

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 94
    move-result-wide v7

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 98
    move-result-wide v0

    .line 99
    .line 100
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 104
    move-result-wide v2

    .line 105
    sub-long/2addr v0, v2

    .line 106
    .line 107
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    new-array v3, v6, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    move-result-object v7

    .line 114
    .line 115
    aput-object v7, v3, v5

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    aput-object v0, v3, v4

    .line 122
    .line 123
    const-string v0, "%02d:%02d"

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->duration:Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->viewers:Landroid/widget/TextView;

    .line 135
    .line 136
    iget v1, p1, Lcom/narvii/model/api/ReputationPostResponse;->participantCount:I

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    new-array v2, v4, [Ljava/lang/Object;

    .line 152
    .line 153
    iget p1, p1, Lcom/narvii/model/api/ReputationPostResponse;->totalReputation:I

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    aput-object p1, v2, v5

    .line 160
    .line 161
    .line 162
    const p1, 0x7f120ffb

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    .line 172
    .line 173
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 174
    .line 175
    new-array v1, v6, [F

    .line 176
    .line 177
    .line 178
    fill-array-data v1, :array_0

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    const-wide/16 v0, 0x1f4

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    .line 191
    .line 192
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 193
    .line 194
    new-array v4, v6, [F

    .line 195
    .line 196
    .line 197
    fill-array-data v4, :array_1

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 201
    move-result-object v2

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    .line 208
    .line 209
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 210
    .line 211
    new-array v5, v6, [F

    .line 212
    .line 213
    .line 214
    fill-array-data v5, :array_2

    .line 215
    .line 216
    .line 217
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    return-void

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    :array_2
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static show(Lcom/narvii/app/NVContext;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-eqz p0, :cond_0

    .line 3
    .line 4
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-eqz p0, :cond_2

    .line 14
    .line 15
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/api/ReputationPostResponse;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0d069d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a0c1d

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/widget/SpinningView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->loading:Lcom/narvii/widget/SpinningView;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a030b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->claimedRep:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    const p1, 0x7f0a04a4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->duration:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    const p1, 0x7f0a0fd3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->viewers:Landroid/widget/TextView;

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0a0237

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Landroid/widget/ImageView;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog$1;-><init>(Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->data:Lcom/narvii/model/api/ReputationPostResponse;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/ReputationClaimDialog;->setData(Lcom/narvii/model/api/ReputationPostResponse;)V

    .line 80
    return-void
.end method
