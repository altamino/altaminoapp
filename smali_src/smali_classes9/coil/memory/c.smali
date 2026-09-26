.class public final Lcoil/memory/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryCacheService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCacheService.kt\ncoil/memory/MemoryCacheService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Collections.kt\ncoil/util/-Collections\n+ 4 Logs.kt\ncoil/util/-Logs\n+ 5 Dimension.kt\ncoil/size/-Dimensions\n+ 6 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 7 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,236:1\n1#2:237\n22#3,4:238\n21#4,4:242\n21#4,4:246\n21#4,4:252\n21#4,4:256\n57#5:250\n57#5:251\n45#6:260\n28#7:261\n*S KotlinDebug\n*F\n+ 1 MemoryCacheService.kt\ncoil/memory/MemoryCacheService\n*L\n62#1:238,4\n93#1:242,4\n116#1:246,4\n166#1:252,4\n176#1:256,4\n137#1:250\n138#1:251\n213#1:260\n213#1:261\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_DISK_CACHE_KEY:Ljava/lang/String; = "coil#disk_cache_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_IS_SAMPLED:Ljava/lang/String; = "coil#is_sampled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TRANSFORMATION_INDEX:Ljava/lang/String; = "coil#transformation_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_TRANSFORMATION_SIZE:Ljava/lang/String; = "coil#transformation_size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MemoryCacheService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final imageLoader:Lcoil/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcoil/util/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestService:Lcoil/request/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/c$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/memory/c;->Companion:Lcoil/memory/c$a;

    return-void
.end method

.method public constructor <init>(Lcoil/e;Lcoil/request/o;Lcoil/util/q;)V
    .locals 0
    .param p1    # Lcoil/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/util/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/memory/c;->imageLoader:Lcoil/e;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/memory/c;->requestService:Lcoil/request/o;

    .line 8
    return-void
.end method

.method private final b(Lcoil/memory/MemoryCache$b;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$b;->b()Ljava/util/Map;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "coil#disk_cache_key"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of v0, p1, Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method private final d(Lcoil/memory/MemoryCache$b;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$b;->b()Ljava/util/Map;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "coil#is_sampled"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_1
    return p1
.end method

.method private final e(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Lcoil/size/i;Lcoil/size/h;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcoil/memory/c;->d(Lcoil/memory/MemoryCache$b;)Z

    .line 7
    move-result v2

    .line 8
    .line 9
    .line 10
    invoke-static/range {p4 .. p4}, Lcoil/size/b;->a(Lcoil/size/i;)Z

    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    return v4

    .line 19
    :cond_0
    return v5

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcoil/memory/MemoryCache$Key;->e()Ljava/util/Map;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-string v6, "coil#transformation_size"

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p4 .. p4}, Lcoil/size/i;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    return v1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p4 .. p4}, Lcoil/size/i;->b()Lcoil/size/c;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    instance-of v7, v6, Lcoil/size/c$a;

    .line 65
    .line 66
    .line 67
    const v8, 0x7fffffff

    .line 68
    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    check-cast v6, Lcoil/size/c$a;

    .line 72
    .line 73
    iget v6, v6, Lcoil/size/c$a;->px:I

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move v6, v8

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcoil/size/i;->a()Lcoil/size/c;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    instance-of v9, v7, Lcoil/size/c$a;

    .line 82
    .line 83
    if-eqz v9, :cond_4

    .line 84
    .line 85
    check-cast v7, Lcoil/size/c$a;

    .line 86
    .line 87
    iget v8, v7, Lcoil/size/c$a;->px:I

    .line 88
    .line 89
    :cond_4
    move-object/from16 v7, p5

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v1, v6, v8, v7}, Lcoil/decode/h;->c(IIIILcoil/size/h;)D

    .line 93
    move-result-wide v9

    .line 94
    .line 95
    .line 96
    invoke-static/range {p1 .. p1}, Lcoil/util/h;->a(Lcoil/request/h;)Z

    .line 97
    move-result v7

    .line 98
    .line 99
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 100
    .line 101
    if-eqz v7, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-static {v9, v10, v11, v12}, Lj8/m;->h(DD)D

    .line 105
    move-result-wide v13

    .line 106
    int-to-double v4, v6

    .line 107
    int-to-double v11, v3

    .line 108
    mul-double/2addr v11, v13

    .line 109
    sub-double/2addr v4, v11

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 113
    move-result-wide v3

    .line 114
    .line 115
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 116
    .line 117
    cmpg-double v3, v3, v5

    .line 118
    .line 119
    if-lez v3, :cond_5

    .line 120
    int-to-double v3, v8

    .line 121
    int-to-double v11, v1

    .line 122
    mul-double/2addr v13, v11

    .line 123
    sub-double/2addr v3, v13

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 127
    move-result-wide v3

    .line 128
    .line 129
    cmpg-double v1, v3, v5

    .line 130
    .line 131
    if-gtz v1, :cond_6

    .line 132
    :cond_5
    const/4 v4, 0x1

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 136
    goto :goto_2

    .line 137
    :goto_1
    return v4

    .line 138
    :cond_7
    move v4, v5

    .line 139
    .line 140
    .line 141
    invoke-static {v6}, Lcoil/util/i;->u(I)Z

    .line 142
    move-result v5

    .line 143
    .line 144
    if-nez v5, :cond_8

    .line 145
    sub-int/2addr v6, v3

    .line 146
    .line 147
    .line 148
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 149
    move-result v3

    .line 150
    .line 151
    if-gt v3, v4, :cond_6

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-static {v8}, Lcoil/util/i;->u(I)Z

    .line 155
    move-result v3

    .line 156
    .line 157
    if-nez v3, :cond_9

    .line 158
    sub-int/2addr v8, v1

    .line 159
    .line 160
    .line 161
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 162
    move-result v1

    .line 163
    .line 164
    if-gt v1, v4, :cond_6

    .line 165
    :cond_9
    move v1, v4

    .line 166
    goto :goto_4

    .line 167
    .line 168
    :goto_2
    cmpg-double v1, v9, v3

    .line 169
    .line 170
    if-nez v1, :cond_b

    .line 171
    :cond_a
    const/4 v1, 0x0

    .line 172
    goto :goto_3

    .line 173
    .line 174
    :cond_b
    if-nez v7, :cond_a

    .line 175
    const/4 v1, 0x0

    .line 176
    return v1

    .line 177
    .line 178
    :goto_3
    cmpl-double v3, v9, v3

    .line 179
    .line 180
    if-lez v3, :cond_c

    .line 181
    .line 182
    if-eqz v2, :cond_c

    .line 183
    return v1

    .line 184
    :cond_c
    const/4 v1, 0x1

    .line 185
    :goto_4
    return v1
.end method


# virtual methods
.method public final a(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/size/i;Lcoil/size/h;)Lcoil/memory/MemoryCache$b;
    .locals 8
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/request/h;->C()Lcoil/request/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcoil/request/a;->b()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object v1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcoil/memory/c;->imageLoader:Lcoil/e;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcoil/e;->d()Lcoil/memory/MemoryCache;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p2}, Lcoil/memory/MemoryCache;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v1

    .line 27
    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-object v5, v0

    .line 33
    move-object v6, p3

    .line 34
    move-object v7, p4

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v2 .. v7}, Lcoil/memory/c;->c(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Lcoil/size/i;Lcoil/size/h;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    move-object v1, v0

    .line 42
    :cond_2
    return-object v1
.end method

.method public final c(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Lcoil/size/i;Lcoil/size/h;)Z
    .locals 2
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/MemoryCache$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/memory/c;->requestService:Lcoil/request/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcoil/util/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcoil/request/o;->c(Lcoil/request/h;Landroid/graphics/Bitmap$Config;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcoil/memory/c;->e(Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;Lcoil/size/i;Lcoil/size/h;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final f(Lcoil/request/h;Ljava/lang/Object;Lcoil/request/m;Lcoil/c;)Lcoil/memory/MemoryCache$Key;
    .locals 5
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/request/h;->B()Lcoil/memory/MemoryCache$Key;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p4, p1, p2}, Lcoil/c;->i(Lcoil/request/h;Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcoil/memory/c;->imageLoader:Lcoil/e;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcoil/e;->getComponents()Lcoil/b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Lcoil/b;->f(Ljava/lang/Object;Lcoil/request/m;)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p4, p1, p2}, Lcoil/c;->e(Lcoil/request/h;Ljava/lang/String;)V

    .line 24
    const/4 p4, 0x0

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    return-object p4

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Lcoil/request/h;->O()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcoil/request/h;->E()Lcoil/request/n;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcoil/request/n;->c()Ljava/util/Map;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 54
    const/4 p3, 0x2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2, p4, p3, p4}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/k;)V

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 62
    move-result-object p4

    .line 63
    .line 64
    check-cast v0, Ljava/util/Collection;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    xor-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcoil/request/h;->O()Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    .line 83
    :goto_0
    if-ge v1, v0, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lg0/a;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v4, "coil#transformation_"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Lg0/a;->a()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {p3}, Lcoil/request/m;->n()Lcoil/size/i;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcoil/size/i;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    const-string p3, "coil#transformation_size"

    .line 127
    .line 128
    .line 129
    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    :cond_4
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p2, p4}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    return-object p1
.end method

.method public final g(Lcoil/intercept/b$a;Lcoil/request/h;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)Lcoil/request/p;
    .locals 9
    .param p1    # Lcoil/intercept/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/memory/MemoryCache$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v8, Lcoil/request/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    sget-object v3, Lcoil/decode/f;->MEMORY_CACHE:Lcoil/decode/f;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p4}, Lcoil/memory/c;->b(Lcoil/memory/MemoryCache$b;)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p4}, Lcoil/memory/c;->d(Lcoil/memory/MemoryCache$b;)Z

    .line 29
    move-result v6

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcoil/util/i;->v(Lcoil/intercept/b$a;)Z

    .line 33
    move-result v7

    .line 34
    move-object v0, v8

    .line 35
    move-object v1, v2

    .line 36
    move-object v2, p2

    .line 37
    move-object v4, p3

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v0 .. v7}, Lcoil/request/p;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/h;Lcoil/decode/f;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 41
    return-object v8
.end method

.method public final h(Lcoil/memory/MemoryCache$Key;Lcoil/request/h;Lcoil/intercept/a$b;)Z
    .locals 4
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/intercept/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcoil/request/h;->C()Lcoil/request/a;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcoil/request/a;->c()Z

    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcoil/memory/c;->imageLoader:Lcoil/e;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcoil/e;->d()Lcoil/memory/MemoryCache;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-eqz p2, :cond_5

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p3}, Lcoil/intercept/a$b;->e()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    .line 37
    :goto_0
    if-eqz v1, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lcoil/intercept/a$b;->f()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    const-string v3, "coil#is_sampled"

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Lcoil/intercept/a$b;->d()Ljava/lang/String;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    const-string v2, "coil#disk_cache_key"

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    :cond_4
    new-instance p3, Lcoil/memory/MemoryCache$b;

    .line 76
    .line 77
    .line 78
    invoke-direct {p3, v1, v0}, Lcoil/memory/MemoryCache$b;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p1, p3}, Lcoil/memory/MemoryCache;->c(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)V

    .line 82
    const/4 p1, 0x1

    .line 83
    return p1

    .line 84
    :cond_5
    :goto_1
    return v0
.end method
