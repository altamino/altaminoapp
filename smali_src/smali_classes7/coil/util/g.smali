.class public final Lcoil/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcoil/util/q;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lcoil/util/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcoil/util/q;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1, v1, v0, p2}, Lcoil/util/q;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_0
    return-void
.end method
