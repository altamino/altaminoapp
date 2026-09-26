.class public abstract Lh8/a;
.super Lh8/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatformRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformRandom.kt\nkotlin/random/AbstractPlatformRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lh8/d;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/a;->j()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lh8/e;->f(II)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public c()D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/a;->j()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/a;->j()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/a;->j()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/a;->j()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public abstract j()Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
