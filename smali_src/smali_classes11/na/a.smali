.class public final Lna/a;
.super Lorg/schabi/newpipe/extractor/linkhandler/d;
.source "SourceFile"


# static fields
.field private static final EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final INSTANCE:Lna/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lna/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lna/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lna/a;->INSTANCE:Lna/a;

    .line 8
    .line 9
    const-string v0, "playlist|watch|attribution_link|watch_popup|embed|feed|select_site|account|reporthistory|redirect"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lna/a;->EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/d;-><init>()V

    .line 4
    return-void
.end method

.method public static n()Lna/a;
    .locals 1

    .line 1
    sget-object v0, Lna/a;->INSTANCE:Lna/a;

    return-object v0
.end method

.method private o([Ljava/lang/String;)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    sget-object v0, Lna/a;->EXCLUDED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    move v1, v2

    .line 21
    :cond_0
    return v1
.end method

.method private p([Ljava/lang/String;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    aget-object p1, p1, v1

    .line 7
    .line 8
    const-string v0, "@"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "/"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lqa/y;->l(Ljava/net/URL;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->e0(Ljava/net/URL;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->V(Ljava/net/URL;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->U(Ljava/net/URL;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_6

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2}, Lna/a;->p([Ljava/lang/String;)Z

    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    aget-object p1, v2, v4

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-direct {p0, v2}, Lna/a;->o([Ljava/lang/String;)Z

    .line 61
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    const-string v5, "c/"

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    :cond_2
    const-string v3, "user/"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    move-result v3

    .line 91
    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    const-string v3, "channel/"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    move-result v3

    .line 99
    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    move-result v1

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_3
    new-instance p1, Laa/h;

    .line 110
    .line 111
    const-string v0, "The given URL is not a channel, a user or a handle URL"

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1

    .line 116
    .line 117
    :cond_4
    :goto_1
    aget-object p1, v2, p1

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lqa/y;->k(Ljava/lang/String;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    aget-object v1, v2, v4

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    .line 146
    :cond_5
    new-instance p1, Laa/h;

    .line 147
    .line 148
    const-string v0, "The given ID is not a YouTube channel or user ID"

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 152
    throw p1

    .line 153
    .line 154
    :cond_6
    new-instance p1, Laa/h;

    .line 155
    .line 156
    const-string v0, "The URL given is not a YouTube URL"

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 160
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .line 162
    :goto_2
    new-instance v0, Laa/h;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string v3, "Could not parse URL :"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lna/a;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p3, "https://www.youtube.com/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
