.class public final Lcom/narvii/util/WebMediaExtractor$wvClient$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/WebMediaExtractor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/WebMediaExtractor;


# direct methods
.method constructor <init>(Lcom/narvii/util/WebMediaExtractor;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/util/WebMediaExtractor;->Companion:Lcom/narvii/util/WebMediaExtractor$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/util/WebMediaExtractor$Companion;->getHandler()Landroid/os/Handler;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p4, p1, v2, v0, v1}, Lkotlin/text/k;->x(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/WebMediaExtractor;->onFailed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebResourceError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 5
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/WebMediaExtractor;->onFailed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/util/WebMediaExtractor;->abort()V

    :cond_0
    return-void
.end method

.method public final request(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)V
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "uri"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "toString(...)"

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    const-string v5, "get"

    .line 21
    const/4 v6, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v5, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    const-string v5, "Accept"

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const-string v5, "image/"

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5, v3, v2, v1}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-ne v5, v6, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/narvii/util/WebMediaExtractor;->access$imageFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z

    .line 66
    return-void

    .line 67
    .line 68
    :cond_0
    if-eqz v4, :cond_1

    .line 69
    .line 70
    .line 71
    const-string/jumbo v5, "video/"

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v5, v3, v2, v1}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    .line 77
    if-ne v4, v6, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lcom/narvii/util/WebMediaExtractor;->access$videoFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z

    .line 94
    return-void

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    .line 105
    const-string v5, "US"

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    const-string/jumbo v4, "toLowerCase(...)"

    .line 116
    .line 117
    .line 118
    invoke-static {p2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    const-string v4, ".jpg"

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 124
    move-result v4

    .line 125
    .line 126
    if-nez v4, :cond_4

    .line 127
    .line 128
    const-string v4, ".jpeg"

    .line 129
    .line 130
    .line 131
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 132
    move-result v4

    .line 133
    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    const-string v4, ".png"

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 140
    move-result v4

    .line 141
    .line 142
    if-nez v4, :cond_4

    .line 143
    .line 144
    const-string v4, ".webp"

    .line 145
    .line 146
    .line 147
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    const-string v4, ".gif"

    .line 153
    .line 154
    .line 155
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 156
    move-result v4

    .line 157
    .line 158
    if-eqz v4, :cond_2

    .line 159
    goto :goto_0

    .line 160
    .line 161
    :cond_2
    const-string v4, ".mp4"

    .line 162
    .line 163
    .line 164
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 165
    move-result v4

    .line 166
    .line 167
    if-nez v4, :cond_3

    .line 168
    .line 169
    const-string v4, ".mov"

    .line 170
    .line 171
    .line 172
    invoke-static {p2, v4, v3, v2, v1}, Lkotlin/text/k;->v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 173
    move-result p2

    .line 174
    .line 175
    if-eqz p2, :cond_5

    .line 176
    .line 177
    :cond_3
    iget-object p2, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p2, p1}, Lcom/narvii/util/WebMediaExtractor;->access$videoFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z

    .line 188
    return-void

    .line 189
    .line 190
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->this$0:Lcom/narvii/util/WebMediaExtractor;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p2, p1}, Lcom/narvii/util/WebMediaExtractor;->access$imageFound(Lcom/narvii/util/WebMediaExtractor;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    :cond_5
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUrl(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->request(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "parse(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/WebMediaExtractor$wvClient$1;->request(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)V

    return-object p2
.end method
