.class public final Lcom/narvii/topic/widgets/GeneralTopicCard;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIN_ONLINE_MEMBERS:I = 0x7fffffff


# instance fields
.field private final greenOval$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isShownOnlineInfo:Z

.field private isShownSubscribeTag:Z

.field private final onlineMemberView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storyCover$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/topic/widgets/GeneralTopicCard;->Companion:Lcom/narvii/topic/widgets/GeneralTopicCard$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0a070d

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lw7/m;

    const p1, 0x7f0a0a5a

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lw7/m;

    const p1, 0x7f0a0630

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lw7/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a070d

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lw7/m;

    const p1, 0x7f0a0a5a

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lw7/m;

    const p1, 0x7f0a0630

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lw7/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0a070d

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lw7/m;

    const p1, 0x7f0a0a5a

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lw7/m;

    const p1, 0x7f0a0630

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->bind(I)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lw7/m;

    return-void
.end method

.method private final getGreenOval()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->greenOval$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getOnlineMemberView()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->onlineMemberView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->storyCover$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/topic/widgets/GeneralTopicCard$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/GeneralTopicCard$bind$1;-><init>(Lcom/narvii/topic/widgets/GeneralTopicCard;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final isShownOnlineInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    return v0
.end method

.method public final isShownSubscribeTag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    return v0
.end method

.method public final setShownOnlineInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    return-void
.end method

.method public final setShownSubscribeTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 6
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_15

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownSubscribeTag:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->showSubscribeTag()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicCardCoverView;->hideSubscribeTag()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getStoryCover()Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/topic/widgets/TopicCardCoverView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 35
    .line 36
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/GeneralTopicCard;->isShownOnlineInfo:Z

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    if-nez v0, :cond_5

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    goto/16 :goto_9

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_5
    iget-object v0, p1, Lcom/narvii/model/story/StoryTopic;->activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    if-eqz v0, :cond_c

    .line 70
    .line 71
    iget v0, v0, Lcom/narvii/model/story/StoryTopic$ActiveInfo;->memberCount:I

    .line 72
    .line 73
    .line 74
    const v4, 0x7fffffff

    .line 75
    .line 76
    if-lt v0, v4, :cond_c

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const-string v1, "#38D89C"

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    :cond_6
    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->activeInfo:Lcom/narvii/model/story/StoryTopic$ActiveInfo;

    .line 94
    .line 95
    iget p1, p1, Lcom/narvii/model/story/StoryTopic$ActiveInfo;->memberCount:I

    .line 96
    .line 97
    .line 98
    const v0, 0x1869f

    .line 99
    .line 100
    if-ltz p1, :cond_7

    .line 101
    .line 102
    if-ge p1, v0, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_7
    if-gt v0, p1, :cond_8

    .line 110
    .line 111
    .line 112
    const v0, 0xf423f

    .line 113
    .line 114
    if-ge p1, v0, :cond_8

    .line 115
    add-int/2addr p1, v2

    .line 116
    .line 117
    .line 118
    const v0, 0x186a0

    .line 119
    div-int/2addr p1, v0

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p1, "00K"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_8
    const-string p1, "1M"

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    if-nez v0, :cond_9

    .line 146
    goto :goto_3

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    new-array v2, v2, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object p1, v2, v3

    .line 155
    .line 156
    .line 157
    const p1, 0x7f120c5b

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    if-nez p1, :cond_a

    .line 171
    goto :goto_4

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    :goto_4
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    if-nez p1, :cond_b

    .line 181
    goto :goto_9

    .line 182
    .line 183
    .line 184
    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    goto :goto_9

    .line 186
    .line 187
    :cond_c
    iget v0, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    .line 188
    .line 189
    if-lez v0, :cond_12

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    const/4 v4, -0x1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    :cond_d
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    if-nez v0, :cond_e

    .line 206
    goto :goto_6

    .line 207
    .line 208
    .line 209
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 210
    move-result-object v4

    .line 211
    .line 212
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->storyCount:I

    .line 213
    .line 214
    if-le p1, v2, :cond_f

    .line 215
    .line 216
    .line 217
    const v5, 0x7f12111c

    .line 218
    goto :goto_5

    .line 219
    .line 220
    .line 221
    :cond_f
    const v5, 0x7f12111b

    .line 222
    .line 223
    :goto_5
    new-array v2, v2, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    aput-object p1, v2, v3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :goto_6
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    if-nez p1, :cond_10

    .line 243
    goto :goto_7

    .line 244
    .line 245
    .line 246
    :cond_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    :goto_7
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    if-nez p1, :cond_11

    .line 253
    goto :goto_9

    .line 254
    .line 255
    .line 256
    :cond_11
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    goto :goto_9

    .line 258
    .line 259
    .line 260
    :cond_12
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getGreenOval()Landroid/view/View;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    if-nez p1, :cond_13

    .line 264
    goto :goto_8

    .line 265
    .line 266
    .line 267
    :cond_13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    :goto_8
    invoke-direct {p0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->getOnlineMemberView()Landroid/widget/TextView;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    if-nez p1, :cond_14

    .line 274
    goto :goto_9

    .line 275
    .line 276
    .line 277
    :cond_14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_15
    :goto_9
    return-void
.end method
