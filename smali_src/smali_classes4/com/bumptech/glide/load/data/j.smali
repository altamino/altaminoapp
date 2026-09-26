.class public Lcom/bumptech/glide/load/data/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/j$a;,
        Lcom/bumptech/glide/load/data/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/j$b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final INVALID_STATUS_CODE:I = -0x1

.field private static final MAXIMUM_REDIRECTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HttpUrlFetcher"


# instance fields
.field private final connectionFactory:Lcom/bumptech/glide/load/data/j$b;

.field private final glideUrl:Lcom/bumptech/glide/load/model/g;

.field private volatile isCancelled:Z

.field private stream:Ljava/io/InputStream;

.field private final timeout:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/data/j$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/data/j$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/data/j;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/j$b;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/g;I)V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/data/j;->DEFAULT_CONNECTION_FACTORY:Lcom/bumptech/glide/load/data/j$b;

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/j;-><init>(Lcom/bumptech/glide/load/model/g;ILcom/bumptech/glide/load/data/j$b;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/model/g;ILcom/bumptech/glide/load/data/j$b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/j;->glideUrl:Lcom/bumptech/glide/load/model/g;

    iput p2, p0, Lcom/bumptech/glide/load/data/j;->timeout:I

    iput-object p3, p0, Lcom/bumptech/glide/load/data/j;->connectionFactory:Lcom/bumptech/glide/load/data/j$b;

    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 18
    move-result-object p1

    .line 19
    int-to-long v0, v0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/bumptech/glide/util/c;->b(Ljava/io/InputStream;J)Ljava/io/InputStream;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/data/j;->stream:Ljava/io/InputStream;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x3

    .line 28
    .line 29
    const-string v1, "HttpUrlFetcher"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "Got non empty content encoding: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lcom/bumptech/glide/load/data/j;->stream:Ljava/io/InputStream;

    .line 66
    .line 67
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/data/j;->stream:Ljava/io/InputStream;

    .line 68
    return-object p1
.end method

.method private static f(I)Z
    .locals 1

    .line 1
    .line 2
    div-int/lit8 p0, p0, 0x64

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method private static g(I)Z
    .locals 1

    .line 1
    .line 2
    div-int/lit8 p0, p0, 0x64

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method private h(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    if-ge p2, v0, :cond_8

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p3

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p3, Lcom/bumptech/glide/load/e;

    .line 23
    .line 24
    const-string v0, "In re-direct loop"

    .line 25
    .line 26
    .line 27
    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    .line 28
    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    :catch_0
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->connectionFactory:Lcom/bumptech/glide/load/data/j$b;

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, p1}, Lcom/bumptech/glide/load/data/j$b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    iput-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    .line 39
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 77
    .line 78
    iget v0, p0, Lcom/bumptech/glide/load/data/j;->timeout:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 82
    .line 83
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 84
    .line 85
    iget v0, p0, Lcom/bumptech/glide/load/data/j;->timeout:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 89
    .line 90
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 91
    const/4 v0, 0x0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 95
    .line 96
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 97
    const/4 v1, 0x1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 101
    .line 102
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    .line 107
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 111
    .line 112
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    iput-object p3, p0, Lcom/bumptech/glide/load/data/j;->stream:Ljava/io/InputStream;

    .line 119
    .line 120
    iget-boolean p3, p0, Lcom/bumptech/glide/load/data/j;->isCancelled:Z

    .line 121
    .line 122
    if-eqz p3, :cond_3

    .line 123
    const/4 p1, 0x0

    .line 124
    return-object p1

    .line 125
    .line 126
    :cond_3
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 130
    move-result p3

    .line 131
    .line 132
    .line 133
    invoke-static {p3}, Lcom/bumptech/glide/load/data/j;->f(I)Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/j;->e(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-static {p3}, Lcom/bumptech/glide/load/data/j;->g(I)Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    iget-object p3, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 152
    .line 153
    const-string v0, "Location"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p3

    .line 158
    .line 159
    .line 160
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    new-instance v0, Ljava/net/URL;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/j;->b()V

    .line 172
    add-int/2addr p2, v1

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v0, p2, p1, p4}, Lcom/bumptech/glide/load/data/j;->h(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    .line 176
    move-result-object p1

    .line 177
    return-object p1

    .line 178
    .line 179
    :cond_5
    new-instance p1, Lcom/bumptech/glide/load/e;

    .line 180
    .line 181
    const-string p2, "Received empty or null redirect url"

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    .line 185
    throw p1

    .line 186
    :cond_6
    const/4 p1, -0x1

    .line 187
    .line 188
    if-ne p3, p1, :cond_7

    .line 189
    .line 190
    new-instance p1, Lcom/bumptech/glide/load/e;

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/e;-><init>(I)V

    .line 194
    throw p1

    .line 195
    .line 196
    :cond_7
    new-instance p1, Lcom/bumptech/glide/load/e;

    .line 197
    .line 198
    iget-object p2, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 202
    move-result-object p2

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;I)V

    .line 206
    throw p1

    .line 207
    .line 208
    :cond_8
    new-instance p1, Lcom/bumptech/glide/load/e;

    .line 209
    .line 210
    const-string p2, "Too many (> 5) redirects!"

    .line 211
    .line 212
    .line 213
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;)V

    .line 214
    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/data/j;->stream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/data/j;->urlConnection:Ljava/net/HttpURLConnection;

    .line 18
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/a;->REMOTE:Lcom/bumptech/glide/load/a;

    .line 3
    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/data/j;->isCancelled:Z

    return-void
.end method

.method public d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V
    .locals 8
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/data/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "Finished http url fetcher fetch in "

    .line 3
    .line 4
    const-string v0, "HttpUrlFetcher"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/data/j;->glideUrl:Lcom/bumptech/glide/load/model/g;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/bumptech/glide/load/model/g;->h()Ljava/net/URL;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    iget-object v5, p0, Lcom/bumptech/glide/load/data/j;->glideUrl:Lcom/bumptech/glide/load/model/g;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Lcom/bumptech/glide/load/model/g;->e()Ljava/util/Map;

    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/bumptech/glide/load/data/j;->h(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v4}, Lcom/bumptech/glide/load/data/d$a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 48
    move-result-wide v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p2

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v4

    .line 63
    const/4 v5, 0x3

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 67
    move-result v5

    .line 68
    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    const-string v5, "Failed to load data for url"

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-interface {p2, v4}, Lcom/bumptech/glide/load/data/d$a;->f(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 81
    move-result p2

    .line 82
    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    :goto_1
    return-void

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 108
    move-result-wide v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    throw p2
.end method
