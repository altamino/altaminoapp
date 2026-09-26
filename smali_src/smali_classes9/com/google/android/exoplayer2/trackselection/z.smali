.class public Lcom/google/android/exoplayer2/trackselection/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/z$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/trackselection/z;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/trackselection/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/z;

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_DISABLED_TRACK_TYPE:I = 0x18

.field private static final FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE:I = 0x16

.field private static final FIELD_FORCE_LOWEST_BITRATE:I = 0x15

.field private static final FIELD_IGNORED_TEXT_SELECTION_FLAGS:I = 0x1a

.field private static final FIELD_MAX_AUDIO_BITRATE:I = 0x13

.field private static final FIELD_MAX_AUDIO_CHANNEL_COUNT:I = 0x12

.field private static final FIELD_MAX_VIDEO_BITRATE:I = 0x9

.field private static final FIELD_MAX_VIDEO_FRAMERATE:I = 0x8

.field private static final FIELD_MAX_VIDEO_HEIGHT:I = 0x7

.field private static final FIELD_MAX_VIDEO_WIDTH:I = 0x6

.field private static final FIELD_MIN_VIDEO_BITRATE:I = 0xd

.field private static final FIELD_MIN_VIDEO_FRAMERATE:I = 0xc

.field private static final FIELD_MIN_VIDEO_HEIGHT:I = 0xb

.field private static final FIELD_MIN_VIDEO_WIDTH:I = 0xa

.field private static final FIELD_PREFERRED_AUDIO_LANGUAGES:I = 0x1

.field private static final FIELD_PREFERRED_AUDIO_MIME_TYPES:I = 0x14

.field private static final FIELD_PREFERRED_AUDIO_ROLE_FLAGS:I = 0x2

.field private static final FIELD_PREFERRED_TEXT_LANGUAGES:I = 0x3

.field private static final FIELD_PREFERRED_TEXT_ROLE_FLAGS:I = 0x4

.field private static final FIELD_PREFERRED_VIDEO_MIMETYPES:I = 0x11

.field private static final FIELD_PREFERRED_VIDEO_ROLE_FLAGS:I = 0x19

.field private static final FIELD_SELECTION_OVERRIDES:I = 0x17

.field private static final FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE:I = 0x5

.field private static final FIELD_VIEWPORT_HEIGHT:I = 0xf

.field private static final FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE:I = 0x10

.field private static final FIELD_VIEWPORT_WIDTH:I = 0xe


# instance fields
.field public final disabledTrackTypes:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final forceHighestSupportedBitrate:Z

.field public final forceLowestBitrate:Z

.field public final ignoredTextSelectionFlags:I

.field public final maxAudioBitrate:I

.field public final maxAudioChannelCount:I

.field public final maxVideoBitrate:I

.field public final maxVideoFrameRate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final minVideoBitrate:I

.field public final minVideoFrameRate:I

.field public final minVideoHeight:I

.field public final minVideoWidth:I

.field public final overrides:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Lcom/google/android/exoplayer2/source/f1;",
            "Lcom/google/android/exoplayer2/trackselection/x;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioLanguages:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioMimeTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredAudioRoleFlags:I

.field public final preferredTextLanguages:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredTextRoleFlags:I

.field public final preferredVideoMimeTypes:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final preferredVideoRoleFlags:I

.field public final selectUndeterminedTextLanguage:Z

.field public final viewportHeight:I

.field public final viewportOrientationMayChange:Z

.field public final viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->A()Lcom/google/android/exoplayer2/trackselection/z;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/z;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/z;

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/z;->DEFAULT:Lcom/google/android/exoplayer2/trackselection/z;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/y;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/y;-><init>()V

    .line 19
    .line 20
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/z;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/trackselection/z$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->a(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->b(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->m(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->t(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->u(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->v(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->w(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->x(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 49
    move-result v0

    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->y(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 55
    move-result v0

    .line 56
    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->z(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->c(Lcom/google/android/exoplayer2/trackselection/z$a;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->d(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->e(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 79
    move-result v0

    .line 80
    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->f(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->g(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 91
    move-result v0

    .line 92
    .line 93
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->h(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 97
    move-result v0

    .line 98
    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->i(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 103
    move-result v0

    .line 104
    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->j(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->k(Lcom/google/android/exoplayer2/trackselection/z$a;)Lcom/google/common/collect/a0;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->l(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 121
    move-result v0

    .line 122
    .line 123
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->n(Lcom/google/android/exoplayer2/trackselection/z$a;)I

    .line 127
    move-result v0

    .line 128
    .line 129
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->o(Lcom/google/android/exoplayer2/trackselection/z$a;)Z

    .line 133
    move-result v0

    .line 134
    .line 135
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->p(Lcom/google/android/exoplayer2/trackselection/z$a;)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->q(Lcom/google/android/exoplayer2/trackselection/z$a;)Z

    .line 145
    move-result v0

    .line 146
    .line 147
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->r(Lcom/google/android/exoplayer2/trackselection/z$a;)Ljava/util/HashMap;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lcom/google/common/collect/b0;->f(Ljava/util/Map;)Lcom/google/common/collect/b0;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/z$a;->s(Lcom/google/android/exoplayer2/trackselection/z$a;)Ljava/util/HashSet;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/google/common/collect/d0;->t(Ljava/util/Collection;)Lcom/google/common/collect/d0;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 168
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/z$a;->A()Lcom/google/android/exoplayer2/trackselection/z;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method protected static c(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/trackselection/z$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/z$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/z$a;-><init>(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/z;

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 24
    .line 25
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 26
    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 30
    .line 31
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 36
    .line 37
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 42
    .line 43
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 48
    .line 49
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 50
    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    .line 53
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 54
    .line 55
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 56
    .line 57
    if-ne v2, v3, :cond_2

    .line 58
    .line 59
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 60
    .line 61
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 62
    .line 63
    if-ne v2, v3, :cond_2

    .line 64
    .line 65
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 66
    .line 67
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 68
    .line 69
    if-ne v2, v3, :cond_2

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 74
    .line 75
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 78
    .line 79
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 84
    .line 85
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 86
    .line 87
    if-ne v2, v3, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 100
    .line 101
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 102
    .line 103
    if-ne v2, v3, :cond_2

    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 106
    .line 107
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 116
    .line 117
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 118
    .line 119
    if-ne v2, v3, :cond_2

    .line 120
    .line 121
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 122
    .line 123
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 124
    .line 125
    if-ne v2, v3, :cond_2

    .line 126
    .line 127
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 128
    .line 129
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 130
    .line 131
    if-ne v2, v3, :cond_2

    .line 132
    .line 133
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 134
    .line 135
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 144
    .line 145
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lcom/google/common/collect/a0;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v2

    .line 150
    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 154
    .line 155
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 156
    .line 157
    if-ne v2, v3, :cond_2

    .line 158
    .line 159
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 160
    .line 161
    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 162
    .line 163
    if-ne v2, v3, :cond_2

    .line 164
    .line 165
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 166
    .line 167
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 168
    .line 169
    if-ne v2, v3, :cond_2

    .line 170
    .line 171
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 172
    .line 173
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 174
    .line 175
    if-ne v2, v3, :cond_2

    .line 176
    .line 177
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 178
    .line 179
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 180
    .line 181
    if-ne v2, v3, :cond_2

    .line 182
    .line 183
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 184
    .line 185
    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Lcom/google/common/collect/b0;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v2

    .line 190
    .line 191
    if-eqz v2, :cond_2

    .line 192
    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, p1}, Lcom/google/common/collect/d0;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result p1

    .line 200
    .line 201
    if-eqz p1, :cond_2

    .line 202
    goto :goto_0

    .line 203
    :cond_2
    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 205
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 9
    add-int/2addr v0, v2

    .line 10
    mul-int/2addr v0, v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 13
    add-int/2addr v0, v2

    .line 14
    mul-int/2addr v0, v1

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/2addr v0, v1

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    .line 24
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 25
    add-int/2addr v0, v2

    .line 26
    mul-int/2addr v0, v1

    .line 27
    .line 28
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/2addr v0, v1

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 33
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 37
    add-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v1

    .line 39
    .line 40
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 41
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    .line 44
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 45
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/common/collect/a0;->hashCode()I

    .line 52
    move-result v2

    .line 53
    add-int/2addr v0, v2

    .line 54
    mul-int/2addr v0, v1

    .line 55
    .line 56
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 57
    add-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/common/collect/a0;->hashCode()I

    .line 64
    move-result v2

    .line 65
    add-int/2addr v0, v2

    .line 66
    mul-int/2addr v0, v1

    .line 67
    .line 68
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 69
    add-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v1

    .line 71
    .line 72
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 73
    add-int/2addr v0, v2

    .line 74
    mul-int/2addr v0, v1

    .line 75
    .line 76
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 77
    add-int/2addr v0, v2

    .line 78
    mul-int/2addr v0, v1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/google/common/collect/a0;->hashCode()I

    .line 84
    move-result v2

    .line 85
    add-int/2addr v0, v2

    .line 86
    mul-int/2addr v0, v1

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/google/common/collect/a0;->hashCode()I

    .line 92
    move-result v2

    .line 93
    add-int/2addr v0, v2

    .line 94
    mul-int/2addr v0, v1

    .line 95
    .line 96
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 97
    add-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v1

    .line 99
    .line 100
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 101
    add-int/2addr v0, v2

    .line 102
    mul-int/2addr v0, v1

    .line 103
    .line 104
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 105
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    .line 108
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 109
    add-int/2addr v0, v2

    .line 110
    mul-int/2addr v0, v1

    .line 111
    .line 112
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 113
    add-int/2addr v0, v2

    .line 114
    mul-int/2addr v0, v1

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/google/common/collect/b0;->hashCode()I

    .line 120
    move-result v2

    .line 121
    add-int/2addr v0, v2

    .line 122
    mul-int/2addr v0, v1

    .line 123
    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/google/common/collect/d0;->hashCode()I

    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoWidth:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x7

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoHeight:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoFrameRate:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    const/16 v1, 0x9

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxVideoBitrate:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    const/16 v1, 0xa

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoWidth:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    const/16 v1, 0xb

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoHeight:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoFrameRate:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    const/16 v1, 0xd

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->minVideoBitrate:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    const/16 v1, 0xe

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportWidth:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .line 104
    const/16 v1, 0xf

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportHeight:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->viewportOrientationMayChange:Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    .line 126
    const/16 v1, 0x11

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoMimeTypes:Lcom/google/common/collect/a0;

    .line 133
    const/4 v3, 0x0

    .line 134
    .line 135
    new-array v4, v3, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Lcom/google/common/collect/y;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    check-cast v2, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    .line 146
    const/16 v1, 0x19

    .line 147
    .line 148
    .line 149
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredVideoRoleFlags:I

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const/4 v1, 0x1

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioLanguages:Lcom/google/common/collect/a0;

    .line 163
    .line 164
    new-array v4, v3, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4}, Lcom/google/common/collect/y;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    check-cast v2, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x2

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioRoleFlags:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 184
    .line 185
    const/16 v1, 0x12

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioChannelCount:I

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    const/16 v1, 0x13

    .line 197
    .line 198
    .line 199
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->maxAudioBitrate:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 206
    .line 207
    const/16 v1, 0x14

    .line 208
    .line 209
    .line 210
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredAudioMimeTypes:Lcom/google/common/collect/a0;

    .line 214
    .line 215
    new-array v4, v3, [Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v4}, Lcom/google/common/collect/y;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    check-cast v2, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x3

    .line 226
    .line 227
    .line 228
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextLanguages:Lcom/google/common/collect/a0;

    .line 232
    .line 233
    new-array v3, v3, [Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Lcom/google/common/collect/y;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    check-cast v2, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x4

    .line 244
    .line 245
    .line 246
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->preferredTextRoleFlags:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 253
    .line 254
    const/16 v1, 0x1a

    .line 255
    .line 256
    .line 257
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    .line 260
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->ignoredTextSelectionFlags:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const/4 v1, 0x5

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->selectUndeterminedTextLanguage:Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    .line 275
    const/16 v1, 0x15

    .line 276
    .line 277
    .line 278
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    .line 281
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceLowestBitrate:Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    .line 286
    const/16 v1, 0x16

    .line 287
    .line 288
    .line 289
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->forceHighestSupportedBitrate:Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    .line 297
    const/16 v1, 0x17

    .line 298
    .line 299
    .line 300
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 301
    move-result-object v1

    .line 302
    .line 303
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->overrides:Lcom/google/common/collect/b0;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/google/common/collect/b0;->n()Lcom/google/common/collect/y;

    .line 307
    move-result-object v2

    .line 308
    .line 309
    .line 310
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/c;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 315
    .line 316
    const/16 v1, 0x18

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/z;->c(I)Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/z;->disabledTrackTypes:Lcom/google/common/collect/d0;

    .line 323
    .line 324
    .line 325
    invoke-static {v2}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 326
    move-result-object v2

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 330
    return-object v0
.end method
