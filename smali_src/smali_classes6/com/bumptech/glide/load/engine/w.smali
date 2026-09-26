.class Lcom/bumptech/glide/load/engine/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private currentKey:Lcom/bumptech/glide/load/engine/x;

.field private final helper:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/bumptech/glide/load/model/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private modelLoaderIndex:I

.field private modelLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private resourceClassIndex:I

.field private sourceIdIndex:I

.field private sourceKey:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/bumptech/glide/load/engine/w;->resourceClassIndex:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/w;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 11
    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaderIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaders:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->c()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    return v2

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->m()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->q()Ljava/lang/Class;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-class v1, Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    return v2

    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "Failed to find any load path from "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/g;->i()Ljava/lang/Class;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, " to "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/g;->q()Ljava/lang/Class;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0

    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaders:Ljava/util/List;

    .line 87
    const/4 v4, 0x1

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/w;->b()Z

    .line 93
    move-result v3

    .line 94
    .line 95
    if-nez v3, :cond_3

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const/4 v0, 0x0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 100
    .line 101
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/w;->b()Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaders:Ljava/util/List;

    .line 110
    .line 111
    iget v1, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaderIndex:I

    .line 112
    .line 113
    add-int/lit8 v3, v1, 0x1

    .line 114
    .line 115
    iput v3, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaderIndex:I

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Lcom/bumptech/glide/load/model/n;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->cacheFile:Ljava/io/File;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->s()I

    .line 129
    move-result v3

    .line 130
    .line 131
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->f()I

    .line 135
    move-result v5

    .line 136
    .line 137
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->k()Lcom/bumptech/glide/load/i;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 148
    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 158
    .line 159
    .line 160
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->t(Ljava/lang/Class;)Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->l()Lcom/bumptech/glide/f;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/data/d;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V

    .line 181
    move v2, v4

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    return v2

    .line 184
    .line 185
    :cond_6
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/engine/w;->resourceClassIndex:I

    .line 186
    add-int/2addr v3, v4

    .line 187
    .line 188
    iput v3, p0, Lcom/bumptech/glide/load/engine/w;->resourceClassIndex:I

    .line 189
    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    move-result v5

    .line 193
    .line 194
    if-lt v3, v5, :cond_8

    .line 195
    .line 196
    iget v3, p0, Lcom/bumptech/glide/load/engine/w;->sourceIdIndex:I

    .line 197
    add-int/2addr v3, v4

    .line 198
    .line 199
    iput v3, p0, Lcom/bumptech/glide/load/engine/w;->sourceIdIndex:I

    .line 200
    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 203
    move-result v4

    .line 204
    .line 205
    if-lt v3, v4, :cond_7

    .line 206
    return v2

    .line 207
    .line 208
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/load/engine/w;->resourceClassIndex:I

    .line 209
    .line 210
    :cond_8
    iget v3, p0, Lcom/bumptech/glide/load/engine/w;->sourceIdIndex:I

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    check-cast v3, Lcom/bumptech/glide/load/g;

    .line 217
    .line 218
    iget v4, p0, Lcom/bumptech/glide/load/engine/w;->resourceClassIndex:I

    .line 219
    .line 220
    .line 221
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v4

    .line 223
    move-object v11, v4

    .line 224
    .line 225
    check-cast v11, Ljava/lang/Class;

    .line 226
    .line 227
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/g;->r(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    .line 231
    move-result-object v10

    .line 232
    .line 233
    new-instance v13, Lcom/bumptech/glide/load/engine/x;

    .line 234
    .line 235
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 239
    move-result-object v5

    .line 240
    .line 241
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->o()Lcom/bumptech/glide/load/g;

    .line 245
    move-result-object v7

    .line 246
    .line 247
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->s()I

    .line 251
    move-result v8

    .line 252
    .line 253
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->f()I

    .line 257
    move-result v9

    .line 258
    .line 259
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->k()Lcom/bumptech/glide/load/i;

    .line 263
    move-result-object v12

    .line 264
    move-object v4, v13

    .line 265
    move-object v6, v3

    .line 266
    .line 267
    .line 268
    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/x;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    .line 269
    .line 270
    iput-object v13, p0, Lcom/bumptech/glide/load/engine/w;->currentKey:Lcom/bumptech/glide/load/engine/x;

    .line 271
    .line 272
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->d()Lcom/bumptech/glide/load/engine/cache/a;

    .line 276
    move-result-object v4

    .line 277
    .line 278
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/w;->currentKey:Lcom/bumptech/glide/load/engine/x;

    .line 279
    .line 280
    .line 281
    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/cache/a;->b(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    .line 282
    move-result-object v4

    .line 283
    .line 284
    iput-object v4, p0, Lcom/bumptech/glide/load/engine/w;->cacheFile:Ljava/io/File;

    .line 285
    .line 286
    if-eqz v4, :cond_2

    .line 287
    .line 288
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/w;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 289
    .line 290
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/w;->helper:Lcom/bumptech/glide/load/engine/g;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->j(Ljava/io/File;)Ljava/util/List;

    .line 294
    move-result-object v3

    .line 295
    .line 296
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaders:Ljava/util/List;

    .line 297
    .line 298
    iput v2, p0, Lcom/bumptech/glide/load/engine/w;->modelLoaderIndex:I

    .line 299
    .line 300
    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    .line 10
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 9
    .line 10
    sget-object v4, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/w;->currentKey:Lcom/bumptech/glide/load/engine/x;

    .line 13
    move-object v2, p1

    .line 14
    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    .line 17
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/w;->cb:Lcom/bumptech/glide/load/engine/f$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/w;->currentKey:Lcom/bumptech/glide/load/engine/x;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/w;->loadData:Lcom/bumptech/glide/load/model/n$a;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/bumptech/glide/load/model/n$a;->fetcher:Lcom/bumptech/glide/load/data/d;

    .line 9
    .line 10
    sget-object v3, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/engine/f$a;->b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V

    .line 14
    return-void
.end method
