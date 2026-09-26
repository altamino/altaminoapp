.class public final Lg7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/d$a;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO:I = 0x1

.field public static final ACTION_CONCAT_VIDEO:I = 0x1000

.field public static final ACTION_CONVERT_GIF_TO_VIDEO:I = 0x800

.field public static final ACTION_CONVERT_IMG_TO_VIDEO:I = 0x400

.field public static final ACTION_COPY_MIX_AUDIO_VIDEO:I = 0x80

.field public static final ACTION_FLIP_MEDIA:I = 0x200

.field public static final ACTION_GENERATE_SILENT_AUDIO:I = 0x100

.field public static final ACTION_MULTIPLE_MEDIA_MIX:I = 0x20

.field public static final ACTION_SCREENSHOT:I = 0x10

.field public static final ACTION_TRANSCODE_A:I = 0x4

.field public static final ACTION_TRANSCODE_V:I = 0x2

.field public static final ACTION_TRIM:I = 0x8

.field public static final ACTION_WAVE_FORM:I = 0x40

.field public static final Companion:Lg7/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private actionType:I

.field private final additionalMediaInputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final audioOnly:Z

.field private dropNegativeTs:Z

.field private final duration:I

.field private final forceAudioCodecCopy:Z

.field private forceSoftware:Z

.field private final forceVideoCodecCopy:Z

.field private final frameItemHeight:I

.field private final frameItemWidth:I

.field private final horizontalFlip:Z

.field private final inputClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inputHasAudioTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inputHasVideoTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isVerticalVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keepFixedDimension:Z

.field private final keyframeOnlyForScreenshot:Z

.field private final maxVideoBitrate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final needProgressCallback:Z

.field private orgVideoDARList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orgVideoHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orgVideoWidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final output:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runningInBackground:Z

.field private screenshotCount:I

.field private screenshotRate:F

.field private final screenshotScaleRatio:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startTime:I

.field private final verticalFlip:Z

.field private final videoBufSize:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg7/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg7/d$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lg7/d;->Companion:Lg7/d$a;

    return-void
.end method

.method public constructor <init>(Lg7/d$a$a;)V
    .locals 3
    .param p1    # Lg7/d$a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lg7/d;->isVerticalVideoList:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lg7/d;->orgVideoWidthList:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lg7/d;->orgVideoHeightList:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lg7/d;->orgVideoDARList:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    iput-object v0, p0, Lg7/d;->inputHasAudioTrackList:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    iput-object v0, p0, Lg7/d;->inputHasVideoTrackList:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lg7/d$a$a;->C()I

    .line 54
    move-result v0

    .line 55
    .line 56
    iput v0, p0, Lg7/d;->actionType:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lg7/d$a$a;->s()Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, p0, Lg7/d;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lg7/d$a$a;->t()Ljava/util/List;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lg7/d;->inputClipList:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lg7/d$a$a;->x()Ljava/io/File;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lg7/d;->output:Ljava/io/File;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lg7/d$a$a;->m()I

    .line 78
    move-result v0

    .line 79
    .line 80
    iput v0, p0, Lg7/d;->duration:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lg7/d$a$a;->B()I

    .line 84
    move-result v1

    .line 85
    .line 86
    iput v1, p0, Lg7/d;->startTime:I

    .line 87
    .line 88
    const/high16 v1, 0x490c0000    # 573440.0f

    .line 89
    int-to-float v0, v0

    .line 90
    div-float/2addr v1, v0

    .line 91
    .line 92
    const/16 v0, 0x3e8

    .line 93
    int-to-float v0, v0

    .line 94
    mul-float/2addr v1, v0

    .line 95
    float-to-int v0, v1

    .line 96
    .line 97
    const/16 v1, 0xdac

    .line 98
    .line 99
    if-ge v0, v1, :cond_0

    .line 100
    .line 101
    add-int/lit8 v0, v0, -0x80

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_0
    const/16 v0, 0xd2c

    .line 105
    .line 106
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const/16 v2, 0x6b

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    iput-object v1, p0, Lg7/d;->maxVideoBitrate:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    mul-int/lit8 v0, v0, 0x2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    iput-object v0, p0, Lg7/d;->videoBufSize:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lg7/d$a$a;->v()Z

    .line 146
    move-result v0

    .line 147
    .line 148
    iput-boolean v0, p0, Lg7/d;->keyframeOnlyForScreenshot:Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lg7/d$a$a;->u()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    iput-boolean v0, p0, Lg7/d;->keepFixedDimension:Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lg7/d$a$a;->E()Z

    .line 158
    move-result v0

    .line 159
    .line 160
    iput-boolean v0, p0, Lg7/d;->videoOnly:Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lg7/d$a$a;->k()Z

    .line 164
    move-result v0

    .line 165
    .line 166
    iput-boolean v0, p0, Lg7/d;->audioOnly:Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lg7/d$a$a;->o()Z

    .line 170
    move-result v0

    .line 171
    .line 172
    iput-boolean v0, p0, Lg7/d;->forceVideoCodecCopy:Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lg7/d$a$a;->n()Z

    .line 176
    move-result v0

    .line 177
    .line 178
    iput-boolean v0, p0, Lg7/d;->forceAudioCodecCopy:Z

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lg7/d$a$a;->j()Ljava/util/ArrayList;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    iput-object v0, p0, Lg7/d;->additionalMediaInputList:Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lg7/d$a$a;->q()I

    .line 188
    move-result v0

    .line 189
    .line 190
    iput v0, p0, Lg7/d;->frameItemWidth:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lg7/d$a$a;->p()I

    .line 194
    move-result v0

    .line 195
    .line 196
    iput v0, p0, Lg7/d;->frameItemHeight:I

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lg7/d$a$a;->y()I

    .line 200
    move-result v0

    .line 201
    .line 202
    iput v0, p0, Lg7/d;->screenshotCount:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lg7/d$a$a;->z()F

    .line 206
    move-result v0

    .line 207
    .line 208
    iput v0, p0, Lg7/d;->screenshotRate:F

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lg7/d$a$a;->A()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    iput-object v0, p0, Lg7/d;->screenshotScaleRatio:Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lg7/d$a$a;->r()Z

    .line 218
    move-result v0

    .line 219
    .line 220
    iput-boolean v0, p0, Lg7/d;->horizontalFlip:Z

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lg7/d$a$a;->D()Z

    .line 224
    move-result v0

    .line 225
    .line 226
    iput-boolean v0, p0, Lg7/d;->verticalFlip:Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lg7/d$a$a;->w()Z

    .line 230
    move-result v0

    .line 231
    .line 232
    iput-boolean v0, p0, Lg7/d;->needProgressCallback:Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lg7/d$a$a;->l()Z

    .line 236
    move-result p1

    .line 237
    .line 238
    iput-boolean p1, p0, Lg7/d;->dropNegativeTs:Z

    .line 239
    return-void
.end method

.method public static synthetic w(Lg7/d;IILjava/lang/Object;)F
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lg7/d;->v(I)F

    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->screenshotCount:I

    return v0
.end method

.method public final B()F
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->screenshotRate:F

    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->screenshotScaleRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->startTime:I

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->verticalFlip:Z

    return v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->videoBufSize:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->videoOnly:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lg7/d;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lg7/d;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lg7/d;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method

.method public final I()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->isVerticalVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final J(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg7/d;->forceSoftware:Z

    return-void
.end method

.method public final K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg7/d;->runningInBackground:Z

    return-void
.end method

.method public final L(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget p1, p0, Lg7/d;->actionType:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget p1, p0, Lg7/d;->actionType:I

    and-int/lit8 p1, p1, -0x5

    :goto_0
    iput p1, p0, Lg7/d;->actionType:I

    return-void
.end method

.method public final M(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget p1, p0, Lg7/d;->actionType:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lg7/d;->actionType:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lg7/d;->actionType:I

    return-void
.end method

.method public final N(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget p1, p0, Lg7/d;->actionType:I

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    iget p1, p0, Lg7/d;->actionType:I

    and-int/lit8 p1, p1, -0x9

    :goto_0
    iput p1, p0, Lg7/d;->actionType:I

    return-void
.end method

.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->actionType:I

    return v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->additionalMediaInputList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->audioOnly:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->dropNegativeTs:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->duration:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->forceAudioCodecCopy:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->forceSoftware:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->forceVideoCodecCopy:Z

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->frameItemHeight:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lg7/d;->frameItemWidth:I

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->horizontalFlip:Z

    return v0
.end method

.method public final l()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->inputClipList:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->inputHasAudioTrackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->inputHasVideoTrackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->keepFixedDimension:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->keyframeOnlyForScreenshot:Z

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->maxVideoBitrate:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->needProgressCallback:Z

    return v0
.end method

.method public final t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->orgVideoDARList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->orgVideoHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final v(I)F
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lg7/d;->orgVideoDARList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lg7/d;->orgVideoHeightList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "get(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 29
    move-result v1

    .line 30
    mul-float/2addr v0, v1

    .line 31
    .line 32
    iget-object v1, p0, Lg7/d;->orgVideoWidthList:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 45
    move-result p1

    .line 46
    div-float/2addr v0, p1

    .line 47
    return v0
.end method

.method public final x()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->orgVideoWidthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final y()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/d;->output:Ljava/io/File;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg7/d;->runningInBackground:Z

    return v0
.end method
