.class public final Lcom/bumptech/glide/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HASH_ACCUMULATOR:I = 0x11

.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HEX_CHAR_ARRAY:[C

.field private static final SHA_256_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "0123456789abcdef"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/bumptech/glide/util/k;->HEX_CHAR_ARRAY:[C

    .line 9
    .line 10
    const/16 v0, 0x40

    .line 11
    .line 12
    new-array v0, v0, [C

    .line 13
    .line 14
    sput-object v0, Lcom/bumptech/glide/util/k;->SHA_256_CHARS:[C

    .line 15
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->p()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "You must call this method on the main thread"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0

    .line 9
    .line 10
    :cond_1
    instance-of v0, p0, Lcom/bumptech/glide/load/model/l;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p0, Lcom/bumptech/glide/load/model/l;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/model/l;->a(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    :goto_0
    return p0
.end method

.method private static d([B[C)Ljava/lang/String;
    .locals 5
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-byte v1, p0, v0

    .line 7
    .line 8
    and-int/lit16 v2, v1, 0xff

    .line 9
    .line 10
    mul-int/lit8 v3, v0, 0x2

    .line 11
    .line 12
    sget-object v4, Lcom/bumptech/glide/util/k;->HEX_CHAR_ARRAY:[C

    .line 13
    .line 14
    ushr-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    aget-char v2, v4, v2

    .line 17
    .line 18
    aput-char v2, p1, v3

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0xf

    .line 23
    .line 24
    aget-char v1, v4, v1

    .line 25
    .line 26
    aput-char v1, p1, v3

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 35
    return-object p0
.end method

.method public static e(I)Ljava/util/Queue;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 6
    return-object v0
.end method

.method public static f(IILandroid/graphics/Bitmap$Config;)I
    .locals 0
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    mul-int/2addr p0, p1

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/util/k;->h(Landroid/graphics/Bitmap$Config;)I

    .line 5
    move-result p1

    .line 6
    mul-int/2addr p0, p1

    .line 7
    return p0
.end method

.method public static g(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    .line 13
    .line 14
    :catch_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 19
    move-result p0

    .line 20
    mul-int/2addr v0, p0

    .line 21
    return v0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Cannot obtain size for recycled Bitmap: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "["

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v2, "x"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    move-result v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "] "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0
.end method

.method private static h(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/bumptech/glide/util/k$a;->$SwitchMap$android$graphics$Bitmap$Config:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result p0

    .line 11
    .line 12
    aget p0, v0, p0

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    const/4 v0, 0x2

    .line 17
    .line 18
    if-eq p0, v0, :cond_2

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    if-eq p0, v1, :cond_2

    .line 22
    const/4 v0, 0x4

    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const/16 v0, 0x8

    .line 28
    :cond_2
    :goto_0
    return v0
.end method

.method public static i(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public static j(F)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/k;->k(FI)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static k(FI)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static l(II)I
    .locals 0

    .line 1
    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p0

    return p1
.end method

.method public static m(Ljava/lang/Object;I)I
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static n(ZI)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/bumptech/glide/util/k;->l(II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static o()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->p()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public static p()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

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

.method private static q(I)Z
    .locals 1

    .line 1
    if-gtz p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static r(II)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/util/k;->q(I)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/bumptech/glide/util/k;->q(I)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static s([B)Ljava/lang/String;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/util/k;->SHA_256_CHARS:[C

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/k;->d([B[C)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method
