.class public Lcom/narvii/widget/FeedBottomLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_ANIMATION_MODE_0:I = 0x0

.field public static final BOTTOM_ANIMATION_MODE_1:I = 0x1

.field public static final BOTTOM_ANIMATION_MODE_2:I = 0x2

.field public static final SSB_MODE_CURATOR:I = 0x2

.field public static final SSB_MODE_HEADLINE_VIEWER:I = 0x3

.field public static final SSB_MODE_LEADER:I = 0x1

.field public static final SSB_MODE_NORMAL_USER:I


# instance fields
.field bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

.field private broadcastView:Landroid/view/View;

.field private broadcastViewHint:Landroid/widget/TextView;

.field private btnHeadlineCommentContainer:Landroid/view/View;

.field private btnHeadlineMoreContainer:Landroid/view/View;

.field private btnHeadlineShareContainer:Landroid/view/View;

.field private btnHeadlineVoteContainer:Landroid/view/View;

.field private displayMode:I

.field private featureView:Landroid/view/View;

.field private featureViewHint:Landroid/widget/TextView;

.field private goNextHint:Landroid/widget/TextView;

.field goNextLeaderIcon:Lcom/narvii/widget/TintButton;

.field private goNextLeaderView:Landroid/view/View;

.field private goNextNomalView:Landroid/view/View;

.field private goNextNormalHint:Landroid/widget/TextView;

.field goNextNormalIcon:Lcom/narvii/widget/TintButton;

.field headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

.field headlineCommentIcon:Lcom/narvii/widget/TintButton;

.field private headlineViewerContainer:Landroid/view/View;

.field healineMoreIcon:Lcom/narvii/widget/TintButton;

.field healineShareIcon:Lcom/narvii/widget/TintButton;

.field private isAnimating:Z

.field private leaderContainer:Landroid/view/View;

.field private likeHint:Landroid/widget/TextView;

.field private modeMenuView:Landroid/view/View;

.field private modeMenuViewHint:Landroid/widget/TextView;

.field private normalUserContainer:Landroid/view/View;

.field private realHeartView:Lcom/narvii/widget/BottomVoteIcon;

.field private saveHint:Landroid/widget/TextView;

.field private saveView:Landroid/view/View;

.field private shareHint:Landroid/widget/TextView;

.field private shareView:Landroid/view/View;

.field private tipHint:Landroid/widget/TextView;

.field private tipView:Landroid/view/View;

.field tvVoteCount:Landroid/widget/TextView;

.field private voteView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FeedBottomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/FeedBottomLayout;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    return-void
.end method


# virtual methods
.method public configureBottomBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipView:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->voteView:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNomalView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderView:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuView:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineCommentContainer:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineVoteContainer:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineShareContainer:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineMoreContainer:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public hideFeatureButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a1002

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a01fa

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareView:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a01fe

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipView:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0201

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->voteView:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a01f9

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveView:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0ffd

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tvVoteCount:Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a01f1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNomalView:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a01f5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuView:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a01ed

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0a01e9

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a01ef

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderView:Landroid/view/View;

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0a01f6

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuViewHint:Landroid/widget/TextView;

    .line 118
    .line 119
    .line 120
    const v0, 0x7f0a01ee

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureViewHint:Landroid/widget/TextView;

    .line 129
    .line 130
    .line 131
    const v0, 0x7f0a01ea

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastViewHint:Landroid/widget/TextView;

    .line 140
    .line 141
    .line 142
    const v0, 0x7f0a01f0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextHint:Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    const v0, 0x7f0a01fb

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    check-cast v0, Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareHint:Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    const v0, 0x7f0a01ff

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    check-cast v0, Landroid/widget/TextView;

    .line 171
    .line 172
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipHint:Landroid/widget/TextView;

    .line 173
    .line 174
    .line 175
    const v0, 0x7f0a01e8

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveHint:Landroid/widget/TextView;

    .line 184
    .line 185
    .line 186
    const v0, 0x7f0a0202

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    check-cast v0, Landroid/widget/TextView;

    .line 193
    .line 194
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->likeHint:Landroid/widget/TextView;

    .line 195
    .line 196
    .line 197
    const v0, 0x7f0a01f2

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    check-cast v0, Landroid/widget/TextView;

    .line 204
    .line 205
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalHint:Landroid/widget/TextView;

    .line 206
    .line 207
    .line 208
    const v0, 0x7f0a0a15

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 215
    .line 216
    .line 217
    const v0, 0x7f0a07ce

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    .line 224
    .line 225
    .line 226
    const v0, 0x7f0a0651

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    .line 233
    .line 234
    .line 235
    const v0, 0x7f0a09f5

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 242
    .line 243
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalIcon:Lcom/narvii/widget/TintButton;

    .line 244
    .line 245
    .line 246
    const v0, 0x7f0a09f4

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 253
    .line 254
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderIcon:Lcom/narvii/widget/TintButton;

    .line 255
    .line 256
    .line 257
    const v0, 0x7f0a064f

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 264
    .line 265
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineCommentIcon:Lcom/narvii/widget/TintButton;

    .line 266
    .line 267
    .line 268
    const v0, 0x7f0a0656

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 275
    .line 276
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->healineShareIcon:Lcom/narvii/widget/TintButton;

    .line 277
    .line 278
    .line 279
    const v0, 0x7f0a0655

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 286
    .line 287
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->healineMoreIcon:Lcom/narvii/widget/TintButton;

    .line 288
    .line 289
    .line 290
    const v0, 0x7f0a0659

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    .line 297
    .line 298
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    .line 299
    .line 300
    .line 301
    const v0, 0x7f0a065b

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineCommentContainer:Landroid/view/View;

    .line 308
    .line 309
    .line 310
    const v0, 0x7f0a065e

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineVoteContainer:Landroid/view/View;

    .line 317
    .line 318
    .line 319
    const v0, 0x7f0a065c

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineMoreContainer:Landroid/view/View;

    .line 326
    .line 327
    .line 328
    const v0, 0x7f0a065d

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineShareContainer:Landroid/view/View;

    .line 335
    return-void
.end method

.method public setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

    return-void
.end method

.method public setBottomLayoutDisplayMode(I)V
    .locals 4

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    const/4 v3, 0x2

    .line 28
    .line 29
    if-ne p1, v3, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x3

    .line 32
    .line 33
    if-ne p1, v2, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    .line 67
    .line 68
    if-ne p1, v2, :cond_3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v0, v1

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_4
    :goto_2
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f060434

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const v1, 0x7f060433

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextHint:Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuViewHint:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->featureViewHint:Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastViewHint:Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->tvVoteCount:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->shareHint:Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->tipHint:Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->saveHint:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalHint:Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->likeHint:Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderIcon:Lcom/narvii/widget/TintButton;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    const v2, 0x7f060436

    .line 77
    .line 78
    .line 79
    const v3, 0x7f060435

    .line 80
    .line 81
    if-nez p1, :cond_1

    .line 82
    move v4, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v4, v2

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalIcon:Lcom/narvii/widget/TintButton;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    move v2, v3

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 108
    .line 109
    if-nez p1, :cond_3

    .line 110
    .line 111
    .line 112
    const v0, 0x7f060437

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_3
    const v0, 0x7f060438

    .line 117
    .line 118
    :goto_2
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineCommentIcon:Lcom/narvii/widget/TintButton;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 130
    .line 131
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->healineShareIcon:Lcom/narvii/widget/TintButton;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->healineMoreIcon:Lcom/narvii/widget/TintButton;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 156
    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    .line 160
    const p1, 0x7f0803c9

    .line 161
    goto :goto_3

    .line 162
    .line 163
    .line 164
    :cond_4
    const p1, 0x7f0803c8

    .line 165
    .line 166
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lcom/narvii/widget/BottomVoteIcon;->setVoteNormalId(I)V

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    .line 172
    .line 173
    .line 174
    const v0, 0x7f0803ca

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/narvii/widget/BottomVoteIcon;->setVotedId(I)V

    .line 178
    return-void
.end method

.method public showTipping(Z)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 7
    .line 8
    xor-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a01fa

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a01fe

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 23
    :cond_0
    return-void
.end method

.method public startLikeAnimation(I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/widget/FeedBottomLayout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/narvii/widget/FeedBottomLayout$1;-><init>(Lcom/narvii/widget/FeedBottomLayout;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 28
    return-void
.end method

.method public updateBottomView(IZII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p4}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteIcon(IZI)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateCommentView(I)V

    .line 7
    return-void
.end method

.method public updateCommentView(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a064e

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    const/4 v2, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 v2, 0x8

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    return-void
.end method

.method public updateVoteCountView(I)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(Ljava/lang/String;)V

    return-void
.end method

.method public updateVoteCountView(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0658

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0ffd

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateVoteIcon(IZI)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0659

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a065a

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    move v2, v3

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    const/4 v3, 0x4

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(I)V

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    const v0, 0x7f0a1002

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 56
    .line 57
    .line 58
    const p1, 0x7f0a1006

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    if-eqz p2, :cond_4

    .line 72
    move v0, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move v0, v2

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move v2, v3

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(I)V

    .line 90
    :cond_6
    :goto_2
    return-void
.end method
