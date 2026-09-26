.class public final Lokhttp3/internal/authenticator/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;
    }
.end annotation


# instance fields
.field private final defaultDns:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dns;)V
    .locals 1
    .param p1    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->defaultDns:Lokhttp3/Dns;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Dns;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lokhttp3/Dns;)V

    return-void
.end method

.method private final connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Ljava/net/InetAddress;

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string p2, "address() as InetSocketAddress).address"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :goto_1
    return-object p1

    .line 52
    .line 53
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string p2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 20
    .param p1    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "response"

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->challenges()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    .line 25
    move-result v2

    .line 26
    .line 27
    const/16 v5, 0x197

    .line 28
    const/4 v6, 0x1

    .line 29
    .line 30
    if-ne v2, v5, :cond_0

    .line 31
    move v2, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    const/4 v5, 0x0

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    move-object v7, v5

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    :goto_1
    if-nez v7, :cond_2

    .line 45
    .line 46
    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v8

    .line 55
    .line 56
    if-eqz v8, :cond_b

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v8

    .line 61
    .line 62
    check-cast v8, Lokhttp3/Challenge;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 66
    move-result-object v9

    .line 67
    .line 68
    const-string v10, "Basic"

    .line 69
    .line 70
    .line 71
    invoke-static {v10, v9, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 72
    move-result v9

    .line 73
    .line 74
    if-nez v9, :cond_4

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_4
    if-nez p1, :cond_5

    .line 78
    :goto_3
    move-object v9, v5

    .line 79
    goto :goto_4

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    if-nez v9, :cond_6

    .line 86
    goto :goto_3

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-virtual {v9}, Lokhttp3/Address;->dns()Lokhttp3/Dns;

    .line 90
    move-result-object v9

    .line 91
    .line 92
    :goto_4
    if-nez v9, :cond_7

    .line 93
    .line 94
    iget-object v9, v0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->defaultDns:Lokhttp3/Dns;

    .line 95
    .line 96
    :cond_7
    const-string v10, "proxy"

    .line 97
    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 102
    move-result-object v11

    .line 103
    .line 104
    if-eqz v11, :cond_8

    .line 105
    .line 106
    check-cast v11, Ljava/net/InetSocketAddress;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 110
    move-result-object v12

    .line 111
    .line 112
    .line 113
    invoke-static {v7, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v7, v4, v9}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 117
    move-result-object v13

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    .line 121
    move-result v14

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 125
    move-result-object v15

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    .line 129
    move-result-object v16

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 133
    move-result-object v17

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    .line 137
    move-result-object v18

    .line 138
    .line 139
    sget-object v19, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 140
    .line 141
    .line 142
    invoke-static/range {v12 .. v19}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 143
    move-result-object v9

    .line 144
    goto :goto_5

    .line 145
    .line 146
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    .line 147
    .line 148
    const-string v2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v1

    .line 153
    .line 154
    .line 155
    :cond_9
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 156
    move-result-object v11

    .line 157
    .line 158
    .line 159
    invoke-static {v7, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v7, v4, v9}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->connectToInetAddress(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 163
    move-result-object v10

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    .line 167
    move-result v12

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    .line 171
    move-result-object v13

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Lokhttp3/Challenge;->realm()Ljava/lang/String;

    .line 175
    move-result-object v14

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    .line 179
    move-result-object v15

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    .line 183
    move-result-object v16

    .line 184
    .line 185
    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 186
    move-object v9, v11

    .line 187
    move v11, v12

    .line 188
    move-object v12, v13

    .line 189
    move-object v13, v14

    .line 190
    move-object v14, v15

    .line 191
    .line 192
    move-object/from16 v15, v16

    .line 193
    .line 194
    move-object/from16 v16, v17

    .line 195
    .line 196
    .line 197
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 198
    move-result-object v9

    .line 199
    .line 200
    :goto_5
    if-eqz v9, :cond_3

    .line 201
    .line 202
    if-eqz v2, :cond_a

    .line 203
    .line 204
    const-string v1, "Proxy-Authorization"

    .line 205
    goto :goto_6

    .line 206
    .line 207
    :cond_a
    const-string v1, "Authorization"

    .line 208
    .line 209
    .line 210
    :goto_6
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    const-string v4, "auth.userName"

    .line 214
    .line 215
    .line 216
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    new-instance v4, Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 222
    move-result-object v5

    .line 223
    .line 224
    const-string v6, "auth.password"

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8}, Lokhttp3/Challenge;->charset()Ljava/nio/charset/Charset;

    .line 234
    move-result-object v5

    .line 235
    .line 236
    .line 237
    invoke-static {v2, v4, v5}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 242
    move-result-object v3

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 250
    move-result-object v1

    .line 251
    return-object v1

    .line 252
    :cond_b
    return-object v5
.end method
