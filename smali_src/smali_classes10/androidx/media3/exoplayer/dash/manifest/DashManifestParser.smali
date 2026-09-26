.class public Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "CC([1-4])=.*"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const/16 v0, 0x15

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    sput-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v1
.end method

.method protected static C(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-object v3, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    const/4 p0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v3, "Unable to parse CEA-608 channel number from: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "MpdParser"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p0, -0x1

    .line 78
    return p0
.end method

.method protected static D(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-object v3, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    const/4 p0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v3, "Unable to parse CEA-708 service block number from: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "MpdParser"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p0, -0x1

    .line 78
    return p0
.end method

.method protected static G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-wide p2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Util;->R0(Ljava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "schemeIdUri"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "value"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v3, "id"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v3, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    new-instance p0, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object p0
.end method

.method protected static I(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "value"

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    .line 27
    sparse-switch v1, :sswitch_data_0

    .line 28
    :goto_0
    move p0, v0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v1, "fa01"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :sswitch_1
    const-string v1, "f801"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move p0, v2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :sswitch_2
    const-string v1, "a000"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p0

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move p0, v3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :sswitch_3
    const-string v1, "4000"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p0

    .line 69
    .line 70
    if-nez p0, :cond_4

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 p0, 0x0

    .line 73
    .line 74
    .line 75
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 76
    return v0

    .line 77
    .line 78
    :pswitch_0
    const/16 p0, 0x8

    .line 79
    return p0

    .line 80
    :pswitch_1
    const/4 p0, 0x6

    .line 81
    return p0

    .line 82
    :pswitch_2
    return v2

    .line 83
    :pswitch_3
    return v3

    .line 84
    nop

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static J(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 7
    move-result p0

    .line 8
    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x21

    .line 12
    .line 13
    if-ge p0, v0, :cond_0

    .line 14
    move v1, p0

    .line 15
    :cond_0
    return v1
.end method

.method protected static K(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "value"

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x10

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 17
    move-result p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 21
    move-result p0

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, p0

    .line 26
    :goto_0
    return v0
.end method

.method protected static L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-wide p2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/Util;->S0(Ljava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static M(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v3, "JOC"

    .line 26
    .line 27
    iget-object v4, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    :cond_0
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const-string v2, "ec+3"

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    :cond_1
    const-string p0, "audio/eac3-joc"

    .line 54
    return-object p0

    .line 55
    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    const-string p0, "audio/eac3"

    .line 60
    return-object p0
.end method

.method protected static Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    move-result p2

    .line 13
    :goto_0
    return p2
.end method

.method protected static R(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "frameRate"

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    int-to-float p1, p1

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    div-float/2addr p1, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    int-to-float p1, p1

    .line 51
    :cond_1
    :goto_0
    return p1
.end method

.method protected static T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p2

    .line 13
    :goto_0
    return p2
.end method

.method protected static V(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)J"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "http://dashif.org/guidelines/last-segment-number"

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v2}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object p0, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 29
    move-result-wide v0

    .line 30
    return-wide v0

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-wide/16 v0, -0x1

    .line 36
    return-wide v0
.end method

.method protected static W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p2

    .line 13
    :goto_0
    return-wide p2
.end method

.method protected static Y(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 7
    move-result p0

    .line 8
    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    .line 12
    array-length v2, v0

    .line 13
    .line 14
    if-ge p0, v2, :cond_0

    .line 15
    .line 16
    aget v1, v0, p0

    .line 17
    :cond_0
    return v1
.end method

.method private a(Ljava/util/List;JJIJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJIJ)J"
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p6, :cond_0

    .line 3
    .line 4
    add-int/lit8 p6, p6, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sub-long/2addr p7, p2

    .line 7
    .line 8
    .line 9
    invoke-static {p7, p8, p4, p5}, Landroidx/media3/common/util/Util;->m(JJ)J

    .line 10
    move-result-wide p6

    .line 11
    long-to-int p6, p6

    .line 12
    :goto_0
    const/4 p7, 0x0

    .line 13
    .line 14
    :goto_1
    if-ge p7, p6, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->l(JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 18
    move-result-object p8

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-long/2addr p2, p4

    .line 23
    .line 24
    add-int/lit8 p7, p7, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return-wide p2
.end method

.method private static o(II)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    if-ne p1, v0, :cond_1

    .line 7
    return p0

    .line 8
    .line 9
    :cond_1
    if-ne p0, p1, :cond_2

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 16
    return p0
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-object p0

    .line 7
    .line 8
    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 14
    return-object p0
.end method

.method private static q(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 15
    .line 16
    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 17
    .line 18
    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    .line 38
    :goto_1
    if-nez v2, :cond_2

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v1

    .line 44
    .line 45
    if-ge v0, v1, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 52
    .line 53
    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 54
    .line 55
    iget-object v4, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    iget-object v3, v1, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 68
    .line 69
    sget-object v4, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 70
    .line 71
    iget-object v5, v1, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v4, v2, v5, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    return-void
.end method

.method protected static q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, p0

    .line 10
    :goto_0
    return-object p2
.end method

.method private static r(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/common/DrmInitData$SchemeData;->e()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v3

    .line 26
    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroidx/media3/common/DrmInitData$SchemeData;->a(Landroidx/media3/common/DrmInitData$SchemeData;)Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method protected static r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    return-object v0
.end method

.method private static s(JJ)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method private static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->s(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->r(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    return-object p0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    return-object p0

    .line 37
    .line 38
    :cond_3
    const-string v0, "application/mp4"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    const-string p1, "text/vtt"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    const-string p0, "application/x-mp4-vtt"

    .line 59
    :cond_4
    return-object p0

    .line 60
    :cond_5
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method private u([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v3

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method public static v(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/XmlPullParserUtil;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Landroidx/media3/common/util/XmlPullParserUtil;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    return-void
.end method


# virtual methods
.method protected A(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "availabilityTimeOffset"

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-wide p2

    .line 11
    .line 12
    :cond_0
    const-string p2, "INF"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide p1, 0x7fffffffffffffffL

    .line 24
    return-wide p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    const p2, 0x49742400    # 1000000.0f

    .line 32
    mul-float/2addr p1, p2

    .line 33
    float-to-long p1, p1

    .line 34
    return-wide p1
.end method

.method protected B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "dvb:priority"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x1

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
    if-eqz p3, :cond_1

    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    const/high16 v0, -0x80000000

    .line 22
    .line 23
    :goto_0
    const-string v3, "dvb:weight"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    move-result v3

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v3, v2

    .line 36
    .line 37
    :goto_1
    const-string v4, "serviceLocation"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v4, "BaseURL"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroidx/media3/common/util/UriUtil;->b(Ljava/lang/String;)Z

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    move-object v1, p1

    .line 58
    .line 59
    :cond_3
    new-array p2, v2, [Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 60
    .line 61
    new-instance p3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 62
    .line 63
    .line 64
    invoke-direct {p3, p1, v1, v0, v3}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    .line 66
    aput-object p3, p2, v5

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/google/common/collect/k0;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    .line 73
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    move-result v4

    .line 81
    .line 82
    if-ge v5, v4, :cond_7

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 89
    .line 90
    iget-object v6, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-static {v6, p1}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    move-object v7, v6

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move-object v7, v1

    .line 100
    .line 101
    :goto_3
    if-eqz p3, :cond_6

    .line 102
    .line 103
    iget v0, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->priority:I

    .line 104
    .line 105
    iget v3, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->weight:I

    .line 106
    .line 107
    iget-object v7, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 108
    .line 109
    :cond_6
    new-instance v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 110
    .line 111
    .line 112
    invoke-direct {v4, v6, v7, v0, v3}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    return-object v2
.end method

.method protected E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "schemeIdUri"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, -0x1

    .line 23
    .line 24
    .line 25
    sparse-switch v3, :sswitch_data_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :sswitch_0
    const-string v3, "urn:mpeg:dash:mp4protection:2011"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x3

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :sswitch_1
    const-string v3, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v4, 0x2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :sswitch_2
    const-string v3, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v4, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :sswitch_3
    const-string v3, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move v4, v2

    .line 70
    .line 71
    .line 72
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :pswitch_0
    const-string v0, "value"

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-string v3, "default_KID"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v4

    .line 90
    .line 91
    if-nez v4, :cond_5

    .line 92
    .line 93
    const-string v4, "00000000-0000-0000-0000-000000000000"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v4

    .line 98
    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    const-string v4, "\\s+"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    array-length v4, v3

    .line 107
    .line 108
    new-array v4, v4, [Ljava/util/UUID;

    .line 109
    move v5, v2

    .line 110
    :goto_1
    array-length v6, v3

    .line 111
    .line 112
    if-ge v5, v6, :cond_4

    .line 113
    .line 114
    aget-object v6, v3, v5

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    aput-object v6, v4, v5

    .line 121
    .line 122
    add-int/lit8 v5, v5, 0x1

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_4
    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v4, v1}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 129
    move-result-object v4

    .line 130
    move-object v5, v1

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    move-object v3, v1

    .line 133
    :goto_2
    move-object v4, v3

    .line 134
    :goto_3
    move-object v5, v4

    .line 135
    goto :goto_6

    .line 136
    .line 137
    :pswitch_1
    sget-object v3, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 138
    :goto_4
    move-object v0, v1

    .line 139
    move-object v4, v0

    .line 140
    goto :goto_3

    .line 141
    .line 142
    :pswitch_2
    sget-object v3, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 143
    goto :goto_4

    .line 144
    .line 145
    :pswitch_3
    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    :goto_5
    move-object v0, v1

    .line 148
    move-object v3, v0

    .line 149
    goto :goto_2

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 153
    .line 154
    const-string v6, "clearkey:Laurl"

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 158
    move-result v6

    .line 159
    const/4 v7, 0x4

    .line 160
    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 165
    move-result v6

    .line 166
    .line 167
    if-ne v6, v7, :cond_8

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    goto/16 :goto_7

    .line 174
    .line 175
    :cond_8
    const-string v6, "ms:laurl"

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 179
    move-result v6

    .line 180
    .line 181
    if-eqz v6, :cond_9

    .line 182
    .line 183
    const-string v5, "licenseUrl"

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object v5

    .line 188
    goto :goto_7

    .line 189
    .line 190
    :cond_9
    if-nez v4, :cond_b

    .line 191
    .line 192
    const-string v6, "pssh"

    .line 193
    .line 194
    .line 195
    invoke-static {p1, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 196
    move-result v6

    .line 197
    .line 198
    if-eqz v6, :cond_b

    .line 199
    .line 200
    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 202
    move-result v6

    .line 203
    .line 204
    if-ne v6, v7, :cond_b

    .line 205
    .line 206
    .line 207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 209
    .line 210
    .line 211
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 212
    move-result-object v3

    .line 213
    .line 214
    .line 215
    invoke-static {v3}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->f([B)Ljava/util/UUID;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    if-nez v4, :cond_a

    .line 219
    .line 220
    const-string v3, "MpdParser"

    .line 221
    .line 222
    const-string v6, "Skipping malformed cenc:pssh data"

    .line 223
    .line 224
    .line 225
    invoke-static {v3, v6}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object v3, v4

    .line 227
    move-object v4, v1

    .line 228
    goto :goto_7

    .line 229
    :cond_a
    move-object v9, v4

    .line 230
    move-object v4, v3

    .line 231
    move-object v3, v9

    .line 232
    goto :goto_7

    .line 233
    .line 234
    :cond_b
    if-nez v4, :cond_c

    .line 235
    .line 236
    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v8

    .line 241
    .line 242
    if-eqz v8, :cond_c

    .line 243
    .line 244
    const-string v8, "mspr:pro"

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 248
    move-result v8

    .line 249
    .line 250
    if-eqz v8, :cond_c

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 254
    move-result v8

    .line 255
    .line 256
    if-ne v8, v7, :cond_c

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    .line 262
    .line 263
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 264
    move-result-object v4

    .line 265
    .line 266
    .line 267
    invoke-static {v6, v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    .line 268
    move-result-object v4

    .line 269
    goto :goto_7

    .line 270
    .line 271
    .line 272
    :cond_c
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 273
    .line 274
    :goto_7
    const-string v6, "ContentProtection"

    .line 275
    .line 276
    .line 277
    invoke-static {p1, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 278
    move-result v6

    .line 279
    .line 280
    if-eqz v6, :cond_7

    .line 281
    .line 282
    if-eqz v3, :cond_d

    .line 283
    .line 284
    new-instance v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 285
    .line 286
    const-string p1, "video/mp4"

    .line 287
    .line 288
    .line 289
    invoke-direct {v1, v3, v5, p1, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 290
    .line 291
    .line 292
    :cond_d
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 293
    move-result-object p1

    .line 294
    return-object p1

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
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected F(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "contentType"

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v0, "audio"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-string v0, "video"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 v1, 0x2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    const-string v0, "text"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    const/4 v1, 0x3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    const-string v0, "image"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    const/4 v1, 0x4

    .line 55
    :cond_4
    :goto_0
    return v1
.end method

.method protected N(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media3/extractor/metadata/emsg/EventMessage;",
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
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 10
    move-result-wide v7

    .line 11
    .line 12
    const-string v1, "duration"

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v4, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 21
    move-result-wide v9

    .line 22
    .line 23
    const-string v1, "presentationTime"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 27
    move-result-wide v1

    .line 28
    .line 29
    const-wide/16 v11, 0x3e8

    .line 30
    .line 31
    move-wide/from16 v13, p4

    .line 32
    .line 33
    .line 34
    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    .line 35
    move-result-wide v9

    .line 36
    .line 37
    sub-long v11, v1, p6

    .line 38
    .line 39
    .line 40
    const-wide/32 v13, 0xf4240

    .line 41
    .line 42
    move-wide/from16 v15, p4

    .line 43
    .line 44
    .line 45
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    const-string v3, "messageData"

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    move-object/from16 v12, p0

    .line 56
    .line 57
    move-object/from16 v4, p8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v12, v0, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-nez v3, :cond_0

    .line 68
    :goto_0
    move-object v11, v0

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-static {v3}, Landroidx/media3/common/util/Util;->q0(Ljava/lang/String;)[B

    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :goto_1
    move-object/from16 v4, p0

    .line 77
    .line 78
    move-object/from16 v5, p2

    .line 79
    .line 80
    move-object/from16 v6, p3

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {v4 .. v11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->c(Ljava/lang/String;Ljava/lang/String;JJ[B)Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method protected O(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/base/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 20
    .line 21
    :goto_0
    const-string v1, "Event"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    packed-switch v1, :pswitch_data_0

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    .line 39
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    .line 48
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    goto :goto_2

    .line 94
    .line 95
    .line 96
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const/4 v1, 0x0

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 121
    move-result v2

    .line 122
    .line 123
    if-ge v1, v2, :cond_0

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    goto :goto_1

    .line 142
    .line 143
    .line 144
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 145
    goto :goto_2

    .line 146
    :pswitch_a
    const/4 v1, 0x0

    .line 147
    .line 148
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    .line 159
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
.end method

.method protected P(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/EventStream;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p1

    .line 3
    .line 4
    const-string v0, "schemeIdUri"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    .line 9
    invoke-static {v9, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v10

    .line 11
    .line 12
    const-string v0, "value"

    .line 13
    .line 14
    .line 15
    invoke-static {v9, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v11

    .line 17
    .line 18
    const-string v0, "timescale"

    .line 19
    .line 20
    const-wide/16 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v9, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 24
    move-result-wide v12

    .line 25
    .line 26
    const-string v0, "presentationTimeOffset"

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v9, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 32
    move-result-wide v14

    .line 33
    .line 34
    new-instance v8, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 40
    .line 41
    const/16 v0, 0x200

    .line 42
    .line 43
    .line 44
    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 48
    .line 49
    const-string v0, "Event"

    .line 50
    .line 51
    .line 52
    invoke-static {v9, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    move-object/from16 v0, p0

    .line 58
    .line 59
    move-object/from16 v1, p1

    .line 60
    move-object v2, v10

    .line 61
    move-object v3, v11

    .line 62
    move-wide v4, v12

    .line 63
    .line 64
    move-object/from16 v16, v6

    .line 65
    move-wide v6, v14

    .line 66
    .line 67
    move-wide/from16 v17, v14

    .line 68
    move-object v14, v8

    .line 69
    .line 70
    move-object/from16 v8, v16

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->N(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_0
    move-object/from16 v16, v6

    .line 81
    .line 82
    move-wide/from16 v17, v14

    .line 83
    move-object v14, v8

    .line 84
    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 87
    .line 88
    :goto_1
    const-string v0, "EventStream"

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 98
    move-result v0

    .line 99
    .line 100
    new-array v7, v0, [J

    .line 101
    .line 102
    .line 103
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 104
    move-result v0

    .line 105
    .line 106
    new-array v8, v0, [Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 107
    const/4 v0, 0x0

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 111
    move-result v1

    .line 112
    .line 113
    if-ge v0, v1, :cond_1

    .line 114
    .line 115
    .line 116
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    check-cast v1, Landroid/util/Pair;

    .line 120
    .line 121
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 127
    move-result-wide v2

    .line 128
    .line 129
    aput-wide v2, v7, v0

    .line 130
    .line 131
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 134
    .line 135
    aput-object v1, v8, v0

    .line 136
    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_2

    .line 139
    .line 140
    :cond_1
    move-object/from16 v2, p0

    .line 141
    move-object v3, v10

    .line 142
    move-object v4, v11

    .line 143
    move-wide v5, v12

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->d(Ljava/lang/String;Ljava/lang/String;J[J[Landroidx/media3/extractor/metadata/emsg/EventMessage;)Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :cond_2
    move-object v8, v14

    .line 150
    .line 151
    move-object/from16 v6, v16

    .line 152
    .line 153
    move-wide/from16 v14, v17

    .line 154
    goto :goto_0
.end method

.method protected S(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 2

    .line 1
    .line 2
    const-string v0, "sourceURL"

    .line 3
    .line 4
    const-string v1, "range"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected U(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Label"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected X(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    new-array v1, v0, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "profiles"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v14, v12, v2, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->a0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v14, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->u([Ljava/lang/String;)Z

    .line 17
    move-result v13

    .line 18
    .line 19
    const-string v1, "availabilityStartTime"

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 28
    move-result-wide v15

    .line 29
    .line 30
    const-string v1, "mediaPresentationDuration"

    .line 31
    .line 32
    .line 33
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 34
    move-result-wide v17

    .line 35
    .line 36
    const-string v1, "minBufferTime"

    .line 37
    .line 38
    .line 39
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 40
    move-result-wide v19

    .line 41
    .line 42
    const-string v1, "type"

    .line 43
    const/4 v11, 0x0

    .line 44
    .line 45
    .line 46
    invoke-interface {v12, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "dynamic"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v21

    .line 54
    .line 55
    if-eqz v21, :cond_0

    .line 56
    .line 57
    const-string v1, "minimumUpdatePeriod"

    .line 58
    .line 59
    .line 60
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    move-wide/from16 v22, v1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    move-wide/from16 v22, v9

    .line 67
    .line 68
    :goto_0
    if-eqz v21, :cond_1

    .line 69
    .line 70
    const-string v1, "timeShiftBufferDepth"

    .line 71
    .line 72
    .line 73
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 74
    move-result-wide v1

    .line 75
    .line 76
    move-wide/from16 v24, v1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    move-wide/from16 v24, v9

    .line 80
    .line 81
    :goto_1
    if-eqz v21, :cond_2

    .line 82
    .line 83
    const-string v1, "suggestedPresentationDelay"

    .line 84
    .line 85
    .line 86
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 87
    move-result-wide v1

    .line 88
    .line 89
    move-wide/from16 v26, v1

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_2
    move-wide/from16 v26, v9

    .line 93
    .line 94
    :goto_2
    const-string v1, "publishTime"

    .line 95
    .line 96
    .line 97
    invoke-static {v12, v1, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 98
    move-result-wide v28

    .line 99
    .line 100
    if-eqz v21, :cond_3

    .line 101
    .line 102
    const-wide/16 v3, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move-wide v3, v9

    .line 105
    .line 106
    :goto_3
    new-instance v5, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 115
    const/4 v8, 0x1

    .line 116
    .line 117
    if-eqz v13, :cond_4

    .line 118
    move v1, v8

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_4
    const/high16 v30, -0x80000000

    .line 122
    .line 123
    move/from16 v1, v30

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-direct {v5, v6, v7, v1, v8}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 127
    .line 128
    new-array v1, v8, [Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 129
    .line 130
    aput-object v5, v1, v0

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/common/collect/k0;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 134
    move-result-object v7

    .line 135
    .line 136
    new-instance v5, Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    new-instance v6, Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    if-eqz v21, :cond_5

    .line 147
    move-wide v1, v9

    .line 148
    goto :goto_5

    .line 149
    .line 150
    :cond_5
    const-wide/16 v1, 0x0

    .line 151
    .line 152
    :goto_5
    move/from16 v30, v0

    .line 153
    .line 154
    move/from16 v31, v30

    .line 155
    .line 156
    move-wide/from16 v32, v1

    .line 157
    .line 158
    move-object/from16 v34, v11

    .line 159
    .line 160
    move-object/from16 v35, v34

    .line 161
    .line 162
    move-object/from16 v36, v35

    .line 163
    .line 164
    move-object/from16 v37, v36

    .line 165
    .line 166
    .line 167
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    .line 169
    const-string v0, "BaseURL"

    .line 170
    .line 171
    .line 172
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 173
    move-result v0

    .line 174
    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    if-nez v30, :cond_6

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v12, v3, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 181
    move-result-wide v3

    .line 182
    .line 183
    move/from16 v30, v8

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {v14, v12, v7, v13}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 191
    .line 192
    :goto_7
    move-object/from16 v41, v6

    .line 193
    .line 194
    move-object/from16 v43, v7

    .line 195
    .line 196
    move/from16 v42, v8

    .line 197
    .line 198
    move-wide/from16 v44, v9

    .line 199
    move-object v14, v11

    .line 200
    move-object v11, v5

    .line 201
    .line 202
    goto/16 :goto_c

    .line 203
    .line 204
    :cond_7
    const-string v0, "ProgramInformation"

    .line 205
    .line 206
    .line 207
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->b0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    move-object/from16 v34, v0

    .line 217
    goto :goto_7

    .line 218
    .line 219
    :cond_8
    const-string v0, "UTCTiming"

    .line 220
    .line 221
    .line 222
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 223
    move-result v0

    .line 224
    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    move-object/from16 v35, v0

    .line 232
    goto :goto_7

    .line 233
    .line 234
    :cond_9
    const-string v0, "Location"

    .line 235
    .line 236
    .line 237
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 238
    move-result v0

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v1}, Landroidx/media3/common/util/UriUtil;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    move-object/from16 v36, v0

    .line 255
    goto :goto_7

    .line 256
    .line 257
    :cond_a
    const-string v0, "ServiceDescription"

    .line 258
    .line 259
    .line 260
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 261
    move-result v0

    .line 262
    .line 263
    if-eqz v0, :cond_b

    .line 264
    .line 265
    .line 266
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->p0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 267
    move-result-object v0

    .line 268
    .line 269
    move-object/from16 v37, v0

    .line 270
    goto :goto_7

    .line 271
    .line 272
    :cond_b
    const-string v0, "Period"

    .line 273
    .line 274
    .line 275
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 276
    move-result v0

    .line 277
    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    if-nez v31, :cond_10

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 284
    move-result v0

    .line 285
    .line 286
    if-nez v0, :cond_c

    .line 287
    move-object v2, v6

    .line 288
    goto :goto_8

    .line 289
    :cond_c
    move-object v2, v7

    .line 290
    .line 291
    :goto_8
    move-object/from16 v0, p0

    .line 292
    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    move-wide/from16 v38, v3

    .line 296
    .line 297
    move-wide/from16 v3, v32

    .line 298
    .line 299
    move-object/from16 v40, v5

    .line 300
    .line 301
    move-object/from16 v41, v6

    .line 302
    .line 303
    move-wide/from16 v5, v38

    .line 304
    .line 305
    move-object/from16 v43, v7

    .line 306
    .line 307
    move/from16 v42, v8

    .line 308
    move-wide v7, v15

    .line 309
    .line 310
    move-wide/from16 v44, v9

    .line 311
    .line 312
    move-wide/from16 v9, v24

    .line 313
    move-object v14, v11

    .line 314
    move v11, v13

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 323
    .line 324
    iget-wide v2, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 325
    .line 326
    cmp-long v2, v2, v44

    .line 327
    .line 328
    if-nez v2, :cond_e

    .line 329
    .line 330
    if-eqz v21, :cond_d

    .line 331
    .line 332
    move-object/from16 v11, v40

    .line 333
    .line 334
    move/from16 v8, v42

    .line 335
    goto :goto_a

    .line 336
    .line 337
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    const-string v1, "Unable to determine start of period "

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    .line 349
    move-result v1

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    .line 358
    .line 359
    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 360
    move-result-object v0

    .line 361
    throw v0

    .line 362
    .line 363
    :cond_e
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Ljava/lang/Long;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 369
    move-result-wide v2

    .line 370
    .line 371
    cmp-long v0, v2, v44

    .line 372
    .line 373
    if-nez v0, :cond_f

    .line 374
    .line 375
    move-object/from16 v11, v40

    .line 376
    .line 377
    move-wide/from16 v9, v44

    .line 378
    goto :goto_9

    .line 379
    .line 380
    :cond_f
    iget-wide v4, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 381
    .line 382
    add-long v9, v4, v2

    .line 383
    .line 384
    move-object/from16 v11, v40

    .line 385
    .line 386
    .line 387
    :goto_9
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    move-wide/from16 v32, v9

    .line 390
    .line 391
    move/from16 v8, v31

    .line 392
    .line 393
    :goto_a
    move/from16 v31, v8

    .line 394
    .line 395
    :goto_b
    move-wide/from16 v3, v38

    .line 396
    goto :goto_c

    .line 397
    .line 398
    :cond_10
    move-wide/from16 v38, v3

    .line 399
    .line 400
    move-object/from16 v41, v6

    .line 401
    .line 402
    move-object/from16 v43, v7

    .line 403
    .line 404
    move/from16 v42, v8

    .line 405
    .line 406
    move-wide/from16 v44, v9

    .line 407
    move-object v14, v11

    .line 408
    move-object v11, v5

    .line 409
    .line 410
    .line 411
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 412
    goto :goto_b

    .line 413
    .line 414
    :goto_c
    const-string v0, "MPD"

    .line 415
    .line 416
    .line 417
    invoke-static {v12, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 418
    move-result v0

    .line 419
    .line 420
    if-eqz v0, :cond_15

    .line 421
    .line 422
    cmp-long v0, v17, v44

    .line 423
    .line 424
    if-nez v0, :cond_13

    .line 425
    .line 426
    cmp-long v0, v32, v44

    .line 427
    .line 428
    if-eqz v0, :cond_11

    .line 429
    .line 430
    move-wide/from16 v3, v32

    .line 431
    goto :goto_e

    .line 432
    .line 433
    :cond_11
    if-eqz v21, :cond_12

    .line 434
    goto :goto_d

    .line 435
    .line 436
    :cond_12
    const-string v0, "Unable to determine duration of static manifest."

    .line 437
    .line 438
    .line 439
    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 440
    move-result-object v0

    .line 441
    throw v0

    .line 442
    .line 443
    :cond_13
    :goto_d
    move-wide/from16 v3, v17

    .line 444
    .line 445
    .line 446
    :goto_e
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 447
    move-result v0

    .line 448
    .line 449
    if-nez v0, :cond_14

    .line 450
    .line 451
    move-object/from16 v0, p0

    .line 452
    move-wide v1, v15

    .line 453
    .line 454
    move-wide/from16 v5, v19

    .line 455
    .line 456
    move/from16 v7, v21

    .line 457
    .line 458
    move-wide/from16 v8, v22

    .line 459
    .line 460
    move-object/from16 v38, v11

    .line 461
    .line 462
    move-wide/from16 v10, v24

    .line 463
    .line 464
    move-wide/from16 v12, v26

    .line 465
    .line 466
    move-wide/from16 v14, v28

    .line 467
    .line 468
    move-object/from16 v16, v34

    .line 469
    .line 470
    move-object/from16 v17, v35

    .line 471
    .line 472
    move-object/from16 v18, v37

    .line 473
    .line 474
    move-object/from16 v19, v36

    .line 475
    .line 476
    move-object/from16 v20, v38

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {v0 .. v20}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->f(JJJZJJJJLandroidx/media3/exoplayer/dash/manifest/ProgramInformation;Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 480
    move-result-object v0

    .line 481
    return-object v0

    .line 482
    .line 483
    :cond_14
    const-string v0, "No periods found."

    .line 484
    .line 485
    .line 486
    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 487
    move-result-object v0

    .line 488
    throw v0

    .line 489
    :cond_15
    move-object v5, v11

    .line 490
    move-object v11, v14

    .line 491
    .line 492
    move-object/from16 v6, v41

    .line 493
    .line 494
    move/from16 v8, v42

    .line 495
    .line 496
    move-object/from16 v7, v43

    .line 497
    .line 498
    move-wide/from16 v9, v44

    .line 499
    .line 500
    move-object/from16 v14, p0

    .line 501
    .line 502
    goto/16 :goto_6
.end method

.method protected Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;JJJJZ)",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    const/4 v12, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v14, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v16

    .line 12
    .line 13
    const-string v0, "start"

    .line 14
    .line 15
    move-wide/from16 v1, p3

    .line 16
    .line 17
    .line 18
    invoke-static {v14, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 19
    move-result-wide v17

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    cmp-long v0, p7, v10

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    add-long v0, p7, v17

    .line 31
    .line 32
    move-wide/from16 v19, v0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    move-wide/from16 v19, v10

    .line 36
    .line 37
    :goto_0
    const-string v0, "duration"

    .line 38
    .line 39
    .line 40
    invoke-static {v14, v0, v10, v11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 41
    move-result-wide v21

    .line 42
    .line 43
    new-instance v13, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    new-instance v8, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    new-instance v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    move-wide/from16 v6, p5

    .line 60
    .line 61
    move/from16 v23, v0

    .line 62
    .line 63
    move-wide/from16 v25, v10

    .line 64
    .line 65
    move-object/from16 v24, v12

    .line 66
    .line 67
    move-object/from16 v27, v24

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 71
    .line 72
    const-string v0, "BaseURL"

    .line 73
    .line 74
    .line 75
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    if-nez v23, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v14, v6, v7}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 84
    move-result-wide v6

    .line 85
    .line 86
    const/16 v23, 0x1

    .line 87
    .line 88
    :cond_1
    move-object/from16 v4, p2

    .line 89
    .line 90
    move/from16 v5, p11

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15, v14, v4, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    move-object/from16 v32, v8

    .line 100
    .line 101
    move-object/from16 v30, v9

    .line 102
    .line 103
    move-wide/from16 v33, v10

    .line 104
    .line 105
    move-object/from16 v31, v12

    .line 106
    move-object v15, v13

    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_2
    move-object/from16 v4, p2

    .line 111
    .line 112
    move/from16 v5, p11

    .line 113
    .line 114
    const-string v0, "AdaptationSet"

    .line 115
    .line 116
    .line 117
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    move-object v2, v9

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move-object v2, v4

    .line 130
    .line 131
    :goto_2
    move-object/from16 v0, p0

    .line 132
    .line 133
    move-object/from16 v1, p1

    .line 134
    .line 135
    move-object/from16 v3, v24

    .line 136
    .line 137
    move-wide/from16 v4, v21

    .line 138
    .line 139
    move-wide/from16 v28, v6

    .line 140
    move-object v15, v8

    .line 141
    .line 142
    move-object/from16 v30, v9

    .line 143
    .line 144
    move-wide/from16 v8, v25

    .line 145
    .line 146
    move-wide/from16 v10, v19

    .line 147
    .line 148
    move-object/from16 p3, v15

    .line 149
    move-object v15, v13

    .line 150
    .line 151
    move-wide/from16 v12, p9

    .line 152
    .line 153
    move/from16 v14, p11

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    move-object/from16 v14, p1

    .line 163
    .line 164
    move-object/from16 v32, p3

    .line 165
    .line 166
    :goto_3
    const/16 v31, 0x0

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_4
    move-wide/from16 v28, v6

    .line 176
    .line 177
    move-object/from16 p3, v8

    .line 178
    .line 179
    move-object/from16 v30, v9

    .line 180
    move-object v15, v13

    .line 181
    .line 182
    const-string v0, "EventStream"

    .line 183
    .line 184
    move-object/from16 v14, p1

    .line 185
    .line 186
    .line 187
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 188
    move-result v0

    .line 189
    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->P(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    move-object/from16 v1, p3

    .line 197
    .line 198
    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    move-object/from16 v32, v1

    .line 202
    goto :goto_3

    .line 203
    .line 204
    :cond_5
    move-object/from16 v1, p3

    .line 205
    .line 206
    const-string v0, "SegmentBase"

    .line 207
    .line 208
    .line 209
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 210
    move-result v0

    .line 211
    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    move-object/from16 v13, p0

    .line 215
    .line 216
    move-object/from16 v32, v1

    .line 217
    const/4 v11, 0x0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13, v14, v11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->i0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    move-object/from16 v24, v0

    .line 224
    .line 225
    move-object/from16 v31, v11

    .line 226
    .line 227
    move-wide/from16 v6, v28

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 233
    .line 234
    goto/16 :goto_6

    .line 235
    .line 236
    :cond_6
    move-object/from16 v13, p0

    .line 237
    .line 238
    move-object/from16 v32, v1

    .line 239
    const/4 v11, 0x0

    .line 240
    .line 241
    const-string v0, "SegmentList"

    .line 242
    .line 243
    .line 244
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 245
    move-result v0

    .line 246
    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13, v14, v9, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 256
    move-result-wide v24

    .line 257
    const/4 v2, 0x0

    .line 258
    .line 259
    move-object/from16 v0, p0

    .line 260
    .line 261
    move-object/from16 v1, p1

    .line 262
    .line 263
    move-wide/from16 v3, v19

    .line 264
    .line 265
    move-wide/from16 v5, v21

    .line 266
    .line 267
    move-wide/from16 v7, v28

    .line 268
    .line 269
    move-wide/from16 v9, v24

    .line 270
    .line 271
    move-object/from16 v31, v11

    .line 272
    .line 273
    move-wide/from16 v11, p9

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->j0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    move-wide/from16 v25, v24

    .line 280
    .line 281
    move-wide/from16 v6, v28

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 287
    .line 288
    :goto_4
    move-object/from16 v24, v0

    .line 289
    goto :goto_6

    .line 290
    .line 291
    :cond_7
    move-object/from16 v31, v11

    .line 292
    .line 293
    const-string v0, "SegmentTemplate"

    .line 294
    .line 295
    .line 296
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 297
    move-result v0

    .line 298
    .line 299
    if-eqz v0, :cond_8

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v14, v10, v11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 308
    move-result-wide v24

    .line 309
    const/4 v2, 0x0

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 313
    move-result-object v3

    .line 314
    .line 315
    move-object/from16 v0, p0

    .line 316
    .line 317
    move-object/from16 v1, p1

    .line 318
    .line 319
    move-wide/from16 v4, v19

    .line 320
    .line 321
    move-wide/from16 v6, v21

    .line 322
    .line 323
    move-wide/from16 v8, v28

    .line 324
    .line 325
    move-wide/from16 v33, v10

    .line 326
    .line 327
    move-wide/from16 v10, v24

    .line 328
    .line 329
    move-wide/from16 v12, p9

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {v0 .. v13}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->k0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 333
    move-result-object v0

    .line 334
    .line 335
    move-wide/from16 v25, v24

    .line 336
    .line 337
    move-wide/from16 v6, v28

    .line 338
    goto :goto_4

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :cond_8
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 344
    .line 345
    const-string v0, "AssetIdentifier"

    .line 346
    .line 347
    .line 348
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 349
    move-result v1

    .line 350
    .line 351
    if-eqz v1, :cond_9

    .line 352
    .line 353
    .line 354
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 355
    move-result-object v0

    .line 356
    .line 357
    move-object/from16 v27, v0

    .line 358
    .line 359
    :goto_5
    move-wide/from16 v6, v28

    .line 360
    goto :goto_6

    .line 361
    .line 362
    .line 363
    :cond_9
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 364
    goto :goto_5

    .line 365
    .line 366
    :goto_6
    const-string v0, "Period"

    .line 367
    .line 368
    .line 369
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 370
    move-result v0

    .line 371
    .line 372
    if-eqz v0, :cond_a

    .line 373
    .line 374
    move-object/from16 p1, p0

    .line 375
    .line 376
    move-object/from16 p2, v16

    .line 377
    .line 378
    move-wide/from16 p3, v17

    .line 379
    .line 380
    move-object/from16 p5, v15

    .line 381
    .line 382
    move-object/from16 p6, v32

    .line 383
    .line 384
    move-object/from16 p7, v27

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {p1 .. p7}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Descriptor;)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 388
    move-result-object v0

    .line 389
    .line 390
    .line 391
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 392
    move-result-object v1

    .line 393
    .line 394
    .line 395
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 396
    move-result-object v0

    .line 397
    return-object v0

    .line 398
    :cond_a
    move-object v13, v15

    .line 399
    .line 400
    move-object/from16 v9, v30

    .line 401
    .line 402
    move-object/from16 v12, v31

    .line 403
    .line 404
    move-object/from16 v8, v32

    .line 405
    .line 406
    move-wide/from16 v10, v33

    .line 407
    .line 408
    move-object/from16 v15, p0

    .line 409
    .line 410
    goto/16 :goto_1
.end method

.method protected a0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object p3

    .line 9
    .line 10
    :cond_0
    const-string p2, ","

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method protected b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 3
    move-object v0, v8

    .line 4
    move-wide v1, p1

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 14
    return-object v8
.end method

.method protected b0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "moreInformationURL"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v6

    .line 8
    .line 9
    const-string v0, "lang"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v7

    .line 14
    move-object v0, v1

    .line 15
    move-object v2, v0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    .line 20
    const-string v3, "Title"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    :goto_1
    move-object v5, v2

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    const-string v3, "Source"

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    const-string v3, "Copyright"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :goto_2
    const-string v2, "ProgramInformation"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    new-instance p1, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 73
    move-object v2, p1

    .line 74
    move-object v3, v1

    .line 75
    move-object v4, v0

    .line 76
    .line 77
    .line 78
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object p1

    .line 80
    :cond_3
    move-object v2, v5

    .line 81
    goto :goto_0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;JJ[B)Landroidx/media3/extractor/metadata/emsg/EventMessage;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p5

    .line 7
    move-wide v5, p3

    .line 8
    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 13
    return-object v8
.end method

.method protected c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v2

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-wide/16 p2, -0x1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string v0, "-"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    aget-object v0, p1, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 26
    move-result-wide v0

    .line 27
    array-length v3, p1

    .line 28
    const/4 v4, 0x2

    .line 29
    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    const/4 p2, 0x1

    .line 32
    .line 33
    aget-object p1, p1, p2

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 37
    move-result-wide p1

    .line 38
    sub-long/2addr p1, v0

    .line 39
    .line 40
    const-wide/16 v3, 0x1

    .line 41
    add-long/2addr p1, v3

    .line 42
    move-wide v5, p1

    .line 43
    :goto_0
    move-wide v3, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    move-wide v5, p2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    const-wide/16 v0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :goto_2
    move-object v1, p0

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->h(Ljava/lang/String;JJ)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;J[J[Landroidx/media3/extractor/metadata/emsg/EventMessage;)Landroidx/media3/exoplayer/dash/manifest/EventStream;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Landroidx/media3/extractor/metadata/emsg/EventMessage;)V

    .line 12
    return-object v7
.end method

.method protected d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 35
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const/4 v1, 0x0

    .line 1
    invoke-interface {v14, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "bandwidth"

    const/4 v2, -0x1

    .line 2
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string v0, "mimeType"

    move-object/from16 v2, p3

    .line 3
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "codecs"

    move-object/from16 v2, p4

    .line 4
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "width"

    move/from16 v2, p5

    .line 5
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const-string v0, "height"

    move/from16 v2, p6

    .line 6
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, p7

    .line 7
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->R(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v22

    const-string v0, "audioSamplingRate"

    move/from16 v2, p9

    .line 8
    invoke-static {v14, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v10, p14

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move/from16 v24, p8

    move-wide/from16 v5, p20

    move/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v0, p15

    move-wide/from16 v1, p22

    .line 14
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "BaseURL"

    .line 15
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v25, :cond_0

    .line 16
    invoke-virtual {v15, v14, v5, v6}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v25, 0x1

    :cond_0
    move-object/from16 v8, p2

    move/from16 v3, p26

    .line 17
    invoke-virtual {v15, v14, v8, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object/from16 v31, v7

    move-object v15, v13

    move/from16 v7, v24

    move-object/from16 v24, v0

    :goto_2
    move-object v13, v11

    move-object v11, v9

    goto/16 :goto_7

    :cond_1
    move-object/from16 v8, p2

    move/from16 v3, p26

    const-string v4, "AudioChannelConfiguration"

    .line 18
    invoke-static {v14, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->z(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move-object/from16 v24, v0

    move-object/from16 v31, v7

    move-object v15, v13

    move v7, v4

    goto :goto_2

    :cond_2
    const-string v4, "SegmentBase"

    .line 20
    invoke-static {v14, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->i0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v4, "SegmentList"

    .line 22
    invoke-static {v14, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v15, v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 24
    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p16

    move-wide/from16 v29, v5

    move-wide/from16 v5, p18

    move-object/from16 v31, v7

    move-wide/from16 v7, v29

    move-object/from16 v32, v9

    move-wide/from16 v9, v27

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-wide/from16 v11, p24

    .line 25
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->j0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object v15, v13

    :goto_3
    move/from16 v7, v24

    move-wide/from16 v1, v27

    :goto_4
    move-wide/from16 v5, v29

    move-object/from16 v11, v32

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    :goto_5
    move-object/from16 v24, v0

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    const-string v3, "SegmentTemplate"

    .line 26
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {v15, v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 28
    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p14

    move-wide/from16 v4, p16

    move-wide/from16 v6, p18

    move-wide/from16 v8, v29

    move-wide/from16 v10, v27

    move-object v15, v13

    move-wide/from16 v12, p24

    .line 29
    invoke-virtual/range {v0 .. v13}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->k0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v15, v13

    const-string v3, "ContentProtection"

    .line 30
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 31
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 32
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 33
    move-object/from16 v26, v4

    check-cast v26, Ljava/lang/String;

    .line 34
    :cond_6
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 35
    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v7, v24

    goto :goto_4

    :cond_8
    const-string v3, "InbandEventStream"

    .line 36
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 37
    invoke-static {v14, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v13, v33

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    move-object/from16 v12, v34

    goto :goto_6

    :cond_9
    move-object/from16 v13, v33

    const-string v3, "EssentialProperty"

    .line 38
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 39
    invoke-static {v14, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v12, v34

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    goto :goto_6

    :cond_a
    move-object/from16 v12, v34

    const-string v3, "SupplementalProperty"

    .line 40
    invoke-static {v14, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 41
    invoke-static {v14, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v11, v32

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object/from16 v11, v32

    .line 42
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    move/from16 v7, v24

    move-wide/from16 v5, v29

    goto/16 :goto_5

    :goto_7
    const-string v0, "Representation"

    .line 43
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move v6, v7

    move/from16 v7, v23

    move/from16 v8, v17

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v27, v11

    move-object/from16 v11, p12

    move-object/from16 v28, v12

    move-object/from16 v12, v19

    move-object/from16 v29, v13

    move-object/from16 v13, v28

    move-object/from16 v14, v27

    .line 44
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Format;

    move-result-object v0

    if-eqz v24, :cond_c

    goto :goto_8

    .line 45
    :cond_c
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object/from16 v24, v1

    .line 46
    :goto_8
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 47
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v31, p2

    :goto_9
    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v31

    move-object/from16 p4, v24

    move-object/from16 p5, v26

    move-object/from16 p6, v15

    move-object/from16 p7, v29

    move-object/from16 p8, v28

    move-object/from16 p9, v27

    move-wide/from16 p10, v2

    invoke-direct/range {p1 .. p11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    return-object v1

    :cond_e
    move-object/from16 v10, p14

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    move-object/from16 v0, v24

    move-object/from16 v15, p0

    move/from16 v24, v7

    move-object/from16 v7, v31

    goto/16 :goto_0
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Format;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroidx/media3/common/Format;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move v2, p3

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p10

    .line 8
    .line 9
    move-object/from16 v5, p13

    .line 10
    .line 11
    move-object/from16 v6, p12

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v6}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v7

    .line 16
    .line 17
    const-string v8, "audio/eac3"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v8

    .line 22
    .line 23
    if-eqz v8, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static/range {p14 .. p14}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->M(Ljava/util/List;)Ljava/lang/String;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    const-string v8, "audio/eac3-joc"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v8

    .line 34
    .line 35
    if-eqz v8, :cond_0

    .line 36
    .line 37
    const-string v6, "ec+3"

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->o0(Ljava/util/List;)I

    .line 41
    move-result v8

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->h0(Ljava/util/List;)I

    .line 45
    move-result v4

    .line 46
    .line 47
    move-object/from16 v9, p11

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v9}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->e0(Ljava/util/List;)I

    .line 51
    move-result v10

    .line 52
    or-int/2addr v4, v10

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->g0(Ljava/util/List;)I

    .line 56
    move-result v10

    .line 57
    or-int/2addr v4, v10

    .line 58
    .line 59
    move-object/from16 v10, p14

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->g0(Ljava/util/List;)I

    .line 63
    move-result v10

    .line 64
    or-int/2addr v4, v10

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->s0(Ljava/util/List;)Landroid/util/Pair;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    new-instance v10, Landroidx/media3/common/Format$Builder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 74
    move-object v11, p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, p1}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 78
    move-result-object v10

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, p2}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v7}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    move/from16 v6, p8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v8}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    move-object/from16 v4, p9

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 110
    move-result-object v1

    .line 111
    const/4 v4, -0x1

    .line 112
    .line 113
    if-eqz v5, :cond_1

    .line 114
    .line 115
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v6, Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 121
    move-result v6

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    move v6, v4

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->l0(I)Landroidx/media3/common/Format$Builder;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    if-eqz v5, :cond_2

    .line 130
    .line 131
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v5

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    move v5, v4

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->m0(I)Landroidx/media3/common/Format$Builder;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->s(Ljava/lang/String;)Z

    .line 147
    move-result v5

    .line 148
    .line 149
    if-eqz v5, :cond_3

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p3}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 153
    move-result-object v2

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    move/from16 v3, p5

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 163
    goto :goto_3

    .line 164
    .line 165
    .line 166
    :cond_3
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    .line 167
    move-result v5

    .line 168
    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    move/from16 v5, p6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    move/from16 v3, p7

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->h0(I)Landroidx/media3/common/Format$Builder;

    .line 181
    goto :goto_3

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->r(Ljava/lang/String;)Z

    .line 185
    move-result v5

    .line 186
    .line 187
    if-eqz v5, :cond_7

    .line 188
    .line 189
    const-string v2, "application/cea-608"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v2

    .line 194
    .line 195
    if-eqz v2, :cond_5

    .line 196
    .line 197
    .line 198
    invoke-static/range {p11 .. p11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->C(Ljava/util/List;)I

    .line 199
    move-result v4

    .line 200
    goto :goto_2

    .line 201
    .line 202
    :cond_5
    const-string v2, "application/cea-708"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v2

    .line 207
    .line 208
    if-eqz v2, :cond_6

    .line 209
    .line 210
    .line 211
    invoke-static/range {p11 .. p11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->D(Ljava/util/List;)I

    .line 212
    move-result v4

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_2
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->H(I)Landroidx/media3/common/Format$Builder;

    .line 216
    goto :goto_3

    .line 217
    .line 218
    .line 219
    :cond_7
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Z

    .line 220
    move-result v4

    .line 221
    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p3}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 230
    .line 231
    .line 232
    :cond_8
    :goto_3
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 233
    move-result-object v1

    .line 234
    return-object v1
.end method

.method protected e0(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v0, v2, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->f0(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    :goto_1
    or-int/2addr v1, v2

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    const-string v3, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    .line 35
    .line 36
    iget-object v4, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->t0(Ljava/lang/String;)I

    .line 48
    move-result v2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v1
.end method

.method protected f(JJJZJJJJLandroidx/media3/exoplayer/dash/manifest/ProgramInformation;Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;
    .locals 22
    .param p16    # Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;",
            "Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;",
            "Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Period;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;"
        }
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v3, p3

    .line 5
    .line 6
    move-wide/from16 v5, p5

    .line 7
    .line 8
    move/from16 v7, p7

    .line 9
    .line 10
    move-wide/from16 v8, p8

    .line 11
    .line 12
    move-wide/from16 v10, p10

    .line 13
    .line 14
    move-wide/from16 v12, p12

    .line 15
    .line 16
    move-wide/from16 v14, p14

    .line 17
    .line 18
    move-object/from16 v16, p16

    .line 19
    .line 20
    move-object/from16 v17, p17

    .line 21
    .line 22
    move-object/from16 v18, p18

    .line 23
    .line 24
    move-object/from16 v19, p19

    .line 25
    .line 26
    move-object/from16 v20, p20

    .line 27
    .line 28
    new-instance v21, Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 29
    .line 30
    move-object/from16 v0, v21

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;-><init>(JJJZJJJJLandroidx/media3/exoplayer/dash/manifest/ProgramInformation;Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    .line 34
    return-object v21
.end method

.method protected f0(Ljava/lang/String;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, -0x1

    .line 15
    .line 16
    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v1, "supplementary"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    const/16 v6, 0xc

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :sswitch_1
    const-string v1, "emergency"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    const/16 v6, 0xb

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :sswitch_2
    const-string v1, "commentary"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_3
    const/16 v6, 0xa

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :sswitch_3
    const-string v1, "caption"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_4
    const/16 v6, 0x9

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :sswitch_4
    const-string v1, "sign"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    :cond_5
    move v6, v2

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :sswitch_5
    const-string v1, "main"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_6

    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v6, 0x7

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :sswitch_6
    const-string v1, "dub"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-nez p1, :cond_7

    .line 108
    goto :goto_0

    .line 109
    :cond_7
    const/4 v6, 0x6

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :sswitch_7
    const-string v1, "forced-subtitle"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-nez p1, :cond_8

    .line 119
    goto :goto_0

    .line 120
    :cond_8
    const/4 v6, 0x5

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :sswitch_8
    const-string v1, "alternate"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-nez p1, :cond_9

    .line 130
    goto :goto_0

    .line 131
    :cond_9
    move v6, v3

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :sswitch_9
    const-string v1, "forced_subtitle"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p1

    .line 139
    .line 140
    if-nez p1, :cond_a

    .line 141
    goto :goto_0

    .line 142
    :cond_a
    const/4 v6, 0x3

    .line 143
    goto :goto_0

    .line 144
    .line 145
    :sswitch_a
    const-string v1, "enhanced-audio-intelligibility"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result p1

    .line 150
    .line 151
    if-nez p1, :cond_b

    .line 152
    goto :goto_0

    .line 153
    :cond_b
    move v6, v4

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :sswitch_b
    const-string v1, "description"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result p1

    .line 161
    .line 162
    if-nez p1, :cond_c

    .line 163
    goto :goto_0

    .line 164
    :cond_c
    move v6, v5

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :sswitch_c
    const-string v1, "subtitle"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p1

    .line 172
    .line 173
    if-nez p1, :cond_d

    .line 174
    goto :goto_0

    .line 175
    :cond_d
    move v6, v0

    .line 176
    .line 177
    .line 178
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 179
    return v0

    .line 180
    :pswitch_0
    return v3

    .line 181
    .line 182
    :pswitch_1
    const/16 p1, 0x20

    .line 183
    return p1

    .line 184
    :pswitch_2
    return v2

    .line 185
    .line 186
    :pswitch_3
    const/16 p1, 0x40

    .line 187
    return p1

    .line 188
    .line 189
    :pswitch_4
    const/16 p1, 0x100

    .line 190
    return p1

    .line 191
    :pswitch_5
    return v5

    .line 192
    .line 193
    :pswitch_6
    const/16 p1, 0x10

    .line 194
    return p1

    .line 195
    :pswitch_7
    return v4

    .line 196
    .line 197
    :pswitch_8
    const/16 p1, 0x800

    .line 198
    return p1

    .line 199
    .line 200
    :pswitch_9
    const/16 p1, 0x200

    .line 201
    return p1

    .line 202
    .line 203
    :pswitch_a
    const/16 p1, 0x80

    .line 204
    return p1

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
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
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Descriptor;)Landroidx/media3/exoplayer/dash/manifest/Period;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/media3/exoplayer/dash/manifest/Descriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/EventStream;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ")",
            "Landroidx/media3/exoplayer/dash/manifest/Period;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/Descriptor;)V

    .line 12
    return-object v7
.end method

.method protected g0(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 15
    .line 16
    const-string v3, "http://dashif.org/guidelines/trickmode"

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v2}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    or-int/lit16 v1, v1, 0x4000

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method protected h(Ljava/lang/String;JJ)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 10
    return-object v6
.end method

.method protected h0(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->f0(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    or-int/2addr v1, v2

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method protected i(Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/exoplayer/dash/manifest/Representation;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/Representation;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Landroidx/media3/common/Format;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 12
    .line 13
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object p3, p2

    .line 18
    .line 19
    :goto_0
    iget-object p2, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result p4

    .line 27
    .line 28
    if-nez p4, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q(Ljava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->r(Ljava/util/ArrayList;)V

    .line 35
    .line 36
    new-instance p4, Landroidx/media3/common/DrmInitData;

    .line 37
    .line 38
    .line 39
    invoke-direct {p4, p3, p2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p4}, Landroidx/media3/common/Format$Builder;->O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 43
    .line 44
    :cond_2
    iget-object v6, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    iget-wide v1, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    iget-object v4, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/a0;

    .line 56
    .line 57
    iget-object v5, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Landroidx/media3/exoplayer/dash/manifest/SegmentBase;

    .line 58
    .line 59
    iget-object v7, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    .line 60
    .line 61
    iget-object v8, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    .line 62
    const/4 v9, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/manifest/Representation;->n(JLandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected i0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 17
    .param p2    # Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-wide v4, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v2

    .line 13
    .line 14
    :goto_0
    const-string v6, "timescale"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v6, v4, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 18
    move-result-wide v9

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-wide v6, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-wide v6, v4

    .line 27
    .line 28
    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v8, v6, v7}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 32
    move-result-wide v11

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-wide v6, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-wide v6, v4

    .line 39
    .line 40
    :goto_2
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-wide v4, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 43
    .line 44
    :cond_3
    const-string v8, "indexRange"

    .line 45
    const/4 v13, 0x0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 50
    .line 51
    if-eqz v8, :cond_4

    .line 52
    .line 53
    const-string v4, "-"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    .line 60
    aget-object v5, v4, v5

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    move-result-wide v5

    .line 65
    const/4 v7, 0x1

    .line 66
    .line 67
    aget-object v4, v4, v7

    .line 68
    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 71
    move-result-wide v7

    .line 72
    sub-long/2addr v7, v5

    .line 73
    add-long/2addr v7, v2

    .line 74
    move-wide v15, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-wide v15, v4

    .line 77
    move-wide v5, v6

    .line 78
    .line 79
    :goto_3
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v13, v1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 85
    .line 86
    const-string v1, "Initialization"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->S(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 96
    move-result-object v1

    .line 97
    move-object v13, v1

    .line 98
    goto :goto_4

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 102
    .line 103
    :goto_4
    const-string v1, "SegmentBase"

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    move-object/from16 v7, p0

    .line 112
    move-object v8, v13

    .line 113
    move-wide v13, v5

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v7 .. v16}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->m(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method protected j(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
    .locals 19
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            ">;JJ)",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v2, p2

    .line 5
    .line 6
    move-wide/from16 v4, p4

    .line 7
    .line 8
    move-wide/from16 v6, p6

    .line 9
    .line 10
    move-wide/from16 v8, p8

    .line 11
    .line 12
    move-object/from16 v10, p10

    .line 13
    .line 14
    move-wide/from16 v11, p11

    .line 15
    .line 16
    move-object/from16 v13, p13

    .line 17
    .line 18
    new-instance v18, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 19
    .line 20
    move-object/from16 v0, v18

    .line 21
    .line 22
    .line 23
    invoke-static/range {p14 .. p15}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 24
    move-result-wide v14

    .line 25
    .line 26
    .line 27
    invoke-static/range {p16 .. p17}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 28
    move-result-wide v16

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v0 .. v17}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V

    .line 32
    return-object v18
.end method

.method protected j0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
    .locals 23
    .param p2    # Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p1

    .line 3
    .line 4
    move-object/from16 v7, p2

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    if-eqz v7, :cond_0

    .line 9
    .line 10
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v2, v0

    .line 13
    .line 14
    :goto_0
    const-string v4, "timescale"

    .line 15
    .line 16
    .line 17
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 18
    move-result-wide v8

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 31
    move-result-wide v10

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    :goto_2
    const-string v4, "duration"

    .line 44
    .line 45
    .line 46
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 47
    move-result-wide v13

    .line 48
    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    iget-wide v0, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 52
    .line 53
    :cond_3
    const-string v2, "startNumber"

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v2, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 57
    move-result-wide v15

    .line 58
    .line 59
    .line 60
    invoke-static/range {p7 .. p10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->s(JJ)J

    .line 61
    move-result-wide v17

    .line 62
    const/4 v0, 0x0

    .line 63
    move-object v12, v0

    .line 64
    .line 65
    move-object/from16 v19, v12

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 69
    .line 70
    const-string v1, "Initialization"

    .line 71
    .line 72
    .line 73
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->S(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    move-object/from16 v19, v1

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_5
    const-string v1, "SegmentTimeline"

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 89
    move-result v1

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    move-object/from16 v0, p0

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    move-wide v2, v8

    .line 97
    .line 98
    move-wide/from16 v4, p5

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_6
    const-string v1, "SegmentURL"

    .line 106
    .line 107
    .line 108
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    if-nez v12, :cond_7

    .line 114
    .line 115
    new-instance v12, Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->m0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_8
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 130
    .line 131
    :goto_3
    const-string v1, "SegmentList"

    .line 132
    .line 133
    .line 134
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 135
    move-result v1

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    if-eqz v7, :cond_c

    .line 140
    .line 141
    if-eqz v19, :cond_9

    .line 142
    goto :goto_4

    .line 143
    .line 144
    :cond_9
    iget-object v1, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 145
    .line 146
    move-object/from16 v19, v1

    .line 147
    .line 148
    :goto_4
    if-eqz v0, :cond_a

    .line 149
    goto :goto_5

    .line 150
    .line 151
    :cond_a
    iget-object v0, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 152
    .line 153
    :goto_5
    if-eqz v12, :cond_b

    .line 154
    goto :goto_6

    .line 155
    .line 156
    :cond_b
    iget-object v12, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    .line 157
    :cond_c
    :goto_6
    move-object v1, v12

    .line 158
    .line 159
    move-object/from16 v6, v19

    .line 160
    .line 161
    move-object/from16 v5, p0

    .line 162
    move-wide v7, v8

    .line 163
    move-wide v9, v10

    .line 164
    move-wide v11, v15

    .line 165
    move-object v15, v0

    .line 166
    .line 167
    move-wide/from16 v16, v17

    .line 168
    .line 169
    move-object/from16 v18, v1

    .line 170
    .line 171
    move-wide/from16 v19, p11

    .line 172
    .line 173
    move-wide/from16 v21, p3

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {v5 .. v22}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->j(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 177
    move-result-object v0

    .line 178
    return-object v0
.end method

.method protected k(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLandroidx/media3/exoplayer/dash/manifest/UrlTemplate;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 22
    .param p15    # Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;",
            "Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;",
            "JJ)",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v2, p2

    .line 5
    .line 6
    move-wide/from16 v4, p4

    .line 7
    .line 8
    move-wide/from16 v6, p6

    .line 9
    .line 10
    move-wide/from16 v8, p8

    .line 11
    .line 12
    move-wide/from16 v10, p10

    .line 13
    .line 14
    move-object/from16 v12, p12

    .line 15
    .line 16
    move-wide/from16 v13, p13

    .line 17
    .line 18
    move-object/from16 v15, p15

    .line 19
    .line 20
    move-object/from16 v16, p16

    .line 21
    .line 22
    new-instance v21, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 23
    .line 24
    move-object/from16 v0, v21

    .line 25
    .line 26
    .line 27
    invoke-static/range {p17 .. p18}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 28
    move-result-wide v17

    .line 29
    .line 30
    .line 31
    invoke-static/range {p19 .. p20}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 32
    move-result-wide v19

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLandroidx/media3/exoplayer/dash/manifest/UrlTemplate;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;JJ)V

    .line 36
    return-object v21
.end method

.method protected k0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 24
    .param p2    # Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;JJJJJ)",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v6, p1

    .line 5
    .line 6
    move-object/from16 v7, p2

    .line 7
    .line 8
    const-wide/16 v0, 0x1

    .line 9
    .line 10
    if-eqz v7, :cond_0

    .line 11
    .line 12
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide v2, v0

    .line 15
    .line 16
    :goto_0
    const-string v4, "timescale"

    .line 17
    .line 18
    .line 19
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 20
    move-result-wide v8

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 30
    .line 31
    .line 32
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 33
    move-result-wide v10

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    iget-wide v2, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 38
    goto :goto_2

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    :goto_2
    const-string v4, "duration"

    .line 46
    .line 47
    .line 48
    invoke-static {v6, v4, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 49
    move-result-wide v12

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    iget-wide v0, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 54
    .line 55
    :cond_3
    const-string v2, "startNumber"

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v2, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 59
    move-result-wide v16

    .line 60
    .line 61
    .line 62
    invoke-static/range {p3 .. p3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->V(Ljava/util/List;)J

    .line 63
    move-result-wide v18

    .line 64
    .line 65
    .line 66
    invoke-static/range {p8 .. p11}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->s(JJ)J

    .line 67
    move-result-wide v20

    .line 68
    const/4 v0, 0x0

    .line 69
    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    iget-object v1, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move-object v1, v0

    .line 75
    .line 76
    :goto_3
    const-string v2, "media"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v15, v6, v2, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 80
    move-result-object v22

    .line 81
    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    iget-object v1, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move-object v1, v0

    .line 87
    .line 88
    :goto_4
    const-string v2, "initialization"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15, v6, v2, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 92
    move-result-object v23

    .line 93
    move-object v14, v0

    .line 94
    .line 95
    .line 96
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 97
    .line 98
    const-string v1, "Initialization"

    .line 99
    .line 100
    .line 101
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->S(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 108
    move-result-object v1

    .line 109
    move-object v14, v1

    .line 110
    goto :goto_6

    .line 111
    .line 112
    :cond_6
    const-string v1, "SegmentTimeline"

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    move-object/from16 v1, p1

    .line 123
    move-wide v2, v8

    .line 124
    .line 125
    move-wide/from16 v4, p6

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    .line 129
    move-result-object v0

    .line 130
    goto :goto_6

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    .line 135
    :goto_6
    const-string v1, "SegmentTemplate"

    .line 136
    .line 137
    .line 138
    invoke-static {v6, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-eqz v1, :cond_b

    .line 142
    .line 143
    if-eqz v7, :cond_a

    .line 144
    .line 145
    if-eqz v14, :cond_8

    .line 146
    goto :goto_7

    .line 147
    .line 148
    :cond_8
    iget-object v14, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 149
    .line 150
    :goto_7
    if-eqz v0, :cond_9

    .line 151
    goto :goto_8

    .line 152
    .line 153
    :cond_9
    iget-object v0, v7, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 154
    :cond_a
    :goto_8
    move-object v1, v14

    .line 155
    move-object v14, v0

    .line 156
    .line 157
    move-object/from16 v0, p0

    .line 158
    move-wide v2, v8

    .line 159
    move-wide v4, v10

    .line 160
    .line 161
    move-wide/from16 v6, v16

    .line 162
    .line 163
    move-wide/from16 v8, v18

    .line 164
    move-wide v10, v12

    .line 165
    move-object v12, v14

    .line 166
    .line 167
    move-wide/from16 v13, v20

    .line 168
    .line 169
    move-object/from16 v15, v23

    .line 170
    .line 171
    move-object/from16 v16, v22

    .line 172
    .line 173
    move-wide/from16 v17, p12

    .line 174
    .line 175
    move-wide/from16 v19, p4

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {v0 .. v20}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->k(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLandroidx/media3/exoplayer/dash/manifest/UrlTemplate;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    .line 182
    :cond_b
    move-object/from16 v15, p0

    .line 183
    goto :goto_5
.end method

.method protected l(JJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    .line 6
    return-object v0
.end method

.method protected l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    new-instance v10, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    const/4 v13, 0x0

    .line 16
    move-wide v3, v1

    .line 17
    move-wide v5, v11

    .line 18
    move v1, v13

    .line 19
    move v7, v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    .line 24
    const-string v2, "S"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    const-string v2, "t"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2, v11, v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 36
    move-result-wide v14

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move-object/from16 v1, p0

    .line 41
    move-object v2, v10

    .line 42
    move-wide v8, v14

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->a(Ljava/util/List;JJIJ)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    :cond_1
    cmp-long v1, v14, v11

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-wide v14, v3

    .line 53
    .line 54
    :goto_0
    const-string v1, "d"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v11, v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    const-string v3, "r"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v3, v13}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    move-wide v5, v1

    .line 67
    move v7, v3

    .line 68
    move v1, v4

    .line 69
    move-wide v3, v14

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    .line 75
    :goto_1
    const-string v2, "SegmentTimeline"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const-wide/16 v18, 0x3e8

    .line 86
    .line 87
    move-wide/from16 v14, p4

    .line 88
    .line 89
    move-wide/from16 v16, p2

    .line 90
    .line 91
    .line 92
    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    .line 93
    move-result-wide v8

    .line 94
    .line 95
    move-object/from16 v0, p0

    .line 96
    move-object v1, v10

    .line 97
    move-wide v2, v3

    .line 98
    move-wide v4, v5

    .line 99
    move v6, v7

    .line 100
    move-wide v7, v8

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->a(Ljava/util/List;JJIJ)J

    .line 104
    :cond_4
    return-object v10
.end method

.method protected m(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    .line 8
    move-wide/from16 v6, p6

    .line 9
    .line 10
    move-wide/from16 v8, p8

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJ)V

    .line 14
    return-object v10
.end method

.method protected m0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 2

    .line 1
    .line 2
    const-string v0, "media"

    .line 3
    .line 4
    const-string v1, "mediaRange"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method protected n0(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "forced_subtitle"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "forced-subtitle"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    return v0

    .line 22
    :cond_1
    const/4 p1, 0x2

    .line 23
    return p1
.end method

.method protected o0(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->n0(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    or-int/2addr v1, v2

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method protected p0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    const v3, -0x800001

    .line 11
    move-wide v4, v1

    .line 12
    move-wide v6, v4

    .line 13
    move-wide v8, v6

    .line 14
    move v10, v3

    .line 15
    move v11, v10

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    .line 20
    const-string v12, "Latency"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v12}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 24
    move-result v12

    .line 25
    .line 26
    const-string v13, "max"

    .line 27
    .line 28
    const-string v14, "min"

    .line 29
    .line 30
    if-eqz v12, :cond_1

    .line 31
    .line 32
    const-string v4, "target"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v4, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 36
    move-result-wide v4

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 40
    move-result-wide v6

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v13, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 44
    move-result-wide v8

    .line 45
    :cond_0
    :goto_1
    move-wide v13, v4

    .line 46
    move-wide v15, v6

    .line 47
    .line 48
    move-wide/from16 v17, v8

    .line 49
    .line 50
    move/from16 v19, v10

    .line 51
    .line 52
    move/from16 v20, v11

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    const-string v12, "PlaybackRate"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v12}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 59
    move-result v12

    .line 60
    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v14, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    .line 65
    move-result v10

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v13, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    .line 69
    move-result v11

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :goto_2
    const-string v4, "ServiceDescription"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    new-instance v0, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 81
    move-object v12, v0

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v12 .. v20}, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;-><init>(JJJFF)V

    .line 85
    return-object v0

    .line 86
    :cond_2
    move-wide v4, v13

    .line 87
    move-wide v6, v15

    .line 88
    .line 89
    move-wide/from16 v8, v17

    .line 90
    .line 91
    move/from16 v10, v19

    .line 92
    .line 93
    move/from16 v11, v20

    .line 94
    goto :goto_0
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->w(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected s0(Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 17
    .line 18
    const-string v4, "http://dashif.org/thumbnail_tile"

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "http://dashif.org/guidelines/thumbnail_tile"

    .line 27
    .line 28
    iget-object v4, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :cond_0
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const-string v3, "x"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    array-length v3, v2

    .line 46
    const/4 v4, 0x2

    .line 47
    .line 48
    if-eq v3, v4, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    :try_start_0
    aget-object v3, v2, v0

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    .line 58
    aget-object v2, v2, v4

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p1

    .line 76
    .line 77
    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method protected t0(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, -0x1

    .line 12
    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    :pswitch_0
    goto :goto_0

    .line 16
    .line 17
    :pswitch_1
    const-string v1, "6"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v4, v2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :pswitch_2
    const-string v1, "4"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v4, 0x3

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :pswitch_3
    const-string v1, "3"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v4, 0x2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :pswitch_4
    const-string v1, "2"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_4

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move v4, v3

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :pswitch_5
    const-string v1, "1"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    move v4, v0

    .line 70
    .line 71
    .line 72
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 73
    return v0

    .line 74
    :pswitch_6
    return v3

    .line 75
    .line 76
    :pswitch_7
    const/16 p1, 0x8

    .line 77
    return p1

    .line 78
    :pswitch_8
    return v2

    .line 79
    .line 80
    :pswitch_9
    const/16 p1, 0x800

    .line 81
    return p1

    .line 82
    .line 83
    :pswitch_a
    const/16 p1, 0x200

    .line 84
    return p1

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
    .locals 1
    .param p3    # Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->b(Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    return-object p3
.end method

.method protected v0(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;
    .locals 3

    .line 1
    .line 2
    const-string v0, "schemeIdUri"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v2, "value"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->n(Ljava/lang/String;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public w(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    move-result p2

    .line 15
    const/4 v2, 0x2

    .line 16
    .line 17
    if-ne p2, v2, :cond_0

    .line 18
    .line 19
    const-string p2, "MPD"

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->X(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 42
    move-result-object p1

    .line 43
    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method

.method protected x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;
    .locals 55
    .param p3    # Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p1

    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v14, v0, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 12
    move-result-wide v27

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    const-string v1, "mimeType"

    .line 19
    const/4 v13, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v29

    .line 24
    .line 25
    const-string v1, "codecs"

    .line 26
    .line 27
    .line 28
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v30

    .line 30
    .line 31
    const-string v1, "width"

    .line 32
    const/4 v2, -0x1

    .line 33
    .line 34
    .line 35
    invoke-static {v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 36
    move-result v31

    .line 37
    .line 38
    const-string v1, "height"

    .line 39
    .line 40
    .line 41
    invoke-static {v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 42
    move-result v32

    .line 43
    .line 44
    const/high16 v1, -0x40800000    # -1.0f

    .line 45
    .line 46
    .line 47
    invoke-static {v14, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->R(Lorg/xmlpull/v1/XmlPullParser;F)F

    .line 48
    move-result v33

    .line 49
    .line 50
    const-string v1, "audioSamplingRate"

    .line 51
    .line 52
    .line 53
    invoke-static {v14, v1, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 54
    move-result v34

    .line 55
    .line 56
    const-string v12, "lang"

    .line 57
    .line 58
    .line 59
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    const-string v3, "label"

    .line 63
    .line 64
    .line 65
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    new-instance v11, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    new-instance v10, Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    new-instance v9, Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    new-instance v8, Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    new-instance v7, Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    new-instance v4, Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    const/16 v35, 0x0

    .line 109
    .line 110
    move-object/from16 v36, p3

    .line 111
    .line 112
    move/from16 v37, v0

    .line 113
    .line 114
    move-object/from16 v38, v1

    .line 115
    .line 116
    move/from16 v39, v2

    .line 117
    .line 118
    move-object/from16 v40, v3

    .line 119
    .line 120
    move-object/from16 v42, v13

    .line 121
    .line 122
    move/from16 v41, v35

    .line 123
    .line 124
    move-wide/from16 v2, p6

    .line 125
    .line 126
    move-wide/from16 v0, p8

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 130
    .line 131
    const-string v13, "BaseURL"

    .line 132
    .line 133
    .line 134
    invoke-static {v14, v13}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 135
    move-result v13

    .line 136
    .line 137
    if-eqz v13, :cond_2

    .line 138
    .line 139
    if-nez v41, :cond_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v15, v14, v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 143
    move-result-wide v2

    .line 144
    .line 145
    const/16 v41, 0x1

    .line 146
    .line 147
    :cond_0
    move-object/from16 v13, p2

    .line 148
    .line 149
    move-wide/from16 p6, v0

    .line 150
    .line 151
    move-object/from16 v17, v10

    .line 152
    .line 153
    move/from16 v10, p14

    .line 154
    .line 155
    .line 156
    invoke-virtual {v15, v14, v13, v10}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    :cond_1
    :goto_1
    move-wide/from16 v0, p6

    .line 163
    .line 164
    move-object/from16 v43, v4

    .line 165
    move-object v15, v5

    .line 166
    .line 167
    move-object/from16 v45, v6

    .line 168
    .line 169
    move-object/from16 v46, v7

    .line 170
    .line 171
    move-object/from16 v47, v8

    .line 172
    .line 173
    move-object/from16 v48, v9

    .line 174
    .line 175
    move-object/from16 v50, v11

    .line 176
    .line 177
    move-object/from16 v51, v12

    .line 178
    .line 179
    move/from16 v53, v37

    .line 180
    .line 181
    move-object/from16 v54, v38

    .line 182
    .line 183
    const/16 v52, 0x0

    .line 184
    .line 185
    move-wide/from16 v37, v2

    .line 186
    .line 187
    move-object/from16 v3, v17

    .line 188
    .line 189
    goto/16 :goto_6

    .line 190
    .line 191
    :cond_2
    move-object/from16 v13, p2

    .line 192
    .line 193
    move-wide/from16 p6, v0

    .line 194
    .line 195
    move-object/from16 v17, v10

    .line 196
    .line 197
    move/from16 v10, p14

    .line 198
    .line 199
    const-string v0, "ContentProtection"

    .line 200
    .line 201
    .line 202
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 212
    .line 213
    if-eqz v1, :cond_3

    .line 214
    .line 215
    move-object/from16 v42, v1

    .line 216
    .line 217
    check-cast v42, Ljava/lang/String;

    .line 218
    .line 219
    :cond_3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 220
    .line 221
    if-eqz v0, :cond_1

    .line 222
    .line 223
    check-cast v0, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    goto :goto_1

    .line 228
    .line 229
    :cond_4
    const-string v0, "ContentComponent"

    .line 230
    .line 231
    .line 232
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 233
    move-result v0

    .line 234
    .line 235
    if-eqz v0, :cond_5

    .line 236
    const/4 v1, 0x0

    .line 237
    .line 238
    .line 239
    invoke-interface {v14, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    move-object/from16 v15, v38

    .line 243
    .line 244
    .line 245
    invoke-static {v15, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 250
    move-result v15

    .line 251
    .line 252
    move/from16 v13, v37

    .line 253
    .line 254
    .line 255
    invoke-static {v13, v15}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->o(II)I

    .line 256
    move-result v13

    .line 257
    .line 258
    move-object/from16 v54, v0

    .line 259
    .line 260
    move-object/from16 v52, v1

    .line 261
    .line 262
    move-wide/from16 v37, v2

    .line 263
    .line 264
    move-object/from16 v43, v4

    .line 265
    move-object v15, v5

    .line 266
    .line 267
    move-object/from16 v45, v6

    .line 268
    .line 269
    move-object/from16 v46, v7

    .line 270
    .line 271
    move-object/from16 v47, v8

    .line 272
    .line 273
    move-object/from16 v48, v9

    .line 274
    .line 275
    move-object/from16 v50, v11

    .line 276
    .line 277
    move-object/from16 v51, v12

    .line 278
    .line 279
    move/from16 v53, v13

    .line 280
    .line 281
    move-object/from16 v3, v17

    .line 282
    .line 283
    :goto_2
    move-wide/from16 v0, p6

    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :cond_5
    move/from16 v13, v37

    .line 288
    .line 289
    move-object/from16 v15, v38

    .line 290
    const/4 v1, 0x0

    .line 291
    .line 292
    const-string v0, "Role"

    .line 293
    .line 294
    .line 295
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 296
    move-result v16

    .line 297
    .line 298
    if-eqz v16, :cond_6

    .line 299
    .line 300
    .line 301
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    goto :goto_3

    .line 307
    .line 308
    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 309
    .line 310
    .line 311
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 312
    move-result v0

    .line 313
    .line 314
    if-eqz v0, :cond_7

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->z(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 318
    move-result v0

    .line 319
    .line 320
    move/from16 v39, v0

    .line 321
    .line 322
    :goto_3
    move-object/from16 v52, v1

    .line 323
    .line 324
    move-wide/from16 v37, v2

    .line 325
    .line 326
    move-object/from16 v43, v4

    .line 327
    .line 328
    move-object/from16 v45, v6

    .line 329
    .line 330
    move-object/from16 v46, v7

    .line 331
    .line 332
    move-object/from16 v47, v8

    .line 333
    .line 334
    move-object/from16 v48, v9

    .line 335
    .line 336
    move-object/from16 v50, v11

    .line 337
    .line 338
    move-object/from16 v51, v12

    .line 339
    .line 340
    move/from16 v53, v13

    .line 341
    .line 342
    move-object/from16 v54, v15

    .line 343
    .line 344
    move-object/from16 v3, v17

    .line 345
    .line 346
    move-wide/from16 v0, p6

    .line 347
    move-object v15, v5

    .line 348
    .line 349
    goto/16 :goto_6

    .line 350
    .line 351
    :cond_7
    const-string v0, "Accessibility"

    .line 352
    .line 353
    .line 354
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 355
    move-result v16

    .line 356
    .line 357
    if-eqz v16, :cond_8

    .line 358
    .line 359
    .line 360
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    goto :goto_3

    .line 366
    .line 367
    :cond_8
    const-string v0, "EssentialProperty"

    .line 368
    .line 369
    .line 370
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 371
    move-result v16

    .line 372
    .line 373
    if-eqz v16, :cond_9

    .line 374
    .line 375
    .line 376
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 377
    move-result-object v0

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    goto :goto_3

    .line 382
    .line 383
    :cond_9
    const-string v0, "SupplementalProperty"

    .line 384
    .line 385
    .line 386
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 387
    move-result v16

    .line 388
    .line 389
    if-eqz v16, :cond_a

    .line 390
    .line 391
    .line 392
    invoke-static {v14, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 393
    move-result-object v0

    .line 394
    .line 395
    .line 396
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    goto :goto_3

    .line 398
    .line 399
    :cond_a
    const-string v0, "Representation"

    .line 400
    .line 401
    .line 402
    invoke-static {v14, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 403
    move-result v0

    .line 404
    .line 405
    if-eqz v0, :cond_c

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 409
    move-result v0

    .line 410
    .line 411
    if-nez v0, :cond_b

    .line 412
    .line 413
    move-object/from16 v16, v4

    .line 414
    goto :goto_4

    .line 415
    .line 416
    :cond_b
    move-object/from16 v16, p2

    .line 417
    .line 418
    :goto_4
    move-object/from16 v0, p0

    .line 419
    .line 420
    move-object/from16 v18, v1

    .line 421
    .line 422
    move-object/from16 v1, p1

    .line 423
    .line 424
    move-wide/from16 v37, v2

    .line 425
    .line 426
    move-object/from16 v2, v16

    .line 427
    .line 428
    move-object/from16 v3, v29

    .line 429
    .line 430
    move-object/from16 v43, v4

    .line 431
    .line 432
    move-object/from16 v4, v30

    .line 433
    .line 434
    move-object/from16 v44, v5

    .line 435
    .line 436
    move/from16 v5, v31

    .line 437
    .line 438
    move-object/from16 v45, v6

    .line 439
    .line 440
    move/from16 v6, v32

    .line 441
    .line 442
    move-object/from16 v46, v7

    .line 443
    .line 444
    move/from16 v7, v33

    .line 445
    .line 446
    move-object/from16 v47, v8

    .line 447
    .line 448
    move/from16 v8, v39

    .line 449
    .line 450
    move-object/from16 v48, v9

    .line 451
    .line 452
    move/from16 v9, v34

    .line 453
    .line 454
    move-object/from16 v49, v17

    .line 455
    move-object v10, v15

    .line 456
    .line 457
    move-object/from16 v50, v11

    .line 458
    .line 459
    move-object/from16 v11, v47

    .line 460
    .line 461
    move-object/from16 v51, v12

    .line 462
    .line 463
    move-object/from16 v12, v48

    .line 464
    .line 465
    move/from16 v53, v13

    .line 466
    .line 467
    move-object/from16 v52, v18

    .line 468
    .line 469
    move-object/from16 v13, v46

    .line 470
    .line 471
    move-object/from16 v14, v45

    .line 472
    .line 473
    move-object/from16 v54, v15

    .line 474
    .line 475
    move-object/from16 v15, v36

    .line 476
    .line 477
    move-wide/from16 v16, p10

    .line 478
    .line 479
    move-wide/from16 v18, p4

    .line 480
    .line 481
    move-wide/from16 v20, v37

    .line 482
    .line 483
    move-wide/from16 v22, p6

    .line 484
    .line 485
    move-wide/from16 v24, p12

    .line 486
    .line 487
    move/from16 v26, p14

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {v0 .. v26}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/dash/manifest/SegmentBase;JJJJJZ)Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;->format:Landroidx/media3/common/Format;

    .line 494
    .line 495
    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)I

    .line 499
    move-result v1

    .line 500
    .line 501
    move/from16 v14, v53

    .line 502
    .line 503
    .line 504
    invoke-static {v14, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->o(II)I

    .line 505
    move-result v1

    .line 506
    .line 507
    move-object/from16 v15, v44

    .line 508
    .line 509
    .line 510
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    move-object/from16 v14, p1

    .line 513
    .line 514
    move/from16 v53, v1

    .line 515
    .line 516
    move-object/from16 v3, v49

    .line 517
    .line 518
    goto/16 :goto_2

    .line 519
    .line 520
    :cond_c
    move-object/from16 v52, v1

    .line 521
    .line 522
    move-wide/from16 v37, v2

    .line 523
    .line 524
    move-object/from16 v43, v4

    .line 525
    .line 526
    move-object/from16 v45, v6

    .line 527
    .line 528
    move-object/from16 v46, v7

    .line 529
    .line 530
    move-object/from16 v47, v8

    .line 531
    .line 532
    move-object/from16 v48, v9

    .line 533
    .line 534
    move-object/from16 v50, v11

    .line 535
    .line 536
    move-object/from16 v51, v12

    .line 537
    move v14, v13

    .line 538
    .line 539
    move-object/from16 v54, v15

    .line 540
    .line 541
    move-object/from16 v49, v17

    .line 542
    move-object v15, v5

    .line 543
    .line 544
    const-string v0, "SegmentBase"

    .line 545
    .line 546
    move-object/from16 v13, p1

    .line 547
    .line 548
    .line 549
    invoke-static {v13, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 550
    move-result v0

    .line 551
    .line 552
    if-eqz v0, :cond_d

    .line 553
    .line 554
    move-object/from16 v0, v36

    .line 555
    .line 556
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 557
    .line 558
    move-object/from16 v11, p0

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11, v13, v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->i0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;

    .line 562
    move-result-object v0

    .line 563
    .line 564
    move-object/from16 v36, v0

    .line 565
    .line 566
    move/from16 v53, v14

    .line 567
    .line 568
    move-object/from16 v3, v49

    .line 569
    .line 570
    move-wide/from16 v0, p6

    .line 571
    move-object v14, v13

    .line 572
    .line 573
    goto/16 :goto_6

    .line 574
    .line 575
    :cond_d
    move-object/from16 v11, p0

    .line 576
    .line 577
    const-string v0, "SegmentList"

    .line 578
    .line 579
    .line 580
    invoke-static {v13, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 581
    move-result v0

    .line 582
    .line 583
    if-eqz v0, :cond_e

    .line 584
    .line 585
    move-wide/from16 v0, p6

    .line 586
    .line 587
    .line 588
    invoke-virtual {v11, v13, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 589
    move-result-wide v16

    .line 590
    .line 591
    move-object/from16 v2, v36

    .line 592
    .line 593
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 594
    .line 595
    move-object/from16 v0, p0

    .line 596
    .line 597
    move-object/from16 v1, p1

    .line 598
    .line 599
    move-wide/from16 v3, p10

    .line 600
    .line 601
    move-wide/from16 v5, p4

    .line 602
    .line 603
    move-wide/from16 v7, v37

    .line 604
    .line 605
    move-wide/from16 v9, v16

    .line 606
    .line 607
    move/from16 v53, v14

    .line 608
    move-object v14, v11

    .line 609
    .line 610
    move-wide/from16 v11, p12

    .line 611
    .line 612
    .line 613
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->j0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;

    .line 614
    move-result-object v0

    .line 615
    .line 616
    move-object/from16 v36, v0

    .line 617
    move-object v14, v13

    .line 618
    .line 619
    :goto_5
    move-wide/from16 v0, v16

    .line 620
    .line 621
    move-object/from16 v3, v49

    .line 622
    goto :goto_6

    .line 623
    .line 624
    :cond_e
    move-wide/from16 v0, p6

    .line 625
    .line 626
    move/from16 v53, v14

    .line 627
    move-object v14, v11

    .line 628
    .line 629
    const-string v2, "SegmentTemplate"

    .line 630
    .line 631
    .line 632
    invoke-static {v13, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 633
    move-result v2

    .line 634
    .line 635
    if-eqz v2, :cond_f

    .line 636
    .line 637
    .line 638
    invoke-virtual {v14, v13, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 639
    move-result-wide v16

    .line 640
    .line 641
    move-object/from16 v2, v36

    .line 642
    .line 643
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 644
    .line 645
    move-object/from16 v0, p0

    .line 646
    .line 647
    move-object/from16 v1, p1

    .line 648
    .line 649
    move-object/from16 v3, v45

    .line 650
    .line 651
    move-wide/from16 v4, p10

    .line 652
    .line 653
    move-wide/from16 v6, p4

    .line 654
    .line 655
    move-wide/from16 v8, v37

    .line 656
    .line 657
    move-wide/from16 v10, v16

    .line 658
    move-object v14, v13

    .line 659
    .line 660
    move-wide/from16 v12, p12

    .line 661
    .line 662
    .line 663
    invoke-virtual/range {v0 .. v13}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->k0(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;

    .line 664
    move-result-object v0

    .line 665
    .line 666
    move-object/from16 v36, v0

    .line 667
    goto :goto_5

    .line 668
    :cond_f
    move-object v14, v13

    .line 669
    .line 670
    const-string v2, "InbandEventStream"

    .line 671
    .line 672
    .line 673
    invoke-static {v14, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 674
    move-result v3

    .line 675
    .line 676
    if-eqz v3, :cond_10

    .line 677
    .line 678
    .line 679
    invoke-static {v14, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 680
    move-result-object v2

    .line 681
    .line 682
    move-object/from16 v3, v49

    .line 683
    .line 684
    .line 685
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    goto :goto_6

    .line 687
    .line 688
    :cond_10
    move-object/from16 v3, v49

    .line 689
    .line 690
    const-string v2, "Label"

    .line 691
    .line 692
    .line 693
    invoke-static {v14, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 694
    move-result v2

    .line 695
    .line 696
    if-eqz v2, :cond_11

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->U(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 700
    move-result-object v2

    .line 701
    .line 702
    move-object/from16 v40, v2

    .line 703
    goto :goto_6

    .line 704
    .line 705
    .line 706
    :cond_11
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/XmlPullParserUtil;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 707
    move-result v2

    .line 708
    .line 709
    if-eqz v2, :cond_12

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->y(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 713
    .line 714
    :cond_12
    :goto_6
    const-string v2, "AdaptationSet"

    .line 715
    .line 716
    .line 717
    invoke-static {v14, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 718
    move-result v2

    .line 719
    .line 720
    if-eqz v2, :cond_14

    .line 721
    .line 722
    new-instance v0, Ljava/util/ArrayList;

    .line 723
    .line 724
    .line 725
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 726
    move-result v1

    .line 727
    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .line 731
    move/from16 v1, v35

    .line 732
    .line 733
    .line 734
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 735
    move-result v2

    .line 736
    .line 737
    if-ge v1, v2, :cond_13

    .line 738
    .line 739
    .line 740
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 741
    move-result-object v2

    .line 742
    .line 743
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 744
    .line 745
    move-object/from16 p1, p0

    .line 746
    .line 747
    move-object/from16 p2, v2

    .line 748
    .line 749
    move-object/from16 p3, v40

    .line 750
    .line 751
    move-object/from16 p4, v42

    .line 752
    .line 753
    move-object/from16 p5, v50

    .line 754
    .line 755
    move-object/from16 p6, v3

    .line 756
    .line 757
    .line 758
    invoke-virtual/range {p1 .. p6}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->i(Landroidx/media3/exoplayer/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 759
    move-result-object v2

    .line 760
    .line 761
    .line 762
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    add-int/lit8 v1, v1, 0x1

    .line 765
    goto :goto_7

    .line 766
    .line 767
    :cond_13
    move-object/from16 p1, p0

    .line 768
    .line 769
    move-wide/from16 p2, v27

    .line 770
    .line 771
    move/from16 p4, v53

    .line 772
    .line 773
    move-object/from16 p5, v0

    .line 774
    .line 775
    move-object/from16 p6, v48

    .line 776
    .line 777
    move-object/from16 p7, v46

    .line 778
    .line 779
    move-object/from16 p8, v45

    .line 780
    .line 781
    .line 782
    invoke-virtual/range {p1 .. p8}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 783
    move-result-object v0

    .line 784
    return-object v0

    .line 785
    :cond_14
    move-object v10, v3

    .line 786
    move-object v5, v15

    .line 787
    .line 788
    move-wide/from16 v2, v37

    .line 789
    .line 790
    move-object/from16 v4, v43

    .line 791
    .line 792
    move-object/from16 v6, v45

    .line 793
    .line 794
    move-object/from16 v7, v46

    .line 795
    .line 796
    move-object/from16 v8, v47

    .line 797
    .line 798
    move-object/from16 v9, v48

    .line 799
    .line 800
    move-object/from16 v11, v50

    .line 801
    .line 802
    move-object/from16 v12, v51

    .line 803
    .line 804
    move-object/from16 v13, v52

    .line 805
    .line 806
    move/from16 v37, v53

    .line 807
    .line 808
    move-object/from16 v38, v54

    .line 809
    .line 810
    move-object/from16 v15, p0

    .line 811
    .line 812
    goto/16 :goto_0
.end method

.method protected y(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    return-void
.end method

.method protected z(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "schemeIdUri"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    :goto_0
    move v0, v2

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :sswitch_0
    const-string v1, "urn:dolby:dash:audio_channel_configuration:2011"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x6

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :sswitch_1
    const-string v1, "tag:dts.com,2018:uhd:audio_channel_configuration"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x5

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :sswitch_2
    const-string v1, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x4

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :sswitch_3
    const-string v1, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x3

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :sswitch_4
    const-string v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v0, 0x2

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :sswitch_5
    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x1

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :sswitch_6
    const-string v1, "urn:dts:dash:audio_channel_configuration:2012"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-nez v0, :cond_6

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 v0, 0x0

    .line 97
    .line 98
    .line 99
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :pswitch_0
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->K(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 104
    move-result v2

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->Y(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 109
    move-result v2

    .line 110
    goto :goto_2

    .line 111
    .line 112
    .line 113
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->I(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 114
    move-result v2

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :pswitch_3
    const-string v0, "value"

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0, v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 121
    move-result v2

    .line 122
    goto :goto_2

    .line 123
    .line 124
    .line 125
    :pswitch_4
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;->J(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 126
    move-result v2

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 130
    .line 131
    const-string v0, "AudioChannelConfiguration"

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    return v2

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
