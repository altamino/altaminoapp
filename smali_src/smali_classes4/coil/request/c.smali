.class public final Lcoil/request/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allowHardware:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final allowRgb565:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final decoderDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diskCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fetcherDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final interceptorDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final memoryCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final networkCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final precision:Lcoil/size/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scale:Lcoil/size/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sizeResolver:Lcoil/size/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transformationDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transitionFactory:Lcoil/transition/c$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/j;Lcoil/size/h;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcoil/size/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcoil/transition/c$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcoil/size/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcoil/request/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/c;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lcoil/request/c;->sizeResolver:Lcoil/size/j;

    iput-object p3, p0, Lcoil/request/c;->scale:Lcoil/size/h;

    iput-object p4, p0, Lcoil/request/c;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    iput-object p5, p0, Lcoil/request/c;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    iput-object p6, p0, Lcoil/request/c;->decoderDispatcher:Lkotlinx/coroutines/k0;

    iput-object p7, p0, Lcoil/request/c;->transformationDispatcher:Lkotlinx/coroutines/k0;

    iput-object p8, p0, Lcoil/request/c;->transitionFactory:Lcoil/transition/c$a;

    iput-object p9, p0, Lcoil/request/c;->precision:Lcoil/size/e;

    iput-object p10, p0, Lcoil/request/c;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object p11, p0, Lcoil/request/c;->allowHardware:Ljava/lang/Boolean;

    iput-object p12, p0, Lcoil/request/c;->allowRgb565:Ljava/lang/Boolean;

    iput-object p13, p0, Lcoil/request/c;->memoryCachePolicy:Lcoil/request/a;

    iput-object p14, p0, Lcoil/request/c;->diskCachePolicy:Lcoil/request/a;

    iput-object p15, p0, Lcoil/request/c;->networkCachePolicy:Lcoil/request/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->allowHardware:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->allowRgb565:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->decoderDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final e()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->diskCachePolicy:Lcoil/request/a;

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
    instance-of v1, p1, Lcoil/request/c;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/request/c;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 11
    .line 12
    check-cast p1, Lcoil/request/c;

    .line 13
    .line 14
    iget-object v2, p1, Lcoil/request/c;->lifecycle:Landroidx/lifecycle/Lifecycle;

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
    iget-object v1, p0, Lcoil/request/c;->sizeResolver:Lcoil/size/j;

    .line 23
    .line 24
    iget-object v2, p1, Lcoil/request/c;->sizeResolver:Lcoil/size/j;

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
    iget-object v1, p0, Lcoil/request/c;->scale:Lcoil/size/h;

    .line 33
    .line 34
    iget-object v2, p1, Lcoil/request/c;->scale:Lcoil/size/h;

    .line 35
    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcoil/request/c;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 39
    .line 40
    iget-object v2, p1, Lcoil/request/c;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcoil/request/c;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 49
    .line 50
    iget-object v2, p1, Lcoil/request/c;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcoil/request/c;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 59
    .line 60
    iget-object v2, p1, Lcoil/request/c;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcoil/request/c;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 69
    .line 70
    iget-object v2, p1, Lcoil/request/c;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcoil/request/c;->transitionFactory:Lcoil/transition/c$a;

    .line 79
    .line 80
    iget-object v2, p1, Lcoil/request/c;->transitionFactory:Lcoil/transition/c$a;

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcoil/request/c;->precision:Lcoil/size/e;

    .line 89
    .line 90
    iget-object v2, p1, Lcoil/request/c;->precision:Lcoil/size/e;

    .line 91
    .line 92
    if-ne v1, v2, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Lcoil/request/c;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    iget-object v2, p1, Lcoil/request/c;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    .line 98
    if-ne v1, v2, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Lcoil/request/c;->allowHardware:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v2, p1, Lcoil/request/c;->allowHardware:Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    iget-object v1, p0, Lcoil/request/c;->allowRgb565:Ljava/lang/Boolean;

    .line 111
    .line 112
    iget-object v2, p1, Lcoil/request/c;->allowRgb565:Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-eqz v1, :cond_1

    .line 119
    .line 120
    iget-object v1, p0, Lcoil/request/c;->memoryCachePolicy:Lcoil/request/a;

    .line 121
    .line 122
    iget-object v2, p1, Lcoil/request/c;->memoryCachePolicy:Lcoil/request/a;

    .line 123
    .line 124
    if-ne v1, v2, :cond_1

    .line 125
    .line 126
    iget-object v1, p0, Lcoil/request/c;->diskCachePolicy:Lcoil/request/a;

    .line 127
    .line 128
    iget-object v2, p1, Lcoil/request/c;->diskCachePolicy:Lcoil/request/a;

    .line 129
    .line 130
    if-ne v1, v2, :cond_1

    .line 131
    .line 132
    iget-object v1, p0, Lcoil/request/c;->networkCachePolicy:Lcoil/request/a;

    .line 133
    .line 134
    iget-object p1, p1, Lcoil/request/c;->networkCachePolicy:Lcoil/request/a;

    .line 135
    .line 136
    if-ne v1, p1, :cond_1

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0
.end method

.method public final f()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final g()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/c;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v2, p0, Lcoil/request/c;->sizeResolver:Lcoil/size/j;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lcoil/request/c;->scale:Lcoil/size/h;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Lcoil/request/c;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, Lcoil/request/c;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    move-result v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget-object v2, p0, Lcoil/request/c;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 73
    move-result v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v2, v1

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-object v2, p0, Lcoil/request/c;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    move-result v2

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move v2, v1

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-object v2, p0, Lcoil/request/c;->transitionFactory:Lcoil/transition/c$a;

    .line 94
    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    move-result v2

    .line 100
    goto :goto_7

    .line 101
    :cond_7
    move v2, v1

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    .line 106
    iget-object v2, p0, Lcoil/request/c;->precision:Lcoil/size/e;

    .line 107
    .line 108
    if-eqz v2, :cond_8

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 112
    move-result v2

    .line 113
    goto :goto_8

    .line 114
    :cond_8
    move v2, v1

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-object v2, p0, Lcoil/request/c;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 125
    move-result v2

    .line 126
    goto :goto_9

    .line 127
    :cond_9
    move v2, v1

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget-object v2, p0, Lcoil/request/c;->allowHardware:Ljava/lang/Boolean;

    .line 133
    .line 134
    if-eqz v2, :cond_a

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    move-result v2

    .line 139
    goto :goto_a

    .line 140
    :cond_a
    move v2, v1

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    .line 145
    iget-object v2, p0, Lcoil/request/c;->allowRgb565:Ljava/lang/Boolean;

    .line 146
    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    move-result v2

    .line 152
    goto :goto_b

    .line 153
    :cond_b
    move v2, v1

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    .line 156
    mul-int/lit8 v0, v0, 0x1f

    .line 157
    .line 158
    iget-object v2, p0, Lcoil/request/c;->memoryCachePolicy:Lcoil/request/a;

    .line 159
    .line 160
    if-eqz v2, :cond_c

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    move-result v2

    .line 165
    goto :goto_c

    .line 166
    :cond_c
    move v2, v1

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    .line 169
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    .line 171
    iget-object v2, p0, Lcoil/request/c;->diskCachePolicy:Lcoil/request/a;

    .line 172
    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    move-result v2

    .line 178
    goto :goto_d

    .line 179
    :cond_d
    move v2, v1

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    .line 182
    mul-int/lit8 v0, v0, 0x1f

    .line 183
    .line 184
    iget-object v2, p0, Lcoil/request/c;->networkCachePolicy:Lcoil/request/a;

    .line 185
    .line 186
    if-eqz v2, :cond_e

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 190
    move-result v1

    .line 191
    :cond_e
    add-int/2addr v0, v1

    .line 192
    return v0
.end method

.method public final i()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->memoryCachePolicy:Lcoil/request/a;

    return-object v0
.end method

.method public final j()Lcoil/request/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->networkCachePolicy:Lcoil/request/a;

    return-object v0
.end method

.method public final k()Lcoil/size/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->precision:Lcoil/size/e;

    return-object v0
.end method

.method public final l()Lcoil/size/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->scale:Lcoil/size/h;

    return-object v0
.end method

.method public final m()Lcoil/size/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->sizeResolver:Lcoil/size/j;

    return-object v0
.end method

.method public final n()Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->transformationDispatcher:Lkotlinx/coroutines/k0;

    return-object v0
.end method

.method public final o()Lcoil/transition/c$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/c;->transitionFactory:Lcoil/transition/c$a;

    return-object v0
.end method
