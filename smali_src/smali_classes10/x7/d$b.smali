.class public final Lx7/d$b;
.super Lx7/d$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lx7/d$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lf8/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx7/d;)V
    .locals 1
    .param p1    # Lx7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lx7/d$d;-><init>(Lx7/d;)V

    .line 9
    return-void
.end method


# virtual methods
.method public j()Lx7/d$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx7/d$c<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx7/d$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lx7/d$d;->g(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lx7/d$d;->h(I)V

    .line 30
    .line 31
    new-instance v0, Lx7/d$c;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lx7/d$c;-><init>(Lx7/d;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lx7/d$d;->f()V

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 52
    throw v0
.end method

.method public final k(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sb"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-ge v0, v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 23
    move-result v0

    .line 24
    .line 25
    add-int/lit8 v1, v0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lx7/d$d;->g(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lx7/d$d;->h(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lx7/d;->f(Lx7/d;)[Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 43
    move-result v1

    .line 44
    .line 45
    aget-object v0, v0, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "(this Map)"

    .line 52
    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    :goto_0
    const/16 v0, 0x3d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lx7/d;->k(Lx7/d;)[Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 80
    move-result v1

    .line 81
    .line 82
    aget-object v0, v0, v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    if-ne v0, v1, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {p0}, Lx7/d$d;->f()V

    .line 99
    return-void

    .line 100
    .line 101
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 105
    throw p1
.end method

.method public final l()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 18
    move-result v0

    .line 19
    .line 20
    add-int/lit8 v1, v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lx7/d$d;->g(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lx7/d$d;->h(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lx7/d;->f(Lx7/d;)[Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 38
    move-result v1

    .line 39
    .line 40
    aget-object v0, v0, v1

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v1

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lx7/d;->k(Lx7/d;)[Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 64
    move-result v3

    .line 65
    .line 66
    aget-object v2, v2, v3

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 72
    move-result v1

    .line 73
    :cond_1
    xor-int/2addr v0, v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lx7/d$d;->f()V

    .line 77
    return v0

    .line 78
    .line 79
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 83
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx7/d$b;->j()Lx7/d$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
