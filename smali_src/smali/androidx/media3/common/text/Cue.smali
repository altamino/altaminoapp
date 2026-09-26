.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/Cue$Builder;,
        Landroidx/media3/common/text/Cue$VerticalType;,
        Landroidx/media3/common/text/Cue$TextSizeType;,
        Landroidx/media3/common/text/Cue$LineType;,
        Landroidx/media3/common/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIMEN_UNSET:F = -3.4028235E38f

.field public static final EMPTY:Landroidx/media3/common/text/Cue;

.field private static final FIELD_BITMAP:Ljava/lang/String;

.field private static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field private static final FIELD_LINE:Ljava/lang/String;

.field private static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field private static final FIELD_LINE_TYPE:Ljava/lang/String;

.field private static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_POSITION:Ljava/lang/String;

.field private static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field private static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field private static final FIELD_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT:Ljava/lang/String;

.field private static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field private static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TEXT_SIZE_TYPE_ABSOLUTE:I = 0x2

.field public static final TEXT_SIZE_TYPE_FRACTIONAL:I = 0x0

.field public static final TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000

.field public static final VERTICAL_TYPE_LR:I = 0x2

.field public static final VERTICAL_TYPE_RL:I = 0x1


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textAlignment:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->o(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 39
    const/4 v0, 0x3

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    .line 60
    const/4 v0, 0x6

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 67
    const/4 v0, 0x7

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 74
    .line 75
    const/16 v0, 0x8

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 82
    .line 83
    const/16 v0, 0x9

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    .line 90
    .line 91
    const/16 v0, 0xa

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 98
    .line 99
    const/16 v0, 0xb

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 106
    .line 107
    const/16 v0, 0xc

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 114
    .line 115
    const/16 v0, 0xd

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 122
    .line 123
    const/16 v0, 0xe

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    .line 130
    .line 131
    const/16 v0, 0xf

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 138
    .line 139
    const/16 v0, 0x10

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v0, Landroidx/media3/common/text/a;

    .line 148
    .line 149
    .line 150
    invoke-direct {v0}, Landroidx/media3/common/text/a;-><init>()V

    .line 151
    .line 152
    sput-object v0, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 153
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 3
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 5
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 6
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :goto_3
    iput-object v1, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    move v1, p5

    iput v1, v0, Landroidx/media3/common/text/Cue;->line:F

    move v1, p6

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineType:I

    move v1, p7

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    move v1, p8

    iput v1, v0, Landroidx/media3/common/text/Cue;->position:F

    move v1, p9

    iput v1, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    move/from16 v1, p12

    iput v1, v0, Landroidx/media3/common/text/Cue;->size:F

    move/from16 v1, p13

    iput v1, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    move v1, p10

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    move v1, p11

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSize:F

    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLandroidx/media3/common/text/Cue$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/text/Cue;->c(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->o(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 17
    .line 18
    :cond_0
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Landroid/text/Layout$Alignment;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->p(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    .line 30
    .line 31
    :cond_1
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->j(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    .line 43
    .line 44
    :cond_2
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->f(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 56
    .line 57
    :cond_3
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 75
    move-result v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 79
    move-result v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->h(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 83
    .line 84
    :cond_4
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->i(I)Landroidx/media3/common/text/Cue$Builder;

    .line 98
    .line 99
    :cond_5
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->k(F)Landroidx/media3/common/text/Cue$Builder;

    .line 113
    .line 114
    :cond_6
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 118
    move-result v2

    .line 119
    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 124
    move-result v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->l(I)Landroidx/media3/common/text/Cue$Builder;

    .line 128
    .line 129
    :cond_7
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 133
    move-result v2

    .line 134
    .line 135
    if-eqz v2, :cond_8

    .line 136
    .line 137
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 141
    move-result v3

    .line 142
    .line 143
    if-eqz v3, :cond_8

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 151
    move-result v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->q(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 155
    .line 156
    :cond_8
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 160
    move-result v2

    .line 161
    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 166
    move-result v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->n(F)Landroidx/media3/common/text/Cue$Builder;

    .line 170
    .line 171
    :cond_9
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 175
    move-result v2

    .line 176
    .line 177
    if-eqz v2, :cond_a

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 181
    move-result v1

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->g(F)Landroidx/media3/common/text/Cue$Builder;

    .line 185
    .line 186
    :cond_a
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 190
    move-result v2

    .line 191
    .line 192
    if-eqz v2, :cond_b

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 196
    move-result v1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->s(I)Landroidx/media3/common/text/Cue$Builder;

    .line 200
    .line 201
    :cond_b
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    .line 202
    const/4 v2, 0x0

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 206
    move-result v1

    .line 207
    .line 208
    if-nez v1, :cond_c

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->b()Landroidx/media3/common/text/Cue$Builder;

    .line 212
    .line 213
    :cond_c
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 217
    move-result v2

    .line 218
    .line 219
    if-eqz v2, :cond_d

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 223
    move-result v1

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->r(I)Landroidx/media3/common/text/Cue$Builder;

    .line 227
    .line 228
    :cond_d
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 232
    move-result v2

    .line 233
    .line 234
    if-eqz v2, :cond_e

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 238
    move-result p0

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p0}, Landroidx/media3/common/text/Cue$Builder;->m(F)Landroidx/media3/common/text/Cue$Builder;

    .line 242
    .line 243
    .line 244
    :cond_e
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 245
    move-result-object p0

    .line 246
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/media3/common/text/Cue$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;Landroidx/media3/common/text/Cue$1;)V

    .line 7
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
    if-eqz p1, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Landroidx/media3/common/text/Cue;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 22
    .line 23
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 40
    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    :goto_0
    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    .line 63
    .line 64
    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    .line 65
    .line 66
    cmpl-float v2, v2, v3

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 71
    .line 72
    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    .line 73
    .line 74
    if-ne v2, v3, :cond_3

    .line 75
    .line 76
    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 77
    .line 78
    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    .line 83
    .line 84
    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    .line 85
    .line 86
    cmpl-float v2, v2, v3

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 91
    .line 92
    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 93
    .line 94
    if-ne v2, v3, :cond_3

    .line 95
    .line 96
    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    .line 97
    .line 98
    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    .line 99
    .line 100
    cmpl-float v2, v2, v3

    .line 101
    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 105
    .line 106
    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 107
    .line 108
    cmpl-float v2, v2, v3

    .line 109
    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 113
    .line 114
    iget-boolean v3, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 115
    .line 116
    if-ne v2, v3, :cond_3

    .line 117
    .line 118
    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 119
    .line 120
    iget v3, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_3

    .line 123
    .line 124
    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 125
    .line 126
    iget v3, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 127
    .line 128
    if-ne v2, v3, :cond_3

    .line 129
    .line 130
    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 131
    .line 132
    iget v3, p1, Landroidx/media3/common/text/Cue;->textSize:F

    .line 133
    .line 134
    cmpl-float v2, v2, v3

    .line 135
    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 139
    .line 140
    iget v3, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 141
    .line 142
    if-ne v2, v3, :cond_3

    .line 143
    .line 144
    iget v2, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 145
    .line 146
    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 147
    .line 148
    cmpl-float p1, v2, p1

    .line 149
    .line 150
    if-nez p1, :cond_3

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    move v0, v1

    .line 153
    :goto_1
    return v0

    .line 154
    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    iget v1, p0, Landroidx/media3/common/text/Cue;->line:F

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x4

    .line 32
    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    iget v1, p0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x5

    .line 41
    .line 42
    aput-object v1, v0, v2

    .line 43
    .line 44
    iget v1, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x6

    .line 50
    .line 51
    aput-object v1, v0, v2

    .line 52
    .line 53
    iget v1, p0, Landroidx/media3/common/text/Cue;->position:F

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x7

    .line 59
    .line 60
    aput-object v1, v0, v2

    .line 61
    .line 62
    iget v1, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    aput-object v1, v0, v2

    .line 71
    .line 72
    iget v1, p0, Landroidx/media3/common/text/Cue;->size:F

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const/16 v2, 0x9

    .line 79
    .line 80
    aput-object v1, v0, v2

    .line 81
    .line 82
    iget v1, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    const/16 v2, 0xa

    .line 89
    .line 90
    aput-object v1, v0, v2

    .line 91
    .line 92
    iget-boolean v1, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    const/16 v2, 0xb

    .line 99
    .line 100
    aput-object v1, v0, v2

    .line 101
    .line 102
    iget v1, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const/16 v2, 0xc

    .line 109
    .line 110
    aput-object v1, v0, v2

    .line 111
    .line 112
    iget v1, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    const/16 v2, 0xd

    .line 119
    .line 120
    aput-object v1, v0, v2

    .line 121
    .line 122
    iget v1, p0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    const/16 v2, 0xe

    .line 129
    .line 130
    aput-object v1, v0, v2

    .line 131
    .line 132
    iget v1, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    const/16 v2, 0xf

    .line 139
    .line 140
    aput-object v1, v0, v2

    .line 141
    .line 142
    iget v1, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    const/16 v2, 0x10

    .line 149
    .line 150
    aput-object v1, v0, v2

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 154
    move-result v0

    .line 155
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 27
    .line 28
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    .line 42
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 50
    .line 51
    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 57
    .line 58
    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    .line 63
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 64
    .line 65
    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    .line 71
    .line 72
    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 78
    .line 79
    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 83
    .line 84
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 85
    .line 86
    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 90
    .line 91
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 92
    .line 93
    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 97
    .line 98
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    .line 99
    .line 100
    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 106
    .line 107
    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    .line 112
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 113
    .line 114
    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 120
    .line 121
    iget v2, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 125
    return-object v0
.end method
