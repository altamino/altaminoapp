.class public final Lorg/schabi/newpipe/extractor/services/youtube/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/p;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/p;->h(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/grack/nanojson/JsonObject;)Lx9/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lx9/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lx9/n;-><init>()V

    .line 6
    .line 7
    const-string v1, "contentTitle"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "text"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lx9/n;->d(Ljava/lang/String;)V

    .line 33
    .line 34
    new-instance v1, Loa/e;

    .line 35
    const/4 v4, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v3, v4}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lx9/n;->c(Loa/e;)V

    .line 42
    .line 43
    const-string v1, "actionButton"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v3, "buttonRenderer"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    :try_start_0
    const-string v3, "command"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    new-instance v4, Ljava/net/URL;

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Lx9/n;->a(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 96
    move-result v2

    .line 97
    .line 98
    if-nez v2, :cond_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lx9/n;->b(Ljava/lang/String;)V

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_0
    new-instance p0, Laa/h;

    .line 105
    .line 106
    const-string v0, "Could not get metadata info link text."

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    goto :goto_0

    .line 113
    :catch_1
    move-exception p0

    .line 114
    .line 115
    :goto_0
    new-instance v0, Laa/h;

    .line 116
    .line 117
    const-string v1, "Could not get metadata info URL"

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    throw v0

    .line 122
    .line 123
    :cond_1
    :goto_1
    const-string v1, "secondaryEndpoint"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    const-string v2, "secondarySource"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 135
    move-result v3

    .line 136
    .line 137
    if-eqz v3, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->S(Ljava/lang/String;)Z

    .line 151
    move-result v3

    .line 152
    .line 153
    if-nez v3, :cond_3

    .line 154
    .line 155
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 156
    .line 157
    .line 158
    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v3}, Lx9/n;->a(Ljava/net/URL;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 165
    move-result-object p0

    .line 166
    .line 167
    .line 168
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    .line 171
    if-nez p0, :cond_2

    .line 172
    goto :goto_2

    .line 173
    :cond_2
    move-object v1, p0

    .line 174
    .line 175
    .line 176
    :goto_2
    invoke-virtual {v0, v1}, Lx9/n;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 177
    goto :goto_3

    .line 178
    :catch_2
    move-exception p0

    .line 179
    .line 180
    new-instance v0, Laa/h;

    .line 181
    .line 182
    const-string v1, "Could not get metadata info secondary URL"

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    throw v0

    .line 187
    :cond_3
    :goto_3
    return-object v0

    .line 188
    .line 189
    :cond_4
    new-instance p0, Laa/h;

    .line 190
    .line 191
    const-string v0, "Could not extract clarification renderer content"

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 195
    throw p0
.end method

.method private static d(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/function/Consumer<",
            "Lx9/n;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonObject;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/k;->a(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/n;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/n;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/o;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/o;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    check-cast p0, Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    new-instance v1, Lx9/n;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Lx9/n;-><init>()V

    .line 64
    .line 65
    const-string v2, "title"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    const-string v3, "actionText"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 79
    move-result v4

    .line 80
    .line 81
    const-string v5, "\n"

    .line 82
    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    const-string v4, "action"

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_0
    const-string v4, "contacts"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 115
    move-result v6

    .line 116
    .line 117
    if-eqz v6, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const/4 v7, 0x0

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 131
    move-result v8

    .line 132
    .line 133
    if-ge v7, v8, :cond_1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v7}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 140
    move-result-object v8

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 144
    move-result-object v8

    .line 145
    .line 146
    const-string v9, "contacts.actionText"

    .line 147
    .line 148
    .line 149
    invoke-static {v8, v9}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v8

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    add-int/lit8 v7, v7, 0x1

    .line 156
    goto :goto_1

    .line 157
    .line 158
    .line 159
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :cond_2
    const-string v3, ""

    .line 164
    .line 165
    :goto_2
    const-string v4, "detailsText"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    const-string v5, "details"

    .line 172
    .line 173
    .line 174
    invoke-static {v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    const-string v5, "navigationText"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    const-string v6, "urlText"

    .line 184
    .line 185
    .line 186
    invoke-static {v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Lx9/n;->d(Ljava/lang/String;)V

    .line 191
    .line 192
    new-instance v2, Loa/e;

    .line 193
    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v3

    .line 208
    const/4 v4, 0x3

    .line 209
    .line 210
    .line 211
    invoke-direct {v2, v3, v4}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lx9/n;->c(Loa/e;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v5}, Lx9/n;->b(Ljava/lang/String;)V

    .line 218
    .line 219
    const-string v2, "navigationEndpoint"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    if-eqz v0, :cond_3

    .line 230
    .line 231
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Lx9/n;->a(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    .line 244
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/e;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception p0

    .line 248
    .line 249
    new-instance p1, Laa/h;

    .line 250
    .line 251
    const-string v0, "Could not parse emergency renderer url"

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    throw p1

    .line 256
    .line 257
    :cond_3
    new-instance p0, Laa/h;

    .line 258
    .line 259
    const-string p1, "Could not extract emergency renderer url"

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 263
    throw p0

    .line 264
    :cond_4
    return-void

    .line 265
    .line 266
    :cond_5
    new-instance p0, Laa/h;

    .line 267
    .line 268
    const-string p1, "Could not extract any meta info from emergency renderer"

    .line 269
    .line 270
    .line 271
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 272
    throw p0
.end method

.method private static e(Lcom/grack/nanojson/JsonObject;)Lx9/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lx9/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lx9/n;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "paragraphs"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    const-string v4, "<br>"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    :cond_0
    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    new-instance v2, Loa/e;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    const/4 v3, 0x1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v1, v3}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lx9/n;->c(Loa/e;)V

    .line 65
    .line 66
    const-string v1, "sourceEndpoint"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lx9/n;->a(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    const-string v1, "inlineSource"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Lx9/n;->b(Ljava/lang/String;)V

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_2
    new-instance p0, Laa/h;

    .line 118
    .line 119
    const-string v0, "Could not get metadata info link text."

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    goto :goto_1

    .line 126
    :catch_1
    move-exception p0

    .line 127
    .line 128
    :goto_1
    new-instance v0, Laa/h;

    .line 129
    .line 130
    const-string v1, "Could not get metadata info URL"

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    throw v0

    .line 135
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static f(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonArray;",
            ")",
            "Ljava/util/List<",
            "Lx9/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 22
    .line 23
    const-string v2, "itemSectionRenderer"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "contents"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    const-string v3, "infoPanelContentRenderer"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/p;->e(Lcom/grack/nanojson/JsonObject;)Lx9/n;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    :cond_2
    const-string v3, "clarificationRenderer"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 80
    move-result v4

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/p;->c(Lcom/grack/nanojson/JsonObject;)Lx9/n;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    :cond_3
    const-string v3, "emergencyOneboxRenderer"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 99
    move-result v4

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/m;

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/m;-><init>(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/p;->d(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    return-object v0
.end method

.method private static synthetic g(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string v0, "singleActionEmergencySupportRenderer"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static synthetic h(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v0, "singleActionEmergencySupportRenderer"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
