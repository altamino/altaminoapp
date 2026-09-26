.class public final Landroidx/media3/extractor/text/ttml/TtmlDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;,
        Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;,
        Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    const-string v0, "^(\\d+) (\\d+)$"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 59
    .line 60
    const/high16 v1, 0x41f00000    # 30.0f

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, v2, v2}, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    .line 65
    .line 66
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 67
    .line 68
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 69
    .line 70
    const/16 v1, 0x20

    .line 71
    .line 72
    const/16 v2, 0xf

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    .line 76
    .line 77
    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "TtmlDecoder"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    throw v1
.end method

.method private static A(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 3
    .line 4
    const-string v1, "cellResolution"

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    const-string v2, "Ignoring malformed cell resolution: "

    .line 24
    .line 25
    const-string v3, "TtmlDecoder"

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 v1, 0x1

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    move-result v1

    .line 62
    const/4 v4, 0x2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 83
    .line 84
    .line 85
    invoke-direct {v4, v1, v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    .line 86
    return-object v4

    .line 87
    .line 88
    :cond_2
    new-instance v4, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 89
    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v6, "Invalid cell resolution "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, " "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    .line 135
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object p1
.end method

.method private static B(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "\\s+"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    .line 21
    if-ne v1, v2, :cond_5

    .line 22
    .line 23
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    aget-object v0, v0, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "TtmlDecoder"

    .line 32
    .line 33
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    const-string v4, "\'."

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    const/4 p0, 0x3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 62
    move-result v5

    .line 63
    const/4 v6, -0x1

    .line 64
    .line 65
    .line 66
    sparse-switch v5, :sswitch_data_0

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :sswitch_0
    const-string/jumbo v5, "px"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    .line 76
    if-nez v5, :cond_1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v6, v2

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :sswitch_1
    const-string v5, "em"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v5

    .line 86
    .line 87
    if-nez v5, :cond_2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v6, v3

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :sswitch_2
    const-string v5, "%"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-nez v5, :cond_3

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v6, 0x0

    .line 101
    .line 102
    .line 103
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 104
    .line 105
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v0, "Invalid unit for fontSize: \'"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    .line 131
    .line 132
    :pswitch_0
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->z(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 133
    goto :goto_2

    .line 134
    .line 135
    .line 136
    :pswitch_1
    invoke-virtual {p1, v2}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->z(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 137
    goto :goto_2

    .line 138
    .line 139
    .line 140
    :pswitch_2
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->z(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 149
    .line 150
    check-cast p0, Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 154
    move-result p0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->y(F)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 158
    return-void

    .line 159
    .line 160
    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    const-string v1, "Invalid expression for fontSize: \'"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 184
    throw p1

    .line 185
    .line 186
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 187
    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    const-string v1, "Invalid number of entries for fontSize: "

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    array-length v0, v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "."

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 213
    throw p0

    .line 214
    nop

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static C(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "frameRate"

    .line 3
    .line 4
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const/16 v0, 0x1e

    .line 18
    .line 19
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const-string v3, " "

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    aget-object v3, v2, v3

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    const/4 v4, 0x1

    .line 45
    .line 46
    aget-object v2, v2, v4

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    div-float/2addr v3, v2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 56
    .line 57
    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0

    .line 62
    .line 63
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    .line 65
    :goto_1
    sget-object v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 66
    .line 67
    iget v4, v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 68
    .line 69
    .line 70
    const-string/jumbo v5, "subFrameRate"

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    move-result v4

    .line 81
    .line 82
    :cond_3
    iget v2, v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 83
    .line 84
    .line 85
    const-string/jumbo v5, "tickRate"

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    if-eqz p0, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    move-result v2

    .line 96
    .line 97
    :cond_4
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 98
    int-to-float v0, v0

    .line 99
    mul-float/2addr v0, v3

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0, v4, v2}, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    .line 103
    return-object p0
.end method

.method private static D(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p3    # Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;",
            "Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "style"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->I(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->J(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    array-length v2, v0

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    :goto_0
    if-ge v3, v2, :cond_1

    .line 36
    .line 37
    aget-object v4, v0, v3

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    check-cast v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->a(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->g()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    const-string/jumbo v0, "region"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->G(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;)Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_3
    const-string v0, "metadata"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p5}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 92
    .line 93
    :cond_4
    :goto_1
    const-string v0, "head"

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    return-object p1
.end method

.method private static E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    const-string v0, "image"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "id"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    :cond_1
    const-string v0, "metadata"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    return-void
.end method

.method private static F(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 20
    .param p1    # Landroidx/media3/extractor/text/ttml/TtmlNode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    move-object/from16 v1, p3

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->I(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    move-object v10, v3

    .line 19
    move-object v12, v10

    .line 20
    move-object v11, v4

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    :goto_0
    if-ge v3, v2, :cond_8

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 46
    move-result-object v8

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 53
    move-result v19

    .line 54
    const/4 v6, 0x1

    .line 55
    .line 56
    .line 57
    sparse-switch v19, :sswitch_data_0

    .line 58
    :goto_1
    const/4 v7, -0x1

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :sswitch_0
    const-string v7, "backgroundImage"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-nez v4, :cond_0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v7, 0x5

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :sswitch_1
    const-string/jumbo v7, "style"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v4

    .line 78
    .line 79
    if-nez v4, :cond_1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v7, 0x4

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :sswitch_2
    const-string v7, "begin"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    .line 90
    if-nez v4, :cond_2

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/4 v7, 0x3

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :sswitch_3
    const-string v7, "end"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v4

    .line 100
    .line 101
    if-nez v4, :cond_3

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v7, 0x2

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :sswitch_4
    const-string v7, "dur"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v4

    .line 111
    .line 112
    if-nez v4, :cond_4

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move v7, v6

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :sswitch_5
    const-string/jumbo v7, "region"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v4

    .line 123
    .line 124
    if-nez v4, :cond_5

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v7, 0x0

    .line 127
    .line 128
    .line 129
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :pswitch_0
    const-string v4, "#"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    move-result-object v12

    .line 143
    .line 144
    :cond_6
    :goto_3
    move-object/from16 v4, p2

    .line 145
    goto :goto_4

    .line 146
    .line 147
    .line 148
    :pswitch_1
    invoke-static {v8}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->J(Ljava/lang/String;)[Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    array-length v6, v4

    .line 151
    .line 152
    if-lez v6, :cond_6

    .line 153
    move-object v10, v4

    .line 154
    goto :goto_3

    .line 155
    .line 156
    .line 157
    :pswitch_2
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->K(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 158
    move-result-wide v13

    .line 159
    goto :goto_3

    .line 160
    .line 161
    .line 162
    :pswitch_3
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->K(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 163
    move-result-wide v15

    .line 164
    goto :goto_3

    .line 165
    .line 166
    .line 167
    :pswitch_4
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->K(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 168
    move-result-wide v17

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :pswitch_5
    move-object/from16 v4, p2

    .line 172
    .line 173
    .line 174
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_7

    .line 178
    move-object v11, v8

    .line 179
    .line 180
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    if-eqz v9, :cond_b

    .line 185
    .line 186
    iget-wide v1, v9, Landroidx/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    .line 193
    cmp-long v6, v1, v3

    .line 194
    .line 195
    if-eqz v6, :cond_a

    .line 196
    .line 197
    cmp-long v6, v13, v3

    .line 198
    .line 199
    if-eqz v6, :cond_9

    .line 200
    add-long/2addr v13, v1

    .line 201
    .line 202
    :cond_9
    cmp-long v6, v15, v3

    .line 203
    .line 204
    if-eqz v6, :cond_a

    .line 205
    add-long/2addr v15, v1

    .line 206
    :cond_a
    :goto_5
    move-wide v1, v13

    .line 207
    goto :goto_6

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    :cond_b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    goto :goto_5

    .line 214
    .line 215
    :goto_6
    cmp-long v6, v15, v3

    .line 216
    .line 217
    if-nez v6, :cond_d

    .line 218
    .line 219
    cmp-long v6, v17, v3

    .line 220
    .line 221
    if-eqz v6, :cond_c

    .line 222
    .line 223
    add-long v17, v1, v17

    .line 224
    .line 225
    move-wide/from16 v3, v17

    .line 226
    goto :goto_7

    .line 227
    .line 228
    :cond_c
    if-eqz v9, :cond_d

    .line 229
    .line 230
    iget-wide v6, v9, Landroidx/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    .line 231
    .line 232
    cmp-long v3, v6, v3

    .line 233
    .line 234
    if-eqz v3, :cond_d

    .line 235
    move-wide v3, v6

    .line 236
    goto :goto_7

    .line 237
    :cond_d
    move-wide v3, v15

    .line 238
    .line 239
    .line 240
    :goto_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    move-object v6, v10

    .line 243
    move-object v7, v11

    .line 244
    move-object v8, v12

    .line 245
    .line 246
    move-object/from16 v9, p1

    .line 247
    .line 248
    .line 249
    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/text/ttml/TtmlNode;->c(Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    nop

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static G(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;)Landroidx/media3/extractor/text/ttml/TtmlRegion;
    .locals 17
    .param p2    # Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    const-string v2, "id"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    return-object v2

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string/jumbo v3, "origin"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    const-string v5, "TtmlDecoder"

    .line 24
    .line 25
    if-eqz v3, :cond_f

    .line 26
    .line 27
    sget-object v6, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    sget-object v8, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 41
    move-result v10

    .line 42
    .line 43
    const-string v11, "Ignoring region with missing tts:extent: "

    .line 44
    .line 45
    const-string v12, "Ignoring region with malformed origin: "

    .line 46
    .line 47
    const/high16 v13, 0x42c80000    # 100.0f

    .line 48
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x1

    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    move-result-object v9

    .line 56
    .line 57
    .line 58
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    check-cast v9, Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 65
    move-result v9

    .line 66
    div-float/2addr v9, v13

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    check-cast v7, Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 80
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    div-float/2addr v7, v13

    .line 82
    .line 83
    move/from16 v16, v9

    .line 84
    move v9, v7

    .line 85
    .line 86
    move/from16 v7, v16

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object v2

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 110
    move-result v7

    .line 111
    .line 112
    if-eqz v7, :cond_e

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object v2

    .line 134
    .line 135
    .line 136
    :cond_2
    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 137
    move-result-object v7

    .line 138
    .line 139
    .line 140
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v7

    .line 142
    .line 143
    check-cast v7, Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    move-result v7

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    .line 153
    .line 154
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    check-cast v9, Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    move-result v9

    .line 162
    int-to-float v7, v7

    .line 163
    .line 164
    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;->width:I

    .line 165
    int-to-float v10, v10

    .line 166
    div-float/2addr v7, v10

    .line 167
    int-to-float v9, v9

    .line 168
    .line 169
    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 170
    int-to-float v10, v10

    .line 171
    div-float/2addr v9, v10

    .line 172
    .line 173
    :goto_0
    const-string v10, "extent"

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v10}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v10

    .line 178
    .line 179
    if-eqz v10, :cond_d

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 183
    move-result-object v6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 187
    move-result-object v8

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 191
    move-result v10

    .line 192
    .line 193
    const-string v12, "Ignoring region with malformed extent: "

    .line 194
    .line 195
    if-eqz v10, :cond_3

    .line 196
    .line 197
    .line 198
    :try_start_2
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    check-cast v1, Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 209
    move-result v1

    .line 210
    div-float/2addr v1, v13

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 214
    move-result-object v6

    .line 215
    .line 216
    .line 217
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-result-object v6

    .line 219
    .line 220
    check-cast v6, Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 224
    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 225
    div-float/2addr v2, v13

    .line 226
    move v10, v2

    .line 227
    goto :goto_1

    .line 228
    .line 229
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object v2

    .line 247
    .line 248
    .line 249
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 250
    move-result v6

    .line 251
    .line 252
    if-eqz v6, :cond_c

    .line 253
    .line 254
    if-nez v1, :cond_4

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-object v2

    .line 274
    .line 275
    .line 276
    :cond_4
    :try_start_3
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 277
    move-result-object v6

    .line 278
    .line 279
    .line 280
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-result-object v6

    .line 282
    .line 283
    check-cast v6, Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 287
    move-result v6

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 291
    move-result-object v8

    .line 292
    .line 293
    .line 294
    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    move-result-object v8

    .line 296
    .line 297
    check-cast v8, Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 301
    move-result v8

    .line 302
    int-to-float v6, v6

    .line 303
    .line 304
    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;->width:I

    .line 305
    int-to-float v10, v10

    .line 306
    div-float/2addr v6, v10

    .line 307
    int-to-float v8, v8

    .line 308
    .line 309
    iget v1, v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 310
    int-to-float v1, v1

    .line 311
    div-float/2addr v8, v1

    .line 312
    move v1, v6

    .line 313
    move v10, v8

    .line 314
    .line 315
    :goto_1
    const-string v2, "displayAlign"

    .line 316
    .line 317
    .line 318
    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    const/4 v3, 0x0

    .line 321
    .line 322
    if-eqz v2, :cond_7

    .line 323
    .line 324
    .line 325
    invoke-static {v2}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 330
    .line 331
    const-string v5, "center"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v5

    .line 336
    .line 337
    if-nez v5, :cond_6

    .line 338
    .line 339
    const-string v5, "after"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    move-result v2

    .line 344
    .line 345
    if-nez v2, :cond_5

    .line 346
    goto :goto_2

    .line 347
    :cond_5
    add-float/2addr v9, v10

    .line 348
    .line 349
    move-object/from16 v2, p1

    .line 350
    move v6, v9

    .line 351
    move v8, v14

    .line 352
    goto :goto_3

    .line 353
    .line 354
    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    .line 355
    .line 356
    div-float v2, v10, v2

    .line 357
    add-float/2addr v9, v2

    .line 358
    .line 359
    move-object/from16 v2, p1

    .line 360
    move v6, v9

    .line 361
    move v8, v15

    .line 362
    goto :goto_3

    .line 363
    .line 364
    :cond_7
    :goto_2
    move-object/from16 v2, p1

    .line 365
    move v8, v3

    .line 366
    move v6, v9

    .line 367
    .line 368
    :goto_3
    iget v2, v2, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;->rows:I

    .line 369
    int-to-float v2, v2

    .line 370
    .line 371
    const/high16 v5, 0x3f800000    # 1.0f

    .line 372
    .line 373
    div-float v12, v5, v2

    .line 374
    .line 375
    .line 376
    const-string/jumbo v2, "writingMode"

    .line 377
    .line 378
    .line 379
    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    move-result-object v0

    .line 381
    .line 382
    if-eqz v0, :cond_b

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    move-result-object v0

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 393
    move-result v2

    .line 394
    const/4 v5, -0x1

    .line 395
    .line 396
    .line 397
    sparse-switch v2, :sswitch_data_0

    .line 398
    :goto_4
    move v3, v5

    .line 399
    goto :goto_5

    .line 400
    .line 401
    .line 402
    :sswitch_0
    const-string/jumbo v2, "tbrl"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    move-result v0

    .line 407
    .line 408
    if-nez v0, :cond_8

    .line 409
    goto :goto_4

    .line 410
    :cond_8
    move v3, v14

    .line 411
    goto :goto_5

    .line 412
    .line 413
    .line 414
    :sswitch_1
    const-string/jumbo v2, "tblr"

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    move-result v0

    .line 419
    .line 420
    if-nez v0, :cond_9

    .line 421
    goto :goto_4

    .line 422
    :cond_9
    move v3, v15

    .line 423
    goto :goto_5

    .line 424
    .line 425
    .line 426
    :sswitch_2
    const-string/jumbo v2, "tb"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v0

    .line 431
    .line 432
    if-nez v0, :cond_a

    .line 433
    goto :goto_4

    .line 434
    .line 435
    .line 436
    :cond_a
    :goto_5
    packed-switch v3, :pswitch_data_0

    .line 437
    goto :goto_6

    .line 438
    :pswitch_0
    move v13, v15

    .line 439
    goto :goto_7

    .line 440
    :pswitch_1
    move v13, v14

    .line 441
    goto :goto_7

    .line 442
    .line 443
    :cond_b
    :goto_6
    const/high16 v0, -0x80000000

    .line 444
    move v13, v0

    .line 445
    .line 446
    :goto_7
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 447
    const/4 v2, 0x0

    .line 448
    const/4 v11, 0x1

    .line 449
    move-object v3, v0

    .line 450
    move v5, v7

    .line 451
    move v7, v2

    .line 452
    move v9, v1

    .line 453
    .line 454
    .line 455
    invoke-direct/range {v3 .. v13}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 456
    return-object v0

    .line 457
    .line 458
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 472
    .line 473
    .line 474
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-object v2

    .line 476
    .line 477
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    const-string v1, "Ignoring region with unsupported extent: "

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    move-result-object v0

    .line 493
    .line 494
    .line 495
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-object v2

    .line 497
    .line 498
    :cond_d
    const-string v0, "Ignoring region without an extent"

    .line 499
    .line 500
    .line 501
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-object v2

    .line 503
    .line 504
    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v0

    .line 518
    .line 519
    .line 520
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-object v2

    .line 522
    .line 523
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    const-string v1, "Ignoring region with unsupported origin: "

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 539
    .line 540
    .line 541
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-object v2

    .line 543
    .line 544
    :cond_f
    const-string v0, "Ignoring region without an origin"

    .line 545
    .line 546
    .line 547
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-object v2

    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static H(Ljava/lang/String;)F
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 14
    .line 15
    const-string v3, "TtmlDecoder"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "Invalid value for shear: "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v2

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 53
    move-result v0

    .line 54
    .line 55
    const/high16 v1, -0x3d380000    # -100.0f

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 59
    move-result v0

    .line 60
    .line 61
    const/high16 v1, 0x42c80000    # 100.0f

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return p0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v4, "Failed to parse shear: "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-static {v3, p0, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return v2
.end method

.method private static I(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_1e

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x5

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, -0x1

    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x2

    .line 29
    const/4 v11, 0x1

    .line 30
    .line 31
    .line 32
    sparse-switch v5, :sswitch_data_0

    .line 33
    :goto_1
    move v4, v8

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :sswitch_0
    const-string v5, "multiRowAlign"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    const/16 v4, 0xe

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :sswitch_1
    const-string v5, "backgroundColor"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v4

    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const/16 v4, 0xd

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    .line 64
    :sswitch_2
    const-string/jumbo v5, "rubyPosition"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    .line 70
    if-nez v4, :cond_2

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_2
    const/16 v4, 0xc

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    .line 78
    :sswitch_3
    const-string/jumbo v5, "textEmphasis"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-nez v4, :cond_3

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_3
    const/16 v4, 0xb

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :sswitch_4
    const-string v5, "fontSize"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    if-nez v4, :cond_4

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_4
    const/16 v4, 0xa

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    .line 105
    :sswitch_5
    const-string/jumbo v5, "textCombine"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v4

    .line 110
    .line 111
    if-nez v4, :cond_5

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_5
    const/16 v4, 0x9

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    .line 119
    :sswitch_6
    const-string/jumbo v5, "shear"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v4

    .line 124
    .line 125
    if-nez v4, :cond_6

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_6
    const/16 v4, 0x8

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :sswitch_7
    const-string v5, "color"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-nez v4, :cond_7

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const/4 v4, 0x7

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :sswitch_8
    const-string/jumbo v5, "ruby"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-nez v4, :cond_8

    .line 151
    goto :goto_1

    .line 152
    :cond_8
    const/4 v4, 0x6

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :sswitch_9
    const-string v5, "id"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v4

    .line 160
    .line 161
    if-nez v4, :cond_9

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    :cond_9
    move v4, v6

    .line 165
    goto :goto_2

    .line 166
    .line 167
    :sswitch_a
    const-string v5, "fontWeight"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v4

    .line 172
    .line 173
    if-nez v4, :cond_a

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    :cond_a
    move v4, v7

    .line 177
    goto :goto_2

    .line 178
    .line 179
    .line 180
    :sswitch_b
    const-string/jumbo v5, "textDecoration"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v4

    .line 185
    .line 186
    if-nez v4, :cond_b

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    :cond_b
    move v4, v9

    .line 190
    goto :goto_2

    .line 191
    .line 192
    .line 193
    :sswitch_c
    const-string/jumbo v5, "textAlign"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v4

    .line 198
    .line 199
    if-nez v4, :cond_c

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    :cond_c
    move v4, v10

    .line 203
    goto :goto_2

    .line 204
    .line 205
    :sswitch_d
    const-string v5, "fontFamily"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v4

    .line 210
    .line 211
    if-nez v4, :cond_d

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    :cond_d
    move v4, v11

    .line 215
    goto :goto_2

    .line 216
    .line 217
    :sswitch_e
    const-string v5, "fontStyle"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v4

    .line 222
    .line 223
    if-nez v4, :cond_e

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    :cond_e
    move v4, v1

    .line 227
    .line 228
    :goto_2
    const-string v5, "TtmlDecoder"

    .line 229
    .line 230
    .line 231
    packed-switch v4, :pswitch_data_0

    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    .line 236
    :pswitch_0
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->z(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 241
    move-result-object v3

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->D(Landroid/text/Layout$Alignment;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    goto/16 :goto_6

    .line 248
    .line 249
    .line 250
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    :try_start_0
    invoke-static {v3}, Landroidx/media3/common/util/ColorParser;->c(Ljava/lang/String;)I

    .line 255
    move-result v4

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->u(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    const-string v6, "Failed parsing background value: "

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v3

    .line 278
    .line 279
    .line 280
    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    .line 285
    :pswitch_2
    invoke-static {v3}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object v3

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 290
    .line 291
    const-string v4, "before"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v4

    .line 296
    .line 297
    if-nez v4, :cond_10

    .line 298
    .line 299
    const-string v4, "after"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v3

    .line 304
    .line 305
    if-nez v3, :cond_f

    .line 306
    .line 307
    goto/16 :goto_6

    .line 308
    .line 309
    .line 310
    :cond_f
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 311
    move-result-object p1

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v10}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->E(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    goto/16 :goto_6

    .line 318
    .line 319
    .line 320
    :cond_10
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->E(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    .line 330
    :pswitch_3
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 331
    move-result-object p1

    .line 332
    .line 333
    .line 334
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TextEmphasis;->a(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 335
    move-result-object v3

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->J(Landroidx/media3/extractor/text/ttml/TextEmphasis;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    goto/16 :goto_6

    .line 342
    .line 343
    .line 344
    :pswitch_4
    :try_start_1
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 345
    move-result-object p1

    .line 346
    .line 347
    .line 348
    invoke-static {v3, p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->B(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    .line 350
    goto/16 :goto_6

    .line 351
    .line 352
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    const-string v6, "Failed parsing fontSize value: "

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object v3

    .line 368
    .line 369
    .line 370
    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    goto/16 :goto_6

    .line 373
    .line 374
    .line 375
    :pswitch_5
    invoke-static {v3}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    move-result-object v3

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 380
    .line 381
    const-string v4, "all"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result v4

    .line 386
    .line 387
    if-nez v4, :cond_12

    .line 388
    .line 389
    .line 390
    const-string/jumbo v4, "none"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v3

    .line 395
    .line 396
    if-nez v3, :cond_11

    .line 397
    .line 398
    goto/16 :goto_6

    .line 399
    .line 400
    .line 401
    :cond_11
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 402
    move-result-object p1

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->I(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 406
    move-result-object p1

    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    .line 411
    :cond_12
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->I(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 416
    move-result-object p1

    .line 417
    .line 418
    goto/16 :goto_6

    .line 419
    .line 420
    .line 421
    :pswitch_6
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 422
    move-result-object p1

    .line 423
    .line 424
    .line 425
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->H(Ljava/lang/String;)F

    .line 426
    move-result v3

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->G(F)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 430
    move-result-object p1

    .line 431
    .line 432
    goto/16 :goto_6

    .line 433
    .line 434
    .line 435
    :pswitch_7
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 436
    move-result-object p1

    .line 437
    .line 438
    .line 439
    :try_start_2
    invoke-static {v3}, Landroidx/media3/common/util/ColorParser;->c(Ljava/lang/String;)I

    .line 440
    move-result v4

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1, v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->w(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 444
    .line 445
    goto/16 :goto_6

    .line 446
    .line 447
    :catch_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    const-string v6, "Failed parsing color value: "

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    move-result-object v3

    .line 463
    .line 464
    .line 465
    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    goto/16 :goto_6

    .line 468
    .line 469
    .line 470
    :pswitch_8
    invoke-static {v3}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-result-object v3

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 478
    move-result v4

    .line 479
    .line 480
    .line 481
    sparse-switch v4, :sswitch_data_1

    .line 482
    :goto_3
    move v6, v8

    .line 483
    goto :goto_4

    .line 484
    .line 485
    .line 486
    :sswitch_f
    const-string/jumbo v4, "text"

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    move-result v3

    .line 491
    .line 492
    if-nez v3, :cond_18

    .line 493
    goto :goto_3

    .line 494
    .line 495
    :sswitch_10
    const-string v4, "base"

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    move-result v3

    .line 500
    .line 501
    if-nez v3, :cond_13

    .line 502
    goto :goto_3

    .line 503
    :cond_13
    move v6, v7

    .line 504
    goto :goto_4

    .line 505
    .line 506
    .line 507
    :sswitch_11
    const-string/jumbo v4, "textContainer"

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    move-result v3

    .line 512
    .line 513
    if-nez v3, :cond_14

    .line 514
    goto :goto_3

    .line 515
    :cond_14
    move v6, v9

    .line 516
    goto :goto_4

    .line 517
    .line 518
    :sswitch_12
    const-string v4, "delimiter"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    move-result v3

    .line 523
    .line 524
    if-nez v3, :cond_15

    .line 525
    goto :goto_3

    .line 526
    :cond_15
    move v6, v10

    .line 527
    goto :goto_4

    .line 528
    .line 529
    :sswitch_13
    const-string v4, "container"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    move-result v3

    .line 534
    .line 535
    if-nez v3, :cond_16

    .line 536
    goto :goto_3

    .line 537
    :cond_16
    move v6, v11

    .line 538
    goto :goto_4

    .line 539
    .line 540
    :sswitch_14
    const-string v4, "baseContainer"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    move-result v3

    .line 545
    .line 546
    if-nez v3, :cond_17

    .line 547
    goto :goto_3

    .line 548
    :cond_17
    move v6, v1

    .line 549
    .line 550
    .line 551
    :cond_18
    :goto_4
    packed-switch v6, :pswitch_data_1

    .line 552
    .line 553
    goto/16 :goto_6

    .line 554
    .line 555
    .line 556
    :pswitch_9
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 557
    move-result-object p1

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1, v9}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->F(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 561
    move-result-object p1

    .line 562
    .line 563
    goto/16 :goto_6

    .line 564
    .line 565
    .line 566
    :pswitch_a
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 567
    move-result-object p1

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->F(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 571
    move-result-object p1

    .line 572
    .line 573
    goto/16 :goto_6

    .line 574
    .line 575
    .line 576
    :pswitch_b
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 577
    move-result-object p1

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->F(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 581
    move-result-object p1

    .line 582
    .line 583
    goto/16 :goto_6

    .line 584
    .line 585
    .line 586
    :pswitch_c
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 587
    move-result-object p1

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1, v10}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->F(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 591
    move-result-object p1

    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    .line 596
    :pswitch_d
    const-string/jumbo v4, "style"

    .line 597
    .line 598
    .line 599
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 600
    move-result-object v5

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    move-result v4

    .line 605
    .line 606
    if-eqz v4, :cond_1d

    .line 607
    .line 608
    .line 609
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 610
    move-result-object p1

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->A(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 614
    move-result-object p1

    .line 615
    .line 616
    goto/16 :goto_6

    .line 617
    .line 618
    .line 619
    :pswitch_e
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 620
    move-result-object p1

    .line 621
    .line 622
    const-string v4, "bold"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 626
    move-result v3

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->v(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 630
    move-result-object p1

    .line 631
    .line 632
    goto/16 :goto_6

    .line 633
    .line 634
    .line 635
    :pswitch_f
    invoke-static {v3}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    move-result-object v3

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 643
    move-result v4

    .line 644
    .line 645
    .line 646
    sparse-switch v4, :sswitch_data_2

    .line 647
    goto :goto_5

    .line 648
    .line 649
    :sswitch_15
    const-string v4, "linethrough"

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    move-result v3

    .line 654
    .line 655
    if-nez v3, :cond_19

    .line 656
    goto :goto_5

    .line 657
    :cond_19
    move v8, v9

    .line 658
    goto :goto_5

    .line 659
    .line 660
    .line 661
    :sswitch_16
    const-string/jumbo v4, "nolinethrough"

    .line 662
    .line 663
    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    move-result v3

    .line 666
    .line 667
    if-nez v3, :cond_1a

    .line 668
    goto :goto_5

    .line 669
    :cond_1a
    move v8, v10

    .line 670
    goto :goto_5

    .line 671
    .line 672
    .line 673
    :sswitch_17
    const-string/jumbo v4, "underline"

    .line 674
    .line 675
    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    move-result v3

    .line 678
    .line 679
    if-nez v3, :cond_1b

    .line 680
    goto :goto_5

    .line 681
    :cond_1b
    move v8, v11

    .line 682
    goto :goto_5

    .line 683
    .line 684
    .line 685
    :sswitch_18
    const-string/jumbo v4, "nounderline"

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    move-result v3

    .line 690
    .line 691
    if-nez v3, :cond_1c

    .line 692
    goto :goto_5

    .line 693
    :cond_1c
    move v8, v1

    .line 694
    .line 695
    .line 696
    :goto_5
    packed-switch v8, :pswitch_data_2

    .line 697
    goto :goto_6

    .line 698
    .line 699
    .line 700
    :pswitch_10
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 701
    move-result-object p1

    .line 702
    .line 703
    .line 704
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->C(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 705
    move-result-object p1

    .line 706
    goto :goto_6

    .line 707
    .line 708
    .line 709
    :pswitch_11
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 710
    move-result-object p1

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->C(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 714
    move-result-object p1

    .line 715
    goto :goto_6

    .line 716
    .line 717
    .line 718
    :pswitch_12
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 719
    move-result-object p1

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->K(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 723
    move-result-object p1

    .line 724
    goto :goto_6

    .line 725
    .line 726
    .line 727
    :pswitch_13
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 728
    move-result-object p1

    .line 729
    .line 730
    .line 731
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->K(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 732
    move-result-object p1

    .line 733
    goto :goto_6

    .line 734
    .line 735
    .line 736
    :pswitch_14
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 737
    move-result-object p1

    .line 738
    .line 739
    .line 740
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->z(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 741
    move-result-object v3

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->H(Landroid/text/Layout$Alignment;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 745
    move-result-object p1

    .line 746
    goto :goto_6

    .line 747
    .line 748
    .line 749
    :pswitch_15
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 750
    move-result-object p1

    .line 751
    .line 752
    .line 753
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->x(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 754
    move-result-object p1

    .line 755
    goto :goto_6

    .line 756
    .line 757
    .line 758
    :pswitch_16
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 759
    move-result-object p1

    .line 760
    .line 761
    const-string v4, "italic"

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 765
    move-result v3

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->B(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 769
    move-result-object p1

    .line 770
    .line 771
    :cond_1d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 772
    .line 773
    goto/16 :goto_0

    .line 774
    :cond_1e
    return-object p1

    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_14
        -0x187eb37f -> :sswitch_13
        -0xeee99f9 -> :sswitch_12
        -0x81c562c -> :sswitch_11
        0x2e06d1 -> :sswitch_10
        0x36452d -> :sswitch_f
    .end sparse-switch

    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_18
        -0x3d363934 -> :sswitch_17
        0x36723ff0 -> :sswitch_16
        0x641ec051 -> :sswitch_15
    .end sparse-switch

    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static J(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    .line 13
    new-array p0, p0, [Ljava/lang/String;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v0, "\\s+"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    :goto_0
    return-object p0
.end method

.method private static K(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    move-result-wide v7

    .line 36
    .line 37
    const-wide/16 v9, 0xe10

    .line 38
    mul-long/2addr v7, v9

    .line 39
    long-to-double v7, v7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    move-result-wide v9

    .line 54
    .line 55
    const-wide/16 v11, 0x3c

    .line 56
    mul-long/2addr v9, v11

    .line 57
    long-to-double v9, v9

    .line 58
    add-double/2addr v7, v9

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    check-cast p0, Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    move-result-wide v5

    .line 73
    long-to-double v5, v5

    .line 74
    add-double/2addr v7, v5

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    if-eqz p0, :cond_0

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 86
    move-result-wide v9

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-wide v9, v4

    .line 89
    :goto_0
    add-double/2addr v7, v9

    .line 90
    const/4 p0, 0x5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    if-eqz p0, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    move-result-wide v9

    .line 101
    long-to-float p0, v9

    .line 102
    .line 103
    iget v1, p1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 104
    div-float/2addr p0, v1

    .line 105
    float-to-double v9, p0

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-wide v9, v4

    .line 108
    :goto_1
    add-double/2addr v7, v9

    .line 109
    const/4 p0, 0x6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    .line 115
    if-eqz p0, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    move-result-wide v0

    .line 120
    long-to-double v0, v0

    .line 121
    .line 122
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 123
    int-to-double v4, p0

    .line 124
    div-double/2addr v0, v4

    .line 125
    .line 126
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 127
    float-to-double p0, p0

    .line 128
    .line 129
    div-double v4, v0, p0

    .line 130
    :cond_2
    add-double/2addr v7, v4

    .line 131
    mul-double/2addr v7, v2

    .line 132
    double-to-long p0, v7

    .line 133
    return-wide p0

    .line 134
    .line 135
    :cond_3
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 143
    move-result v1

    .line 144
    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    .line 151
    .line 152
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 154
    .line 155
    check-cast p0, Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 159
    move-result-wide v8

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    .line 165
    .line 166
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-result-object p0

    .line 168
    .line 169
    check-cast p0, Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 176
    move-result v0

    .line 177
    const/4 v1, -0x1

    .line 178
    .line 179
    .line 180
    sparse-switch v0, :sswitch_data_0

    .line 181
    :goto_2
    move v4, v1

    .line 182
    goto :goto_3

    .line 183
    .line 184
    :sswitch_0
    const-string v0, "ms"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result p0

    .line 189
    .line 190
    if-nez p0, :cond_8

    .line 191
    goto :goto_2

    .line 192
    .line 193
    .line 194
    :sswitch_1
    const-string/jumbo v0, "t"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result p0

    .line 199
    .line 200
    if-nez p0, :cond_4

    .line 201
    goto :goto_2

    .line 202
    :cond_4
    move v4, v5

    .line 203
    goto :goto_3

    .line 204
    .line 205
    :sswitch_2
    const-string v0, "m"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result p0

    .line 210
    .line 211
    if-nez p0, :cond_5

    .line 212
    goto :goto_2

    .line 213
    :cond_5
    move v4, v6

    .line 214
    goto :goto_3

    .line 215
    .line 216
    :sswitch_3
    const-string v0, "h"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result p0

    .line 221
    .line 222
    if-nez p0, :cond_6

    .line 223
    goto :goto_2

    .line 224
    :cond_6
    move v4, v7

    .line 225
    goto :goto_3

    .line 226
    .line 227
    :sswitch_4
    const-string v0, "f"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p0

    .line 232
    .line 233
    if-nez p0, :cond_7

    .line 234
    goto :goto_2

    .line 235
    :cond_7
    const/4 v4, 0x0

    .line 236
    .line 237
    .line 238
    :cond_8
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 239
    goto :goto_6

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 245
    :goto_4
    div-double/2addr v8, p0

    .line 246
    goto :goto_6

    .line 247
    .line 248
    :pswitch_1
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 249
    int-to-double p0, p0

    .line 250
    goto :goto_4

    .line 251
    .line 252
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 253
    :goto_5
    mul-double/2addr v8, p0

    .line 254
    goto :goto_6

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 260
    goto :goto_5

    .line 261
    .line 262
    :pswitch_4
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 263
    float-to-double p0, p0

    .line 264
    goto :goto_4

    .line 265
    :goto_6
    mul-double/2addr v8, v2

    .line 266
    double-to-long p0, v8

    .line 267
    return-wide p0

    .line 268
    .line 269
    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    const-string v1, "Malformed time expression: "

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object p0

    .line 287
    .line 288
    .line 289
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 290
    throw p1

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static L(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "extent"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    const-string v3, "TtmlDecoder"

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v2, "Ignoring non-pixel tts extent: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 46
    :cond_1
    const/4 v2, 0x1

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    move-result v2

    .line 61
    const/4 v4, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result v1

    .line 76
    .line 77
    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v2, v1}, Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v4

    .line 82
    .line 83
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v2, "Ignoring malformed tts extent: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method private static x(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 0
    .param p0    # Landroidx/media3/extractor/text/ttml/TtmlStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    .line 8
    :cond_0
    return-object p0
.end method

.method private static y(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tt"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "head"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "body"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "div"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "p"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "span"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "br"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "style"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "styling"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const-string v0, "layout"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    .line 88
    const-string/jumbo v0, "region"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-nez v0, :cond_1

    .line 95
    .line 96
    const-string v0, "metadata"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    const-string v0, "image"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-nez v0, :cond_1

    .line 111
    .line 112
    const-string v0, "data"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    const-string v0, "information"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result p0

    .line 125
    .line 126
    if-eqz p0, :cond_0

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    const/4 p0, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 131
    :goto_1
    return p0
.end method

.method private static z(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :sswitch_0
    const-string/jumbo v0, "start"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :sswitch_1
    const-string/jumbo v0, "right"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x3

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :sswitch_2
    const-string v0, "left"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :sswitch_3
    const-string v0, "end"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p0

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :sswitch_4
    const-string v0, "center"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p0

    .line 69
    .line 70
    if-nez p0, :cond_4

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v1, 0x0

    .line 73
    .line 74
    .line 75
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 76
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    .line 79
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 80
    return-object p0

    .line 81
    .line 82
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 83
    return-object p0

    .line 84
    .line 85
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 86
    return-object p0

    .line 87
    .line 88
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected v([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    :try_start_0
    iget-object v2, v1, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    new-instance v9, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    new-instance v10, Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    new-instance v11, Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    new-instance v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v0}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    move-object/from16 v4, p1

    .line 39
    .line 40
    move/from16 v5, p2

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v4, v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    .line 49
    new-instance v12, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    .line 52
    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 56
    move-result v0

    .line 57
    .line 58
    sget-object v5, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 59
    .line 60
    sget-object v6, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 61
    move v13, v3

    .line 62
    move-object v14, v4

    .line 63
    :goto_0
    const/4 v3, 0x1

    .line 64
    .line 65
    if-eq v0, v3, :cond_a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 72
    const/4 v8, 0x2

    .line 73
    .line 74
    if-nez v13, :cond_7

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    const-string/jumbo v7, "tt"

    .line 82
    .line 83
    if-ne v0, v8, :cond_4

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->C(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v0}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->A(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->L(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    :cond_0
    move-object/from16 v16, v4

    .line 106
    move-object v8, v5

    .line 107
    .line 108
    move-object/from16 v17, v6

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-static {v15}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->y(Ljava/lang/String;)Z

    .line 119
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    const-string v4, "TtmlDecoder"

    .line 122
    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v3, "Ignoring unsupported tag: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    add-int/lit8 v13, v13, 0x1

    .line 150
    move-object v5, v8

    .line 151
    .line 152
    :goto_2
    move-object/from16 v4, v16

    .line 153
    .line 154
    move-object/from16 v6, v17

    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_1
    const-string v0, "head"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v0

    .line 163
    .line 164
    if-eqz v0, :cond_2

    .line 165
    move-object v3, v2

    .line 166
    move-object v4, v9

    .line 167
    .line 168
    move-object/from16 v5, v17

    .line 169
    .line 170
    move-object/from16 v6, v16

    .line 171
    move-object v7, v10

    .line 172
    move-object v15, v8

    .line 173
    move-object v8, v11

    .line 174
    .line 175
    .line 176
    invoke-static/range {v3 .. v8}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->D(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;Landroidx/media3/extractor/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    move-object v15, v8

    .line 179
    .line 180
    .line 181
    :try_start_3
    invoke-static {v2, v3, v10, v15}, Landroidx/media3/extractor/text/ttml/TtmlDecoder;->F(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlDecoder$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 186
    .line 187
    if-eqz v3, :cond_3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->a(Landroidx/media3/extractor/text/ttml/TtmlNode;)V
    :try_end_3
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    goto :goto_3

    .line 192
    :catch_2
    move-exception v0

    .line 193
    goto :goto_4

    .line 194
    :cond_3
    :goto_3
    move-object v5, v15

    .line 195
    goto :goto_2

    .line 196
    .line 197
    :goto_4
    :try_start_4
    const-string v3, "Suppressing parser error"

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v3, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    add-int/lit8 v13, v13, 0x1

    .line 203
    goto :goto_3

    .line 204
    :cond_4
    const/4 v8, 0x4

    .line 205
    .line 206
    if-ne v0, v8, :cond_5

    .line 207
    .line 208
    .line 209
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 213
    .line 214
    .line 215
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->d(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->a(Landroidx/media3/extractor/text/ttml/TtmlNode;)V

    .line 224
    goto :goto_5

    .line 225
    :cond_5
    const/4 v3, 0x3

    .line 226
    .line 227
    if-ne v0, v3, :cond_9

    .line 228
    .line 229
    .line 230
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v0

    .line 236
    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    new-instance v14, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 244
    .line 245
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 252
    .line 253
    .line 254
    invoke-direct {v14, v0, v9, v10, v11}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;-><init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 258
    goto :goto_5

    .line 259
    .line 260
    :cond_7
    if-ne v0, v8, :cond_8

    .line 261
    .line 262
    add-int/lit8 v13, v13, 0x1

    .line 263
    goto :goto_5

    .line 264
    :cond_8
    const/4 v3, 0x3

    .line 265
    .line 266
    if-ne v0, v3, :cond_9

    .line 267
    .line 268
    add-int/lit8 v13, v13, -0x1

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 272
    .line 273
    .line 274
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 275
    move-result v0

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_a
    if-eqz v14, :cond_b

    .line 280
    return-object v14

    .line 281
    .line 282
    :cond_b
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 283
    .line 284
    const-string v2, "No TTML subtitles found"

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v2}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 288
    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 289
    .line 290
    :goto_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 291
    .line 292
    const-string v3, "Unexpected error when reading input."

    .line 293
    .line 294
    .line 295
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    throw v2

    .line 297
    .line 298
    :goto_7
    new-instance v2, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 299
    .line 300
    const-string v3, "Unable to decode source"

    .line 301
    .line 302
    .line 303
    invoke-direct {v2, v3, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    throw v2
.end method
