.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

.field private defaultRequestListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultRequestOptionsFactory:Lcom/bumptech/glide/b$a;

.field private final defaultTransitionOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/k<",
            "**>;>;"
        }
    .end annotation
.end field

.field private diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field private diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/a$a;

.field private engine:Lcom/bumptech/glide/load/engine/k;

.field private isActiveResourceRetentionAllowed:Z

.field private isImageDecoderEnabledForBitmaps:Z

.field private isLoggingRequestOriginsEnabled:Z

.field private logLevel:I

.field private memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

.field private memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

.field private requestManagerFactory:Lcom/bumptech/glide/manager/l$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/c;->defaultTransitionOptions:Ljava/util/Map;

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    iput v0, p0, Lcom/bumptech/glide/c;->logLevel:I

    .line 14
    .line 15
    new-instance v0, Lcom/bumptech/glide/c$a;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bumptech/glide/c;->defaultRequestOptionsFactory:Lcom/bumptech/glide/b$a;

    .line 21
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    iget-object v1, v0, Lcom/bumptech/glide/c;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->h()Lcom/bumptech/glide/load/engine/executor/a;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/c;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->f()Lcom/bumptech/glide/load/engine/executor/a;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, v0, Lcom/bumptech/glide/c;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 25
    .line 26
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/c;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->c()Lcom/bumptech/glide/load/engine/executor/a;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iput-object v1, v0, Lcom/bumptech/glide/c;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 35
    .line 36
    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/c;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/i$a;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/i$a;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/i$a;->a()Lcom/bumptech/glide/load/engine/cache/i;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iput-object v1, v0, Lcom/bumptech/glide/c;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

    .line 50
    .line 51
    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/c;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    new-instance v1, Lcom/bumptech/glide/manager/f;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Lcom/bumptech/glide/manager/f;-><init>()V

    .line 59
    .line 60
    iput-object v1, v0, Lcom/bumptech/glide/c;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

    .line 61
    .line 62
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/c;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 63
    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    iget-object v1, v0, Lcom/bumptech/glide/c;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/cache/i;->b()I

    .line 70
    move-result v1

    .line 71
    .line 72
    if-lez v1, :cond_5

    .line 73
    .line 74
    new-instance v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;

    .line 75
    int-to-long v4, v1

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;-><init>(J)V

    .line 79
    .line 80
    iput-object v3, v0, Lcom/bumptech/glide/c;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_5
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;-><init>()V

    .line 87
    .line 88
    iput-object v1, v0, Lcom/bumptech/glide/c;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 89
    .line 90
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 91
    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;

    .line 95
    .line 96
    iget-object v3, v0, Lcom/bumptech/glide/c;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/i;->a()I

    .line 100
    move-result v3

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>(I)V

    .line 104
    .line 105
    iput-object v1, v0, Lcom/bumptech/glide/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 106
    .line 107
    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/c;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/g;

    .line 112
    .line 113
    iget-object v3, v0, Lcom/bumptech/glide/c;->memorySizeCalculator:Lcom/bumptech/glide/load/engine/cache/i;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/cache/i;->d()I

    .line 117
    move-result v3

    .line 118
    int-to-long v3, v3

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v3, v4}, Lcom/bumptech/glide/load/engine/cache/g;-><init>(J)V

    .line 122
    .line 123
    iput-object v1, v0, Lcom/bumptech/glide/c;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 124
    .line 125
    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/c;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/a$a;

    .line 126
    .line 127
    if-nez v1, :cond_9

    .line 128
    .line 129
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/f;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/f;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    iput-object v1, v0, Lcom/bumptech/glide/c;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/a$a;

    .line 135
    .line 136
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/c;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 137
    .line 138
    if-nez v1, :cond_a

    .line 139
    .line 140
    new-instance v1, Lcom/bumptech/glide/load/engine/k;

    .line 141
    .line 142
    iget-object v4, v0, Lcom/bumptech/glide/c;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 143
    .line 144
    iget-object v5, v0, Lcom/bumptech/glide/c;->diskCacheFactory:Lcom/bumptech/glide/load/engine/cache/a$a;

    .line 145
    .line 146
    iget-object v6, v0, Lcom/bumptech/glide/c;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 147
    .line 148
    iget-object v7, v0, Lcom/bumptech/glide/c;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/a;->i()Lcom/bumptech/glide/load/engine/executor/a;

    .line 152
    move-result-object v8

    .line 153
    .line 154
    iget-object v9, v0, Lcom/bumptech/glide/c;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 155
    .line 156
    iget-boolean v10, v0, Lcom/bumptech/glide/c;->isActiveResourceRetentionAllowed:Z

    .line 157
    move-object v3, v1

    .line 158
    .line 159
    .line 160
    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/engine/cache/h;Lcom/bumptech/glide/load/engine/cache/a$a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Z)V

    .line 161
    .line 162
    iput-object v1, v0, Lcom/bumptech/glide/c;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 163
    .line 164
    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/c;->defaultRequestListeners:Ljava/util/List;

    .line 165
    .line 166
    if-nez v1, :cond_b

    .line 167
    .line 168
    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    iput-object v1, v0, Lcom/bumptech/glide/c;->defaultRequestListeners:Ljava/util/List;

    .line 173
    goto :goto_1

    .line 174
    .line 175
    .line 176
    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    iput-object v1, v0, Lcom/bumptech/glide/c;->defaultRequestListeners:Ljava/util/List;

    .line 180
    .line 181
    :goto_1
    new-instance v7, Lcom/bumptech/glide/manager/l;

    .line 182
    .line 183
    iget-object v1, v0, Lcom/bumptech/glide/c;->requestManagerFactory:Lcom/bumptech/glide/manager/l$b;

    .line 184
    .line 185
    .line 186
    invoke-direct {v7, v1}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/l$b;)V

    .line 187
    .line 188
    new-instance v15, Lcom/bumptech/glide/b;

    .line 189
    .line 190
    iget-object v3, v0, Lcom/bumptech/glide/c;->engine:Lcom/bumptech/glide/load/engine/k;

    .line 191
    .line 192
    iget-object v4, v0, Lcom/bumptech/glide/c;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 193
    .line 194
    iget-object v5, v0, Lcom/bumptech/glide/c;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 195
    .line 196
    iget-object v6, v0, Lcom/bumptech/glide/c;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 197
    .line 198
    iget-object v8, v0, Lcom/bumptech/glide/c;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

    .line 199
    .line 200
    iget v9, v0, Lcom/bumptech/glide/c;->logLevel:I

    .line 201
    .line 202
    iget-object v10, v0, Lcom/bumptech/glide/c;->defaultRequestOptionsFactory:Lcom/bumptech/glide/b$a;

    .line 203
    .line 204
    iget-object v11, v0, Lcom/bumptech/glide/c;->defaultTransitionOptions:Ljava/util/Map;

    .line 205
    .line 206
    iget-object v12, v0, Lcom/bumptech/glide/c;->defaultRequestListeners:Ljava/util/List;

    .line 207
    .line 208
    iget-boolean v13, v0, Lcom/bumptech/glide/c;->isLoggingRequestOriginsEnabled:Z

    .line 209
    .line 210
    iget-boolean v14, v0, Lcom/bumptech/glide/c;->isImageDecoderEnabledForBitmaps:Z

    .line 211
    move-object v1, v15

    .line 212
    .line 213
    move-object/from16 v2, p1

    .line 214
    .line 215
    .line 216
    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/cache/h;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 217
    return-object v15
.end method

.method b(Lcom/bumptech/glide/manager/l$b;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/l$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/c;->requestManagerFactory:Lcom/bumptech/glide/manager/l$b;

    return-void
.end method
