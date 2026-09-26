.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;,
        Lokhttp3/CacheControl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/CacheControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORCE_CACHE:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private headerValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lokhttp3/CacheControl$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokhttp3/CacheControl$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    .line 9
    .line 10
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 24
    .line 25
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7fffffff

    .line 36
    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 48
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-void
.end method

.method public static final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 1
    .param p0    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_immutable()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public final -deprecated_maxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public final -deprecated_maxStaleSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public final -deprecated_minFreshSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public final -deprecated_mustRevalidate()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public final -deprecated_noCache()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public final -deprecated_noStore()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public final -deprecated_noTransform()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public final -deprecated_onlyIfCached()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public final -deprecated_sMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public final immutable()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public final maxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public final maxStaleSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public final minFreshSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public final mustRevalidate()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public final noCache()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public final noStore()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public final noTransform()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public final onlyIfCached()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public final sMaxAgeSeconds()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_d

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noCache()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "no-cache, "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "no-store, "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 35
    move-result v1

    .line 36
    .line 37
    const-string v2, ", "

    .line 38
    const/4 v3, -0x1

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    const-string v1, "max-age="

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lokhttp3/CacheControl;->sMaxAgeSeconds()I

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eq v1, v3, :cond_3

    .line 62
    .line 63
    const-string v1, "s-maxage="

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lokhttp3/CacheControl;->sMaxAgeSeconds()I

    .line 70
    move-result v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPrivate()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-string v1, "private, "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPublic()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const-string v1, "public, "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {p0}, Lokhttp3/CacheControl;->mustRevalidate()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    const-string v1, "must-revalidate, "

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 113
    move-result v1

    .line 114
    .line 115
    if-eq v1, v3, :cond_7

    .line 116
    .line 117
    const-string v1, "max-stale="

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 124
    move-result v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-virtual {p0}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 134
    move-result v1

    .line 135
    .line 136
    if-eq v1, v3, :cond_8

    .line 137
    .line 138
    const-string v1, "min-fresh="

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 145
    move-result v1

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {p0}, Lokhttp3/CacheControl;->onlyIfCached()Z

    .line 155
    move-result v1

    .line 156
    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    const-string v1, "only-if-cached, "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noTransform()Z

    .line 166
    move-result v1

    .line 167
    .line 168
    if-eqz v1, :cond_a

    .line 169
    .line 170
    const-string v1, "no-transform, "

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_a
    invoke-virtual {p0}, Lokhttp3/CacheControl;->immutable()Z

    .line 177
    move-result v1

    .line 178
    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    const-string v1, "immutable, "

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 188
    move-result v1

    .line 189
    .line 190
    if-nez v1, :cond_c

    .line 191
    .line 192
    const-string v0, ""

    .line 193
    return-object v0

    .line 194
    .line 195
    .line 196
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 197
    move-result v1

    .line 198
    .line 199
    add-int/lit8 v1, v1, -0x2

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 203
    move-result v2

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 218
    :cond_d
    return-object v0
.end method
