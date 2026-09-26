.class public final Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Loa/i;Loa/h;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loa/i;",
            "Loa/h;",
            ")",
            "Ljava/util/List<",
            "Lx9/e;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Loa/h;->F()Lx9/h;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lx9/h;->e()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lx9/d;->a(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lx9/h;->f()Ljava/util/List;

    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
