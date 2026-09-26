.class public Lcom/narvii/widget/MoodView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final AMINO_PLUS_SCALE_FACOTR:F = 1.15f

.field private static final MAX_SCALE:F = 1.2f

.field private static final MAX_SHAKE_SCALE:F = 4.0f

.field private static final MAX_TIME_SCALE:F = 5.0f

.field public static final SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field public static final borderColorDefault:I

.field public static final borderColorMembership:I

.field private static final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/widget/MoodView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static sensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private anim:Z

.field private avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

.field private bg1:Landroid/graphics/drawable/Drawable;

.field private bg2:Landroid/graphics/drawable/Drawable;

.field private bg3:Landroid/graphics/drawable/Drawable;

.field private cd1:Landroid/graphics/drawable/Drawable;

.field private cd2:Landroid/graphics/drawable/Drawable;

.field private cd3:Landroid/graphics/drawable/Drawable;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private curLoadingUser:Lcom/narvii/model/User;

.field private currentScale:F

.field private currentTime:F

.field private cx:F

.field private cy:F

.field private d1:Landroid/graphics/drawable/Drawable;

.field private d2:Landroid/graphics/drawable/Drawable;

.field private d3:Landroid/graphics/drawable/Drawable;

.field private emojioneView:Lcom/narvii/widget/EmojionePlusView;

.field private initScaleX:F

.field private initScaleY:F

.field private pendingScale:F

.field private prevTime:J

.field private rect:Landroid/graphics/Rect;

.field private regedRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/widget/MoodView;",
            ">;"
        }
    .end annotation
.end field

.field private rnd:Ljava/util/Random;

.field private shakeScaleX:F

.field private shakeScaleY:F

.field private sticker:Lcom/narvii/model/Sticker;

.field private stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

.field private timeScale:F

.field private xmult:F

.field private xtmult:D

.field private xtoffset:J

.field private ymult:F

.field private ytmult:D

.field private ytoffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/MoodView$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/widget/MoodView$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/MoodView;->SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/widget/MoodView$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/widget/MoodView$2;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/widget/MoodView;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 22
    .line 23
    const-string v0, "#ffb935"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    sput v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    .line 30
    .line 31
    const-string v0, "#7ccdf2"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    sput v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 7
    .line 8
    iput p2, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 9
    .line 10
    iput p2, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 13
    .line 14
    iput p2, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-string v0, "avatarFrameLoader"

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0807f7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    const p2, 0x7f0807f6

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0807f5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    const p2, 0x7f0807fa

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    const p2, 0x7f0807f9

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    const p2, 0x7f0807f8

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    new-instance p1, Landroid/graphics/Rect;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .line 113
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    .line 114
    .line 115
    new-instance p1, Ljava/util/Random;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 119
    move-result p2

    .line 120
    int-to-long v0, p2

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 124
    .line 125
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 129
    move-result p1

    .line 130
    .line 131
    iput p1, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 135
    move-result p1

    .line 136
    .line 137
    iput p1, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/widget/MoodView;->shuffle()V

    .line 141
    .line 142
    new-instance p1, Lcom/narvii/widget/EmojionePlusView;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object p2

    .line 147
    const/4 v0, 0x0

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, p2, v0}, Lcom/narvii/widget/EmojionePlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    .line 152
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 158
    move-result p1

    .line 159
    int-to-float p1, p1

    .line 160
    .line 161
    .line 162
    const p2, 0x3f147ae1    # 0.58f

    .line 163
    mul-float/2addr p1, p2

    .line 164
    float-to-int p1, p1

    .line 165
    .line 166
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 167
    .line 168
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 177
    .line 178
    const/16 p2, 0x8

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    .line 188
    new-instance p1, Lcom/narvii/widget/StickerBubbleView;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v1, v0}, Lcom/narvii/widget/StickerBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    .line 197
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 198
    .line 199
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 205
    move-result v1

    .line 206
    .line 207
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 211
    move-result v2

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    .line 229
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    move-result-object p2

    .line 234
    .line 235
    .line 236
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 237
    move-result-object p2

    .line 238
    .line 239
    .line 240
    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 241
    .line 242
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 243
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/MoodView;->curLoadingUser:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MoodView;->setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V

    return-void
.end method

.method static bridge synthetic c()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    return-object v0
.end method

.method private calcXY(J)V
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->prevTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    const/4 v5, 0x0

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    iput v5, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    sub-long v0, p1, v0

    .line 16
    .line 17
    const-wide/16 v6, 0x12c

    .line 18
    .line 19
    .line 20
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    .line 28
    long-to-float v0, v0

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 31
    .line 32
    mul-float v3, v0, v1

    .line 33
    add-float/2addr v3, v0

    .line 34
    add-float/2addr v2, v3

    .line 35
    .line 36
    iput v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    .line 37
    .line 38
    cmpl-float v2, v1, v5

    .line 39
    .line 40
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 41
    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    .line 45
    const v2, 0x4019999a    # 2.4f

    .line 46
    .line 47
    cmpl-float v2, v1, v2

    .line 48
    .line 49
    if-lez v2, :cond_1

    .line 50
    .line 51
    .line 52
    const v2, 0x404ccccd    # 3.2f

    .line 53
    mul-float/2addr v2, v0

    .line 54
    div-float/2addr v2, v3

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    const v2, 0x3fe66666    # 1.8f

    .line 63
    mul-float/2addr v2, v0

    .line 64
    div-float/2addr v2, v3

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 68
    move-result v1

    .line 69
    .line 70
    :goto_0
    iget v2, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 71
    sub-float/2addr v2, v1

    .line 72
    .line 73
    iput v2, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 74
    .line 75
    :cond_2
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 76
    .line 77
    cmpl-float v2, v1, v5

    .line 78
    .line 79
    const/high16 v4, 0x3f800000    # 1.0f

    .line 80
    .line 81
    .line 82
    const v6, 0x3faccccd    # 1.35f

    .line 83
    .line 84
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 85
    .line 86
    if-lez v2, :cond_4

    .line 87
    .line 88
    cmpl-float v2, v1, v7

    .line 89
    .line 90
    if-lez v2, :cond_3

    .line 91
    .line 92
    mul-float v2, v0, v6

    .line 93
    div-float/2addr v2, v3

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v1

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_3
    mul-float v2, v0, v4

    .line 101
    div-float/2addr v2, v3

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 105
    move-result v1

    .line 106
    .line 107
    :goto_1
    iget v2, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 108
    sub-float/2addr v2, v1

    .line 109
    .line 110
    iput v2, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 111
    .line 112
    :cond_4
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 113
    .line 114
    cmpl-float v2, v1, v5

    .line 115
    .line 116
    if-lez v2, :cond_6

    .line 117
    .line 118
    cmpl-float v2, v1, v7

    .line 119
    .line 120
    if-lez v2, :cond_5

    .line 121
    mul-float/2addr v6, v0

    .line 122
    div-float/2addr v6, v3

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    .line 126
    move-result v1

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    mul-float/2addr v4, v0

    .line 129
    div-float/2addr v4, v3

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 133
    move-result v1

    .line 134
    .line 135
    :goto_2
    iget v2, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 136
    sub-float/2addr v2, v1

    .line 137
    .line 138
    iput v2, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 139
    .line 140
    :cond_6
    iget v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 141
    .line 142
    cmpl-float v2, v1, v5

    .line 143
    .line 144
    if-lez v2, :cond_7

    .line 145
    .line 146
    const/high16 v2, 0x41000000    # 8.0f

    .line 147
    mul-float/2addr v0, v2

    .line 148
    div-float/2addr v0, v3

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 152
    move-result v0

    .line 153
    .line 154
    iget v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 155
    sub-float/2addr v1, v0

    .line 156
    .line 157
    iput v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 158
    .line 159
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 160
    add-float/2addr v1, v0

    .line 161
    .line 162
    .line 163
    const v0, 0x3f99999a    # 1.2f

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 167
    move-result v0

    .line 168
    .line 169
    iput v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 170
    goto :goto_4

    .line 171
    .line 172
    :cond_7
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 173
    .line 174
    cmpl-float v2, v1, v5

    .line 175
    .line 176
    if-lez v2, :cond_9

    .line 177
    .line 178
    .line 179
    const v2, 0x3f4ccccd    # 0.8f

    .line 180
    .line 181
    cmpl-float v2, v1, v2

    .line 182
    .line 183
    if-lez v2, :cond_8

    .line 184
    .line 185
    .line 186
    const v2, 0x3fc66666    # 1.55f

    .line 187
    mul-float/2addr v0, v2

    .line 188
    div-float/2addr v0, v3

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 192
    move-result v0

    .line 193
    goto :goto_3

    .line 194
    .line 195
    .line 196
    :cond_8
    const v2, 0x3f59999a    # 0.85f

    .line 197
    mul-float/2addr v0, v2

    .line 198
    div-float/2addr v0, v3

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 202
    move-result v0

    .line 203
    .line 204
    :goto_3
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 205
    sub-float/2addr v1, v0

    .line 206
    .line 207
    iput v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 208
    .line 209
    :cond_9
    :goto_4
    iput-wide p1, p0, Lcom/narvii/widget/MoodView;->prevTime:J

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 213
    move-result p1

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 217
    move-result p2

    .line 218
    int-to-float p1, p1

    .line 219
    .line 220
    .line 221
    const v0, 0x3f147ae1    # 0.58f

    .line 222
    mul-float/2addr v0, p1

    .line 223
    .line 224
    iput v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 225
    int-to-float p2, p2

    .line 226
    .line 227
    .line 228
    const v1, 0x3f0ccccd    # 0.55f

    .line 229
    mul-float/2addr v1, p2

    .line 230
    .line 231
    iput v1, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 232
    .line 233
    iget-boolean v1, p0, Lcom/narvii/widget/MoodView;->anim:Z

    .line 234
    .line 235
    if-eqz v1, :cond_a

    .line 236
    sub-float/2addr p1, v0

    .line 237
    .line 238
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 242
    move-result v0

    .line 243
    int-to-float v0, v0

    .line 244
    .line 245
    const/high16 v1, 0x3f000000    # 0.5f

    .line 246
    mul-float/2addr v0, v1

    .line 247
    sub-float/2addr p1, v0

    .line 248
    .line 249
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 250
    sub-float/2addr p2, v0

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 256
    move-result v0

    .line 257
    int-to-float v0, v0

    .line 258
    mul-float/2addr v0, v1

    .line 259
    sub-float/2addr p2, v0

    .line 260
    .line 261
    iget v0, p0, Lcom/narvii/widget/MoodView;->xmult:F

    .line 262
    .line 263
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 264
    add-float/2addr v0, v1

    .line 265
    mul-float/2addr p1, v0

    .line 266
    .line 267
    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->xtmult:D

    .line 268
    .line 269
    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    .line 270
    .line 271
    iget-wide v3, p0, Lcom/narvii/widget/MoodView;->xtoffset:J

    .line 272
    long-to-float v3, v3

    .line 273
    add-float/2addr v2, v3

    .line 274
    float-to-double v2, v2

    .line 275
    mul-double/2addr v0, v2

    .line 276
    .line 277
    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 279
    move-result-wide v0

    .line 280
    double-to-float v0, v0

    .line 281
    mul-float/2addr p1, v0

    .line 282
    .line 283
    iget v0, p0, Lcom/narvii/widget/MoodView;->ymult:F

    .line 284
    .line 285
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 286
    .line 287
    .line 288
    const v2, 0x40d9999a    # 6.8f

    .line 289
    mul-float/2addr v1, v2

    .line 290
    add-float/2addr v0, v1

    .line 291
    mul-float/2addr p2, v0

    .line 292
    .line 293
    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->ytmult:D

    .line 294
    .line 295
    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    .line 296
    .line 297
    iget-wide v3, p0, Lcom/narvii/widget/MoodView;->ytoffset:J

    .line 298
    long-to-float v3, v3

    .line 299
    add-float/2addr v2, v3

    .line 300
    float-to-double v2, v2

    .line 301
    mul-double/2addr v0, v2

    .line 302
    .line 303
    .line 304
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 305
    move-result-wide v0

    .line 306
    double-to-float v0, v0

    .line 307
    mul-float/2addr p2, v0

    .line 308
    .line 309
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 310
    add-float/2addr v0, p1

    .line 311
    .line 312
    iput v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 313
    .line 314
    iget p1, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 315
    add-float/2addr p1, p2

    .line 316
    .line 317
    iput p1, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 318
    :cond_a
    return-void
.end method

.method static bridge synthetic d()Landroid/hardware/SensorManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V
    .locals 4

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    int-to-float v2, p5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    float-to-int p3, p3

    .line 5
    iput p3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p5

    .line 6
    iput p3, v1, Landroid/graphics/Rect;->right:I

    int-to-float p3, v0

    mul-float/2addr p3, v3

    sub-float/2addr p4, p3

    float-to-int p3, p4

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x3f933333    # 1.15f

    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p4

    :goto_0
    sub-int/2addr p3, p4

    iput p3, v1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    .line 8
    iget p4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 9
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    sget v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    .line 46
    .line 47
    .line 48
    const v0, 0x3f933333    # 1.15f

    .line 49
    mul-float/2addr p2, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 53
    .line 54
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    .line 55
    mul-float/2addr p2, v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    sget v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 91
    .line 92
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 96
    .line 97
    :goto_1
    if-eqz p1, :cond_2

    .line 98
    .line 99
    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_2
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    .line 103
    .line 104
    .line 105
    :goto_2
    invoke-direct {p0, p1}, Lcom/narvii/widget/MoodView;->setupSticker(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
.end method

.method private setupSticker(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    const/4 v3, 0x0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/widget/EmojionePlusView;->setViewColor(I)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :goto_2
    return-void
.end method

.method private updateReg()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/MoodView;->anim:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "sensor"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Landroid/hardware/SensorManager;

    .line 43
    .line 44
    sput-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    :catch_0
    :cond_0
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-object v1, Lcom/narvii/widget/MoodView;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 51
    const/4 v2, 0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    sget-object v1, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    sget-object v1, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x0

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    .line 85
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/MoodView;->calcXY(J)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 15
    neg-float v1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    div-float/2addr v3, v2

    .line 22
    add-float/2addr v1, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    .line 29
    iget v4, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 30
    sub-float/2addr v3, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    div-float/2addr v4, v2

    .line 37
    sub-float/2addr v3, v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    div-float/2addr v3, v2

    .line 50
    sub-float/2addr v1, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    .line 57
    iget v4, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 58
    sub-float/2addr v3, v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    div-float/2addr v4, v2

    .line 65
    sub-float/2addr v3, v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    .line 70
    :goto_0
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 71
    .line 72
    const/high16 v3, 0x3fe00000    # 1.75f

    .line 73
    .line 74
    mul-float v4, v1, v3

    .line 75
    .line 76
    const/high16 v5, 0x3f800000    # 1.0f

    .line 77
    add-float/2addr v4, v5

    .line 78
    mul-float/2addr v1, v3

    .line 79
    add-float/2addr v1, v5

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 83
    move-result v3

    .line 84
    int-to-float v3, v3

    .line 85
    div-float/2addr v3, v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 89
    move-result v5

    .line 90
    int-to-float v5, v5

    .line 91
    div-float/2addr v5, v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 95
    .line 96
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 98
    move-result p2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 102
    return p2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 14
    .line 15
    .line 16
    const v8, 0x3ef5c28f    # 0.48f

    .line 17
    .line 18
    .line 19
    const v9, 0x3eb33333    # 0.35f

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    move-result v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    .line 28
    int-to-float v10, v1

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 31
    mul-float/2addr v1, v9

    .line 32
    .line 33
    sub-float v3, v10, v1

    .line 34
    int-to-float v11, v0

    .line 35
    .line 36
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 37
    mul-float/2addr v0, v9

    .line 38
    .line 39
    sub-float v4, v11, v0

    .line 40
    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    const/4 v6, 0x1

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 52
    mul-float/2addr v0, v9

    .line 53
    .line 54
    sub-float v3, v10, v0

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 57
    mul-float/2addr v0, v9

    .line 58
    .line 59
    sub-float v4, v11, v0

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v0, p0

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 69
    mul-float/2addr v0, v8

    .line 70
    .line 71
    sub-float v3, v10, v0

    .line 72
    .line 73
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 74
    mul-float/2addr v0, v8

    .line 75
    .line 76
    sub-float v4, v11, v0

    .line 77
    const/4 v6, 0x1

    .line 78
    move-object v0, p0

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 86
    mul-float/2addr v0, v8

    .line 87
    .line 88
    sub-float v3, v10, v0

    .line 89
    .line 90
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 91
    mul-float/2addr v0, v8

    .line 92
    .line 93
    sub-float v4, v11, v0

    .line 94
    const/4 v6, 0x0

    .line 95
    move-object v0, p0

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 99
    .line 100
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 103
    .line 104
    sub-float v3, v10, v0

    .line 105
    .line 106
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 107
    .line 108
    sub-float v4, v11, v0

    .line 109
    .line 110
    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 111
    .line 112
    add-float v5, v0, v7

    .line 113
    const/4 v6, 0x1

    .line 114
    move-object v0, p0

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 122
    .line 123
    sub-float v3, v10, v0

    .line 124
    .line 125
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 126
    .line 127
    sub-float v4, v11, v0

    .line 128
    .line 129
    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 130
    .line 131
    add-float v5, v0, v7

    .line 132
    const/4 v6, 0x0

    .line 133
    move-object v0, p0

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 142
    .line 143
    mul-float v3, v1, v9

    .line 144
    int-to-float v10, v0

    .line 145
    .line 146
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 147
    mul-float/2addr v0, v9

    .line 148
    .line 149
    sub-float v4, v10, v0

    .line 150
    .line 151
    const/high16 v5, 0x3f800000    # 1.0f

    .line 152
    const/4 v6, 0x1

    .line 153
    move-object v0, p0

    .line 154
    move-object v1, p1

    .line 155
    .line 156
    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 158
    .line 159
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 162
    .line 163
    mul-float v3, v0, v9

    .line 164
    .line 165
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 166
    mul-float/2addr v0, v9

    .line 167
    .line 168
    sub-float v4, v10, v0

    .line 169
    const/4 v6, 0x0

    .line 170
    move-object v0, p0

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 174
    .line 175
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 178
    .line 179
    mul-float v3, v0, v8

    .line 180
    .line 181
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 182
    mul-float/2addr v0, v8

    .line 183
    .line 184
    sub-float v4, v10, v0

    .line 185
    const/4 v6, 0x1

    .line 186
    move-object v0, p0

    .line 187
    .line 188
    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 190
    .line 191
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 192
    .line 193
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 194
    .line 195
    mul-float v3, v0, v8

    .line 196
    .line 197
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 198
    mul-float/2addr v0, v8

    .line 199
    .line 200
    sub-float v4, v10, v0

    .line 201
    const/4 v6, 0x0

    .line 202
    move-object v0, p0

    .line 203
    .line 204
    .line 205
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 206
    .line 207
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    iget v3, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 210
    .line 211
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 212
    .line 213
    sub-float v4, v10, v0

    .line 214
    .line 215
    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 216
    .line 217
    add-float v5, v0, v7

    .line 218
    const/4 v6, 0x1

    .line 219
    move-object v0, p0

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 223
    .line 224
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    iget v3, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 227
    .line 228
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 229
    .line 230
    sub-float v4, v10, v0

    .line 231
    .line 232
    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 233
    .line 234
    add-float v5, v0, v7

    .line 235
    const/4 v6, 0x0

    .line 236
    move-object v0, p0

    .line 237
    .line 238
    .line 239
    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 240
    .line 241
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/widget/MoodView;->anim:Z

    .line 242
    .line 243
    if-eqz v0, :cond_1

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 247
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    .line 7
    return-void
.end method

.method public setAnimate(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/MoodView;->anim:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    .line 11
    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V

    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V
    .locals 4

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->curLoadingUser:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 3
    iget-object v1, p1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/narvii/widget/MoodView$3;

    invoke-direct {v3, p0, p2, p3}, Lcom/narvii/widget/MoodView$3;-><init>(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/widget/MoodView;->setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V

    :goto_0
    return-void
.end method

.method public shakeCrazily()V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v0}, Lcom/narvii/widget/MoodView;->shakeSensor(FF)V

    .line 6
    return-void
.end method

.method shakeSensor(FF)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 6
    move-result v1

    .line 7
    add-float/2addr v0, v1

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 11
    move-result v1

    .line 12
    add-float/2addr v0, v1

    .line 13
    .line 14
    const/high16 v1, 0x40a00000    # 5.0f

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result p1

    .line 27
    add-float/2addr v0, p1

    .line 28
    .line 29
    const/high16 p1, 0x40800000    # 4.0f

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result v0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result p2

    .line 42
    add-float/2addr v0, p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 46
    move-result p1

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 49
    return-void
.end method

.method public shakeTouch()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 3
    .line 4
    const/high16 v1, 0x40d80000    # 6.75f

    .line 5
    add-float/2addr v0, v1

    .line 6
    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    .line 10
    const/high16 v2, 0x40a00000    # 5.0f

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 19
    .line 20
    .line 21
    const v2, 0x40accccd    # 5.4f

    .line 22
    add-float/2addr v0, v2

    .line 23
    div-float/2addr v0, v1

    .line 24
    .line 25
    const/high16 v3, 0x40800000    # 4.0f

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 34
    add-float/2addr v0, v2

    .line 35
    div-float/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 39
    move-result v0

    .line 40
    .line 41
    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 42
    .line 43
    iget v0, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 44
    .line 45
    .line 46
    const v1, 0x3f4ccccd    # 0.8f

    .line 47
    add-float/2addr v0, v1

    .line 48
    .line 49
    .line 50
    const v1, 0x4019999a    # 2.4f

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 54
    move-result v0

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    .line 57
    return-void
.end method

.method public shuffle()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 3
    .line 4
    const/16 v1, 0x2710

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    move-result v0

    .line 9
    int-to-long v2, v0

    .line 10
    .line 11
    iput-wide v2, p0, Lcom/narvii/widget/MoodView;->xtoffset:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 17
    move-result v0

    .line 18
    int-to-long v0, v0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/narvii/widget/MoodView;->ytoffset:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 29
    mul-double/2addr v0, v2

    .line 30
    .line 31
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    .line 32
    add-double/2addr v0, v4

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v4, 0x3f79bc65b68b71c3L    # 0.006283185307179587

    .line 38
    .line 39
    div-double v0, v4, v0

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/narvii/widget/MoodView;->xtmult:D

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 47
    move-result-wide v0

    .line 48
    mul-double/2addr v0, v2

    .line 49
    .line 50
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 51
    add-double/2addr v0, v2

    .line 52
    div-double/2addr v4, v0

    .line 53
    .line 54
    iput-wide v4, p0, Lcom/narvii/widget/MoodView;->ytmult:D

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 60
    move-result v0

    .line 61
    .line 62
    const/high16 v1, 0x3f000000    # 0.5f

    .line 63
    mul-float/2addr v0, v1

    .line 64
    add-float/2addr v0, v1

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/widget/MoodView;->xmult:F

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    const v1, 0x3f4ccccd    # 0.8f

    .line 76
    mul-float/2addr v0, v1

    .line 77
    .line 78
    .line 79
    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    add-float/2addr v0, v1

    .line 81
    .line 82
    iput v0, p0, Lcom/narvii/widget/MoodView;->ymult:F

    .line 83
    return-void
.end method

.method public updateMoodColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    .line 27
    .line 28
    .line 29
    const v1, 0x3f933333    # 1.15f

    .line 30
    mul-float/2addr v0, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    .line 36
    mul-float/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/widget/MoodView;->setupSticker(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    return-void
.end method
