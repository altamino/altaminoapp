.class Lcom/narvii/util/googleplay/GooglePlayService$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/googleplay/GooglePlayService;->update(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/googleplay/GooglePlayService;

.field final synthetic val$pn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/googleplay/GooglePlayService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->val$pn:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance v2, Ljava/net/URL;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v4, "https://play.google.com/store/apps/details?id="

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->val$pn:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    const-string v2, "User-Agent"

    .line 41
    .line 42
    const-string v3, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    const-string v2, "Accept"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v3, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    const-string v2, "Accept-Language"

    .line 56
    .line 57
    const-string v3, "en-US"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const/16 v2, 0x1000

    .line 67
    .line 68
    new-array v2, v2, [B

    .line 69
    .line 70
    const-string v3, ">([12]\\.[\\d]{1,2}\\.(?:[\\d]{1,2}\\.)?[\\d]{5})<"

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x0

    .line 76
    move v5, v4

    .line 77
    .line 78
    :cond_0
    add-int/lit16 v6, v5, 0x800

    .line 79
    .line 80
    rsub-int v7, v5, 0x800

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    .line 84
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v7, -0x1

    .line 86
    .line 87
    if-ne v6, v7, :cond_1

    .line 88
    move v8, v4

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move v8, v6

    .line 91
    :goto_0
    add-int/2addr v5, v8

    .line 92
    .line 93
    const/16 v8, 0x800

    .line 94
    .line 95
    if-ge v5, v8, :cond_2

    .line 96
    .line 97
    if-ne v6, v7, :cond_5

    .line 98
    .line 99
    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/String;

    .line 100
    .line 101
    add-int/lit16 v5, v5, 0x800

    .line 102
    .line 103
    .line 104
    invoke-direct {v9, v2, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 112
    move-result v9

    .line 113
    .line 114
    if-eqz v9, :cond_4

    .line 115
    const/4 v9, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v10, "google play publish version "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v9

    .line 137
    .line 138
    .line 139
    invoke-static {v9}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    move-result v9

    .line 144
    .line 145
    if-nez v9, :cond_6

    .line 146
    .line 147
    iget-object v9, p0, Lcom/narvii/util/googleplay/GooglePlayService$1;->this$0:Lcom/narvii/util/googleplay/GooglePlayService;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Lcom/narvii/util/googleplay/GooglePlayService;->getLatestVersion()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    if-eqz v9, :cond_3

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 161
    return-void

    .line 162
    .line 163
    :cond_3
    :try_start_2
    new-instance v9, Lcom/narvii/util/googleplay/GooglePlayService$1$1;

    .line 164
    .line 165
    .line 166
    invoke-direct {v9, p0, v5}, Lcom/narvii/util/googleplay/GooglePlayService$1$1;-><init>(Lcom/narvii/util/googleplay/GooglePlayService$1;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v9}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    goto :goto_1

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    goto :goto_4

    .line 173
    .line 174
    .line 175
    :catch_0
    :cond_4
    :try_start_3
    invoke-static {v2, v8, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move v5, v4

    .line 177
    .line 178
    :cond_5
    if-ne v6, v7, :cond_0

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 185
    goto :goto_3

    .line 186
    :catch_1
    move-exception v1

    .line 187
    .line 188
    :try_start_4
    const-string v2, "fail to fetch google play page"

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    goto :goto_2

    .line 193
    :goto_3
    return-void

    .line 194
    .line 195
    .line 196
    :goto_4
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 197
    throw v1
.end method
