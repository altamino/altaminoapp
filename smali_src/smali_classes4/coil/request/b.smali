.class public final Lcoil/request/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowHardware:Z

.field private final allowRgb565:Z

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final decoderDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final diskCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final error:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fallback:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fetcherDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptorDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memoryCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeholder:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final precision:Lcoil/size/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transformationDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transitionFactory:Lcoil/transition/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcoil/request/b;-><init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcoil/transition/c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcoil/size/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/b;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    iput-object p2, p0, Lcoil/request/b;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    iput-object p3, p0, Lcoil/request/b;->decoderDispatcher:Lkotlinx/coroutines/k0;

    iput-object p4, p0, Lcoil/request/b;->transformationDispatcher:Lkotlinx/coroutines/k0;

    iput-object p5, p0, Lcoil/request/b;->transitionFactory:Lcoil/transition/c$a;

    iput-object p6, p0, Lcoil/request/b;->precision:Lcoil/size/e;

    iput-object p7, p0, Lcoil/request/b;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean p8, p0, Lcoil/request/b;->allowHardware:Z

    iput-boolean p9, p0, Lcoil/request/b;->allowRgb565:Z

    iput-object p10, p0, Lcoil/request/b;->placeholder:Landroid/graphics/drawable/Drawable;

    iput-object p11, p0, Lcoil/request/b;->error:Landroid/graphics/drawable/Drawable;

    iput-object p12, p0, Lcoil/request/b;->fallback:Landroid/graphics/drawable/Drawable;

    iput-object p13, p0, Lcoil/request/b;->memoryCachePolicy:Lcoil/request/a;

    iput-object p14, p0, Lcoil/request/b;->diskCachePolicy:Lcoil/request/a;

    iput-object p15, p0, Lcoil/request/b;->networkCachePolicy:Lcoil/request/a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;ILkotlin/jvm/internal/k;)V
    .locals 15

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 5
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 6
    invoke-static {}, Lkotlinx/coroutines/e1;->b()Lkotlinx/coroutines/k0;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 7
    sget-object v5, Lcoil/transition/c$a;->NONE:Lcoil/transition/c$a;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 8
    sget-object v6, Lcoil/size/e;->AUTOMATIC:Lcoil/size/e;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 9
    invoke-static {}, Lcoil/util/i;->f()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    move/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_8

    :cond_8
    move/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    const/4 v11, 0x0

    if-eqz v10, :cond_9

    move-object v10, v11

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v11

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v11, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 10
    sget-object v13, Lcoil/request/a;->ENABLED:Lcoil/request/a;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    .line 11
    sget-object v14, Lcoil/request/a;->ENABLED:Lcoil/request/a;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    .line 12
    sget-object v0, Lcoil/request/a;->ENABLED:Lcoil/request/a;

    goto :goto_e

    :cond_e
    move-object/from16 v0, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v11

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v0

    .line 13
    invoke-direct/range {p1 .. p16}, Lcoil/request/b;-><init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/b;->allowHardware:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/b;->allowRgb565:Z

    return v0
.end method

.method public final c()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->decoderDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final e()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->diskCachePolicy:Lcoil/request/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcoil/request/b;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/request/b;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 11
    .line 12
    check-cast p1, Lcoil/request/b;

    .line 13
    .line 14
    iget-object v2, p1, Lcoil/request/b;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcoil/request/b;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 23
    .line 24
    iget-object v2, p1, Lcoil/request/b;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcoil/request/b;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 33
    .line 34
    iget-object v2, p1, Lcoil/request/b;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcoil/request/b;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 43
    .line 44
    iget-object v2, p1, Lcoil/request/b;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcoil/request/b;->transitionFactory:Lcoil/transition/c$a;

    .line 53
    .line 54
    iget-object v2, p1, Lcoil/request/b;->transitionFactory:Lcoil/transition/c$a;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Lcoil/request/b;->precision:Lcoil/size/e;

    .line 63
    .line 64
    iget-object v2, p1, Lcoil/request/b;->precision:Lcoil/size/e;

    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcoil/request/b;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    .line 70
    iget-object v2, p1, Lcoil/request/b;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    if-ne v1, v2, :cond_1

    .line 73
    .line 74
    iget-boolean v1, p0, Lcoil/request/b;->allowHardware:Z

    .line 75
    .line 76
    iget-boolean v2, p1, Lcoil/request/b;->allowHardware:Z

    .line 77
    .line 78
    if-ne v1, v2, :cond_1

    .line 79
    .line 80
    iget-boolean v1, p0, Lcoil/request/b;->allowRgb565:Z

    .line 81
    .line 82
    iget-boolean v2, p1, Lcoil/request/b;->allowRgb565:Z

    .line 83
    .line 84
    if-ne v1, v2, :cond_1

    .line 85
    .line 86
    iget-object v1, p0, Lcoil/request/b;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    iget-object v2, p1, Lcoil/request/b;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    iget-object v1, p0, Lcoil/request/b;->error:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iget-object v2, p1, Lcoil/request/b;->error:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    iget-object v1, p0, Lcoil/request/b;->fallback:Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    iget-object v2, p1, Lcoil/request/b;->fallback:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    iget-object v1, p0, Lcoil/request/b;->memoryCachePolicy:Lcoil/request/a;

    .line 117
    .line 118
    iget-object v2, p1, Lcoil/request/b;->memoryCachePolicy:Lcoil/request/a;

    .line 119
    .line 120
    if-ne v1, v2, :cond_1

    .line 121
    .line 122
    iget-object v1, p0, Lcoil/request/b;->diskCachePolicy:Lcoil/request/a;

    .line 123
    .line 124
    iget-object v2, p1, Lcoil/request/b;->diskCachePolicy:Lcoil/request/a;

    .line 125
    .line 126
    if-ne v1, v2, :cond_1

    .line 127
    .line 128
    iget-object v1, p0, Lcoil/request/b;->networkCachePolicy:Lcoil/request/a;

    .line 129
    .line 130
    iget-object p1, p1, Lcoil/request/b;->networkCachePolicy:Lcoil/request/a;

    .line 131
    .line 132
    if-ne v1, p1, :cond_1

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->error:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->fallback:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final h()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/b;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/request/b;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcoil/request/b;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Lcoil/request/b;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcoil/request/b;->transitionFactory:Lcoil/transition/c$a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Lcoil/request/b;->precision:Lcoil/size/e;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Lcoil/request/b;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-boolean v1, p0, Lcoil/request/b;->allowHardware:Z

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-boolean v1, p0, Lcoil/request/b;->allowRgb565:Z

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-object v1, p0, Lcoil/request/b;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v2, 0x0

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 89
    move-result v1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v1, v2

    .line 92
    :goto_0
    add-int/2addr v0, v1

    .line 93
    .line 94
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    .line 96
    iget-object v1, p0, Lcoil/request/b;->error:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 102
    move-result v1

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    move v1, v2

    .line 105
    :goto_1
    add-int/2addr v0, v1

    .line 106
    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-object v1, p0, Lcoil/request/b;->fallback:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 115
    move-result v2

    .line 116
    :cond_2
    add-int/2addr v0, v2

    .line 117
    .line 118
    mul-int/lit8 v0, v0, 0x1f

    .line 119
    .line 120
    iget-object v1, p0, Lcoil/request/b;->memoryCachePolicy:Lcoil/request/a;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    .line 127
    mul-int/lit8 v0, v0, 0x1f

    .line 128
    .line 129
    iget-object v1, p0, Lcoil/request/b;->diskCachePolicy:Lcoil/request/a;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    .line 136
    mul-int/lit8 v0, v0, 0x1f

    .line 137
    .line 138
    iget-object v1, p0, Lcoil/request/b;->networkCachePolicy:Lcoil/request/a;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 142
    move-result v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public final i()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final j()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->memoryCachePolicy:Lcoil/request/a;

    return-object v0
.end method

.method public final k()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->networkCachePolicy:Lcoil/request/a;

    return-object v0
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final m()Lcoil/size/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->precision:Lcoil/size/e;

    return-object v0
.end method

.method public final n()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->transformationDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final o()Lcoil/transition/c$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/b;->transitionFactory:Lcoil/transition/c$a;

    return-object v0
.end method
