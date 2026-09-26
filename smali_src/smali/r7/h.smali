.class public final Lr7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,121:1\n69#2:122\n69#2:123\n69#2:124\n69#2:126\n15#3:125\n*S KotlinDebug\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n12#1:122\n80#1:123\n88#1:124\n107#1:126\n105#1:125\n*E\n"
.end annotation


# direct methods
.method public static final a(Ls7/a;)Ls7/a;
    .locals 1
    .param p0    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Ls7/a;->x()Ls7/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object p0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    goto :goto_0
.end method

.method public static final b(Ls7/a;Lt7/g;)V
    .locals 1
    .param p0    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "pool"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :goto_0
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ls7/a;->w()Ls7/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ls7/a;->A(Lt7/g;)V

    .line 15
    move-object p0, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static final c(Ls7/a;)J
    .locals 2
    .param p0    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lr7/h;->d(Ls7/a;J)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method private static final d(Ls7/a;J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    int-to-long v0, v0

    .line 11
    add-long/2addr p1, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ls7/a;->x()Ls7/a;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    return-wide p1
.end method
