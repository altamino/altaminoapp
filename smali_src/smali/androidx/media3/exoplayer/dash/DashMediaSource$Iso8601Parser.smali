.class final Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Iso8601Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(.+?)(Z|((\\+|-|\u2212)(\\d\\d)(:?(\\d\\d))?))"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/io/BufferedReader;

    .line 3
    .line 4
    new-instance v0, Ljava/io/InputStreamReader;

    .line 5
    .line 6
    sget-object v1, Lcom/google/common/base/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    const/4 p1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 39
    .line 40
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 44
    .line 45
    const-string v2, "UTC"

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 60
    move-result-wide v1

    .line 61
    const/4 p1, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    const-string v3, "Z"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-eqz p1, :cond_0

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_0
    const-string p1, "+"

    .line 77
    const/4 v3, 0x4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    const-wide/16 v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_1
    const-wide/16 v3, -0x1

    .line 93
    :goto_0
    const/4 p1, 0x5

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    move-result-wide v5

    .line 102
    const/4 p1, 0x7

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    const-wide/16 v7, 0x0

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    move-result-wide v7

    .line 120
    .line 121
    :goto_1
    const-wide/16 v9, 0x3c

    .line 122
    mul-long/2addr v5, v9

    .line 123
    add-long/2addr v5, v7

    .line 124
    .line 125
    .line 126
    const-wide/32 v7, 0xea60

    .line 127
    mul-long/2addr v5, v7

    .line 128
    mul-long/2addr v3, v5

    .line 129
    sub-long/2addr v1, v3

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string v1, "Couldn\'t parse timestamp: "

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 157
    move-result-object p1

    .line 158
    throw p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    :goto_3
    invoke-static {p2, p1}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 162
    move-result-object p1

    .line 163
    throw p1
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
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
