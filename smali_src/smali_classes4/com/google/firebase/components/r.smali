.class Lcom/google/firebase/components/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/r$b;,
        Lcom/google/firebase/components/r$c;
    }
.end annotation


# direct methods
.method static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/components/r;->c(Ljava/util/List;)Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/components/r;->b(Ljava/util/Set;)Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 13
    move-result v3

    .line 14
    .line 15
    if-nez v3, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/google/firebase/components/r$b;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/firebase/components/r$b;->d()Ljava/util/Set;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v5

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    check-cast v5, Lcom/google/firebase/components/r$b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v3}, Lcom/google/firebase/components/r$b;->g(Lcom/google/firebase/components/r$b;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/google/firebase/components/r$b;->f()Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    move-result p0

    .line 68
    .line 69
    if-ne v2, p0, :cond_3

    .line 70
    return-void

    .line 71
    .line 72
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Lcom/google/firebase/components/r$b;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/firebase/components/r$b;->f()Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/firebase/components/r$b;->e()Z

    .line 101
    move-result v2

    .line 102
    .line 103
    if-nez v2, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/firebase/components/r$b;->c()Lcom/google/firebase/components/c;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_5
    new-instance v0, Lcom/google/firebase/components/t;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, p0}, Lcom/google/firebase/components/t;-><init>(Ljava/util/List;)V

    .line 117
    throw v0
.end method

.method private static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/r$b;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/r$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/google/firebase/components/r$b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/firebase/components/r$b;->f()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/r$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/google/firebase/components/c;

    .line 27
    .line 28
    new-instance v3, Lcom/google/firebase/components/r$b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v1}, Lcom/google/firebase/components/r$b;-><init>(Lcom/google/firebase/components/c;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/firebase/components/c;->j()Ljava/util/Set;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Lcom/google/firebase/components/g0;

    .line 52
    .line 53
    new-instance v6, Lcom/google/firebase/components/r$c;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/firebase/components/c;->p()Z

    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x1

    .line 59
    xor-int/2addr v7, v8

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v5, v7, v2}, Lcom/google/firebase/components/r$c;-><init>(Lcom/google/firebase/components/g0;ZLcom/google/firebase/components/r$a;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    move-result v7

    .line 67
    .line 68
    if-nez v7, :cond_1

    .line 69
    .line 70
    new-instance v7, Ljava/util/HashSet;

    .line 71
    .line 72
    .line 73
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 81
    .line 82
    check-cast v7, Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 86
    move-result v9

    .line 87
    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-static {v6}, Lcom/google/firebase/components/r$c;->a(Lcom/google/firebase/components/r$c;)Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-eqz v6, :cond_2

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-array v0, v8, [Ljava/lang/Object;

    .line 100
    const/4 v1, 0x0

    .line 101
    .line 102
    aput-object v5, v0, v1

    .line 103
    .line 104
    const-string v1, "Multiple components provide %s."

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 120
    move-result-object p0

    .line 121
    .line 122
    .line 123
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p0

    .line 125
    .line 126
    .line 127
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v1

    .line 129
    .line 130
    if-eqz v1, :cond_a

    .line 131
    .line 132
    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    check-cast v1, Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v3

    .line 145
    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    check-cast v3, Lcom/google/firebase/components/r$b;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/google/firebase/components/r$b;->c()Lcom/google/firebase/components/c;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/google/firebase/components/c;->g()Ljava/util/Set;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v5

    .line 169
    .line 170
    if-eqz v5, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v5

    .line 175
    .line 176
    check-cast v5, Lcom/google/firebase/components/s;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/google/firebase/components/s;->e()Z

    .line 180
    move-result v6

    .line 181
    .line 182
    if-nez v6, :cond_8

    .line 183
    goto :goto_2

    .line 184
    .line 185
    :cond_8
    new-instance v6, Lcom/google/firebase/components/r$c;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 189
    move-result-object v7

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Lcom/google/firebase/components/s;->g()Z

    .line 193
    move-result v5

    .line 194
    .line 195
    .line 196
    invoke-direct {v6, v7, v5, v2}, Lcom/google/firebase/components/r$c;-><init>(Lcom/google/firebase/components/g0;ZLcom/google/firebase/components/r$a;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v5

    .line 201
    .line 202
    check-cast v5, Ljava/util/Set;

    .line 203
    .line 204
    if-nez v5, :cond_9

    .line 205
    goto :goto_2

    .line 206
    .line 207
    .line 208
    :cond_9
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v5

    .line 210
    .line 211
    .line 212
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v6

    .line 214
    .line 215
    if-eqz v6, :cond_7

    .line 216
    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v6

    .line 220
    .line 221
    check-cast v6, Lcom/google/firebase/components/r$b;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/r$b;->a(Lcom/google/firebase/components/r$b;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v3}, Lcom/google/firebase/components/r$b;->b(Lcom/google/firebase/components/r$b;)V

    .line 228
    goto :goto_3

    .line 229
    .line 230
    :cond_a
    new-instance p0, Ljava/util/HashSet;

    .line 231
    .line 232
    .line 233
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v1

    .line 246
    .line 247
    if-eqz v1, :cond_b

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 252
    .line 253
    check-cast v1, Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 257
    goto :goto_4

    .line 258
    :cond_b
    return-object p0
.end method
