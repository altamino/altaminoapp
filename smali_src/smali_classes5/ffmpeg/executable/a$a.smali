.class public final Lffmpeg/executable/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/executable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lffmpeg/executable/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lffmpeg/executable/a$a;Lg7/d;I)Lw7/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/a$a;->d(Lg7/d;I)Lw7/u;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lffmpeg/executable/a$a;IIZF)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lffmpeg/executable/a$a;->h(IIZF)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Lg7/d;I)Lw7/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/d;",
            "I)",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lg7/d;->x()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "get(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v0, Ljava/lang/Number;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    const/16 v2, 0x2d0

    .line 22
    .line 23
    if-ge v0, v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lg7/d;->x()Ljava/util/ArrayList;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    check-cast v0, Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result v2

    .line 41
    :cond_0
    int-to-float v0, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lg7/d;->t()Ljava/util/ArrayList;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    check-cast p1, Ljava/lang/Number;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 58
    move-result p1

    .line 59
    div-float/2addr v0, p1

    .line 60
    float-to-int p1, v0

    .line 61
    .line 62
    and-int/lit8 p2, p1, 0x1

    .line 63
    const/4 v0, 0x1

    .line 64
    .line 65
    if-ne p2, v0, :cond_1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    :cond_1
    const/16 p2, 0x500

    .line 70
    .line 71
    if-le p1, p2, :cond_3

    .line 72
    .line 73
    mul-int/lit16 v2, v2, 0x500

    .line 74
    div-int/2addr v2, p1

    .line 75
    .line 76
    and-int/lit8 p1, v2, 0x1

    .line 77
    .line 78
    if-ne p1, v0, :cond_2

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    :cond_2
    move p1, p2

    .line 82
    .line 83
    :cond_3
    new-instance p2, Lw7/u;

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, v0, p1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    return-object p2
.end method

.method static synthetic e(Lffmpeg/executable/a$a;Lg7/d;IILjava/lang/Object;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/a$a;->d(Lg7/d;I)Lw7/u;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final h(IIZF)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x2d0

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    int-to-float p2, p1

    .line 11
    div-float/2addr p2, p4

    .line 12
    float-to-int p2, p2

    .line 13
    .line 14
    and-int/lit8 p3, p2, 0x1

    .line 15
    .line 16
    if-ne p3, v1, :cond_3

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_1
    if-ge p2, v0, :cond_2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move p2, v0

    .line 24
    :goto_1
    int-to-float p1, p2

    .line 25
    mul-float/2addr p1, p4

    .line 26
    float-to-int p1, p1

    .line 27
    .line 28
    and-int/lit8 p3, p1, 0x1

    .line 29
    .line 30
    if-ne p3, v1, :cond_3

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const/16 p1, 0x3a

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method


# virtual methods
.method public final c(I)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    rem-int/lit16 v0, p1, 0x3e8

    .line 3
    .line 4
    div-int/lit16 p1, p1, 0x3e8

    .line 5
    .line 6
    rem-int/lit8 v1, p1, 0x3c

    .line 7
    .line 8
    div-int/lit8 v2, p1, 0x3c

    .line 9
    .line 10
    rem-int/lit8 v2, v2, 0x3c

    .line 11
    .line 12
    div-int/lit16 p1, p1, 0xe10

    .line 13
    .line 14
    sget-object v3, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 15
    .line 16
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    const/4 v4, 0x4

    .line 18
    .line 19
    new-array v5, v4, [Ljava/lang/Object;

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    aput-object p1, v5, v6

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    aput-object v2, v5, p1

    .line 34
    const/4 p1, 0x2

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    aput-object v1, v5, p1

    .line 41
    const/4 p1, 0x3

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    aput-object v0, v5, p1

    .line 48
    .line 49
    .line 50
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const-string v0, "%02d:%02d:%02d.%03d"

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string v0, "format(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-object p1
.end method

.method public final f()Lffmpeg/executable/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lffmpeg/executable/a;->a()Lffmpeg/executable/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g(Ljava/io/File;)Lffmpeg/executable/a;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "localFileDir"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lffmpeg/executable/a$a;->f()Lffmpeg/executable/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-class v0, Lffmpeg/executable/a;

    .line 14
    monitor-enter v0

    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lffmpeg/executable/a;->Companion:Lffmpeg/executable/a$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lffmpeg/executable/a$a;->f()Lffmpeg/executable/a;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lffmpeg/executable/a;

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p1, v3}, Lffmpeg/executable/a;-><init>(Ljava/io/File;Lkotlin/jvm/internal/k;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lffmpeg/executable/a$a;->i(Lffmpeg/executable/a;)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw p1

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lffmpeg/executable/a$a;->f()Lffmpeg/executable/a;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    return-object p1
.end method

.method public final i(Lffmpeg/executable/a;)V
    .locals 0
    .param p1    # Lffmpeg/executable/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lffmpeg/executable/a;->d(Lffmpeg/executable/a;)V

    .line 4
    return-void
.end method
