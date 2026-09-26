.class public final Landroidx/media3/extractor/text/webvtt/WebvttDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

.field private final parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "WebvttDecoder"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 20
    return-void
.end method

.method private static x(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    move v3, v1

    .line 5
    .line 6
    :goto_0
    if-ne v2, v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 10
    move-result v3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->s()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string v4, "STYLE"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    const/4 v2, 0x2

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    const-string v4, "NOTE"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x3

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 44
    return v2
.end method

.method private static y(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->s()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method protected v([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->S([BI)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->e(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->s()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    :cond_1
    :goto_1
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->x(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 39
    move-result p3

    .line 40
    .line 41
    if-eqz p3, :cond_5

    .line 42
    const/4 v0, 0x1

    .line 43
    .line 44
    if-ne p3, v0, :cond_2

    .line 45
    .line 46
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->y(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v0, 0x2

    .line 52
    .line 53
    if-ne p3, v0, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result p3

    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->s()Ljava/lang/String;

    .line 65
    .line 66
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->d(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/List;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_3
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 79
    .line 80
    const-string p2, "A style block was found after the first cue."

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p2}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p1

    .line 85
    :cond_4
    const/4 v0, 0x3

    .line 86
    .line 87
    if-ne p3, v0, :cond_1

    .line 88
    .line 89
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 90
    .line 91
    .line 92
    invoke-static {p3, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->m(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    if-eqz p3, :cond_1

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_5
    new-instance p1, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    .line 105
    return-object p1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    .line 108
    new-instance p2, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    throw p2
.end method
