.class public Lcom/narvii/util/YoutubeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIDEO_ID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "[A-Za-z0-9_-]{11}"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/YoutubeUtils;->VIDEO_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static extractAnimatedWebpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    new-instance v1, Ljava/net/URL;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, "https://www.youtube.com/results?search_query="

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "&page=&utm_source=opensearch"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    :try_start_0
    const-string v2, "User-Agent"

    .line 44
    .line 45
    const-string v3, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    const-string v2, "Accept"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v3, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    const-string v2, "Accept-Language"

    .line 59
    .line 60
    const-string v3, "en-US"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 67
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .line 69
    const/16 v3, 0x2000

    .line 70
    .line 71
    :try_start_1
    new-array v3, v3, [B

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    const-string v5, "\"(https://[\\d\\w\\.]+/an_webp/"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p0, "/mqdefault_6s.webp[^\"]*)\""

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    :goto_0
    const/16 v4, 0x1000

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3, v4, v4}, Lcom/narvii/util/YoutubeUtils;->readFull(Ljava/io/InputStream;[BII)I

    .line 103
    move-result v5

    .line 104
    const/4 v6, -0x1

    .line 105
    .line 106
    if-eq v5, v6, :cond_2

    .line 107
    .line 108
    new-instance v6, Ljava/lang/String;

    .line 109
    .line 110
    add-int/lit16 v5, v5, 0x1000

    .line 111
    .line 112
    .line 113
    const-string/jumbo v7, "us-ascii"

    .line 114
    const/4 v8, 0x0

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v3, v8, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 125
    move-result v6

    .line 126
    .line 127
    if-eqz v6, :cond_1

    .line 128
    const/4 p0, 0x1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->decodeJsonString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    if-eqz v2, :cond_0

    .line 143
    .line 144
    .line 145
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .line 147
    .line 148
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    return-object p0

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    move-object v1, v2

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :cond_1
    :try_start_3
    invoke-static {v3, v4, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    goto :goto_0

    .line 157
    .line 158
    :cond_2
    if-eqz v2, :cond_3

    .line 159
    .line 160
    .line 161
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 162
    .line 163
    .line 164
    :catch_1
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 165
    return-object v1

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    .line 168
    :goto_1
    if-eqz v1, :cond_4

    .line 169
    .line 170
    .line 171
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    .line 173
    .line 174
    :catch_2
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    throw p0
.end method

.method public static getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "http://i.ytimg.com/vi/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, "/default.jpg"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "http://i.ytimg.com/vi/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, "/hqdefault.jpg"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getYoutubePlaylistIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "list"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    return-object v1
.end method

.method public static getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string/jumbo v0, "ytv://"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x6

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "youtu.be"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 54
    move-result-object p0

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    check-cast p0, Ljava/lang/String;

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    const-string/jumbo v0, "v"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    :goto_0
    if-eqz p0, :cond_3

    .line 72
    .line 73
    sget-object v0, Lcom/narvii/util/YoutubeUtils;->VIDEO_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 81
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object v1, p0

    .line 86
    :catch_0
    :goto_1
    return-object v1
.end method

.method public static getYoutubeVideoLength(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/youtube/v3/videos?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&key="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/narvii/util/YoutubeUtils;->ytk()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&part=snippet,contentDetails"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 3
    invoke-static {p0}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x200

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x7d00

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    :cond_0
    const-wide/16 v1, 0x800

    .line 5
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    long-to-int v1, v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    .line 7
    invoke-virtual {v3, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {p0, v0, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "items"

    .line 12
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "contentDetails"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/narvii/util/YoutubeUtils;->parseISO8601Duration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getYoutubeVideoLength(Ljava/util/Collection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    const-string v4, ","

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.googleapis.com/youtube/v3/videos?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&key="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/narvii/util/YoutubeUtils;->ytk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&part=snippet,contentDetails"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 22
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 23
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x200

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x7d00

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    :cond_2
    const-wide/16 v4, 0x800

    .line 24
    :cond_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    long-to-int v4, v4

    invoke-direct {v6, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 25
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 26
    invoke-virtual {v6, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 28
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const-string/jumbo v5, "utf-8"

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 31
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "contentDetails"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v3}, Lcom/narvii/util/YoutubeUtils;->parseISO8601Duration(Ljava/lang/String;)J

    move-result-wide v5

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    return-object v0
.end method

.method public static getYoutubeVideoLength2(Ljava/lang/String;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/net/URL;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "https://m.youtube.com/results?search_query="

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Ljava/net/URLConnection;

    .line 33
    .line 34
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 35
    .line 36
    const-string v1, "User-Agent"

    .line 37
    .line 38
    const-string v2, "Mozilla/5.0 (Linux; Android 8.1.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3384.0 Mobile Safari/537.36"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    const-string v1, "Accept"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    const-string v1, "Accept-Language"

    .line 52
    .line 53
    const-string v2, "en-US"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 64
    move-result v2

    .line 65
    int-to-long v2, v2

    .line 66
    .line 67
    const-wide/16 v4, 0xfa0

    .line 68
    .line 69
    cmp-long v4, v2, v4

    .line 70
    .line 71
    if-ltz v4, :cond_0

    .line 72
    .line 73
    .line 74
    const-wide/32 v4, 0x17700

    .line 75
    .line 76
    cmp-long v4, v2, v4

    .line 77
    .line 78
    if-lez v4, :cond_1

    .line 79
    .line 80
    :cond_0
    const-wide/16 v2, 0x7d00

    .line 81
    .line 82
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 83
    long-to-int v2, v2

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 87
    .line 88
    const/16 v2, 0x1000

    .line 89
    .line 90
    new-array v2, v2, [B

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 94
    move-result v3

    .line 95
    const/4 v5, -0x1

    .line 96
    const/4 v6, 0x0

    .line 97
    .line 98
    if-eq v3, v5, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    .line 110
    new-instance v0, Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 118
    move-result v2

    .line 119
    .line 120
    .line 121
    const-string/jumbo v3, "utf-8"

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1, v6, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 125
    .line 126
    const-string v1, "id=\"initial-data\"\\s*>\\s*<!--(.*)-->"

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    const/4 v1, 0x1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    new-instance v2, Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    const-string v0, "contents"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 160
    move-result-object v2

    .line 161
    .line 162
    const-string v3, "sectionListRenderer"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    const-string v3, "itemSectionRenderer"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 188
    move-result v2

    .line 189
    move v3, v6

    .line 190
    .line 191
    :goto_1
    if-ge v3, v2, :cond_5

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 195
    move-result-object v4

    .line 196
    .line 197
    const-string v5, "compactVideoRenderer"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 201
    move-result-object v7

    .line 202
    .line 203
    .line 204
    const-string/jumbo v8, "videoId"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v7

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v7

    .line 213
    .line 214
    if-eqz v7, :cond_4

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 218
    move-result-object v4

    .line 219
    .line 220
    const-string v5, "lengthText"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    const-string v5, "runs"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 230
    move-result-object v4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 234
    move-result-object v4

    .line 235
    .line 236
    .line 237
    const-string/jumbo v5, "text"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v4

    .line 242
    .line 243
    const-string v5, "(\\d+:)?(\\d{1,2}):(\\d{1,2})"

    .line 244
    .line 245
    .line 246
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 247
    move-result-object v5

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 251
    move-result-object v4

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 255
    move-result v5

    .line 256
    .line 257
    if-eqz v5, :cond_4

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 262
    .line 263
    if-eqz p0, :cond_3

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 267
    move-result v0

    .line 268
    .line 269
    if-le v0, v1, :cond_3

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 273
    move-result v0

    .line 274
    sub-int/2addr v0, v1

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 279
    .line 280
    .line 281
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    move-result v6

    .line 283
    :cond_3
    const/4 p0, 0x2

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 287
    move-result-object p0

    .line 288
    .line 289
    .line 290
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 291
    move-result p0

    .line 292
    const/4 v0, 0x3

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 300
    move-result v0

    .line 301
    .line 302
    mul-int/lit8 p0, p0, 0x3c

    .line 303
    add-int/2addr v0, p0

    .line 304
    .line 305
    mul-int/lit16 v6, v6, 0xe10

    .line 306
    add-int/2addr v0, v6

    .line 307
    int-to-long v0, v0

    .line 308
    .line 309
    const-wide/16 v2, 0x3e8

    .line 310
    mul-long/2addr v0, v2

    .line 311
    return-wide v0

    .line 312
    .line 313
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 314
    goto :goto_1

    .line 315
    .line 316
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 317
    .line 318
    .line 319
    const-string/jumbo v0, "video not found"

    .line 320
    .line 321
    .line 322
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 323
    throw p0

    .line 324
    .line 325
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    .line 326
    .line 327
    const-string v0, "data error"

    .line 328
    .line 329
    .line 330
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 331
    throw p0
.end method

.method public static getYoutubeVideoSearchKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "."

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, ".youtube.com"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "/results"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v0, "q"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const-string v0, "search_query"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result p0

    .line 64
    .line 65
    if-nez p0, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 69
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    const/16 v1, 0x1e

    .line 72
    .line 73
    if-ge p0, v1, :cond_1

    .line 74
    return-object v0

    .line 75
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public static isYtvScheme(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    const-string/jumbo v0, "ytv://"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/util/YoutubeUtils;->openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public static openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vnd.youtube://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.youtube"

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "force_fullscreen"

    const/4 p2, 0x1

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    :cond_0
    invoke-static {p0, v1}, Lcom/narvii/util/YoutubeUtils;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://www.youtube.com/watch?v="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13
    invoke-static {p0, p2}, Lcom/narvii/util/YoutubeUtils;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static parseFraction(Ljava/lang/String;I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p0, "000000000"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result p0

    .line 38
    mul-int/2addr p0, p1

    .line 39
    return p0

    .line 40
    :cond_1
    :goto_0
    return v0
.end method

.method private static parseISO8601Duration(Ljava/lang/String;)J
    .locals 14

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    return-wide v0

    .line 6
    .line 7
    :cond_0
    :try_start_0
    const-string v2, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    .line 8
    const/4 v3, 0x2

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    const-string v2, "T"

    .line 25
    const/4 v4, 0x3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_8

    .line 36
    .line 37
    const-string v2, "-"

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    const/4 v5, 0x4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    const/4 v7, 0x6

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    const/4 v8, 0x7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    if-eqz v7, :cond_8

    .line 79
    .line 80
    :cond_1
    if-nez v3, :cond_2

    .line 81
    move-wide v8, v0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 86
    move-result-wide v8

    .line 87
    .line 88
    .line 89
    const-wide/32 v10, 0x15180

    .line 90
    mul-long/2addr v8, v10

    .line 91
    .line 92
    :goto_0
    if-nez v5, :cond_3

    .line 93
    move-wide v10, v0

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    move-result-wide v10

    .line 99
    .line 100
    const-wide/16 v12, 0xe10

    .line 101
    mul-long/2addr v10, v12

    .line 102
    .line 103
    :goto_1
    if-nez v6, :cond_4

    .line 104
    move-wide v5, v0

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 109
    move-result-wide v5

    .line 110
    .line 111
    const-wide/16 v12, 0x3c

    .line 112
    mul-long/2addr v5, v12

    .line 113
    .line 114
    :goto_2
    if-nez v7, :cond_5

    .line 115
    move-wide v12, v0

    .line 116
    goto :goto_3

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 120
    move-result-wide v12

    .line 121
    .line 122
    :goto_3
    cmp-long v3, v12, v0

    .line 123
    .line 124
    if-gez v3, :cond_6

    .line 125
    const/4 v4, -0x1

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-static {p0, v4}, Lcom/narvii/util/YoutubeUtils;->parseFraction(Ljava/lang/String;I)I

    .line 129
    move-result p0

    .line 130
    add-long/2addr v8, v10

    .line 131
    add-long/2addr v8, v5

    .line 132
    add-long/2addr v8, v12

    .line 133
    .line 134
    const-wide/16 v3, 0x3e8

    .line 135
    mul-long/2addr v8, v3

    .line 136
    int-to-long v3, p0

    .line 137
    .line 138
    .line 139
    const-wide/32 v5, 0xf4240

    .line 140
    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    add-long/2addr v8, v3

    .line 142
    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    const-wide/16 v0, -0x1

    .line 146
    mul-long/2addr v8, v0

    .line 147
    :cond_7
    return-wide v8

    .line 148
    :catch_0
    :cond_8
    return-wide v0
.end method

.method public static readFull(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    if-ge v0, p3, :cond_1

    .line 10
    .line 11
    add-int v2, p2, v0

    .line 12
    .line 13
    sub-int v3, p3, v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-ne v2, v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/2addr v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return v0
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ytk()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x27

    .line 3
    .line 4
    new-array v1, v0, [C

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    const-string v3, "ia0IW1fuaeW>Ttu[c4T=ff=d48g1bS]c0VUQRia"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v3

    .line 14
    .line 15
    rsub-int v3, v3, 0xaa

    .line 16
    int-to-char v3, v3

    .line 17
    .line 18
    aput-char v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const-string v2, "config"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "youtubeApiKey"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
