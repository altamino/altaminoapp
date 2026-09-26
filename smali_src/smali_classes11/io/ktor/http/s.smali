.class public final Lio/ktor/http/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpMessageProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1#2:173\n1360#3:174\n1446#3,2:175\n1549#3:177\n1620#3,3:178\n1448#3,3:181\n1360#3:184\n1446#3,2:185\n1549#3:187\n1620#3,3:188\n1448#3,3:191\n1360#3:194\n1446#3,5:195\n1549#3:200\n1620#3,3:201\n1549#3:204\n1620#3,3:205\n*S KotlinDebug\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n*L\n64#1:174\n64#1:175,2\n65#1:177\n65#1:178,3\n64#1:181,3\n91#1:184\n91#1:185,2\n92#1:187\n92#1:188,3\n91#1:191,3\n104#1:194\n104#1:195,5\n105#1:200\n105#1:201,3\n112#1:204\n112#1:205,3\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/http/q;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0    # Lio/ktor/http/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-static {p0}, Lio/ktor/http/s;->c(Lio/ktor/http/q;)Lio/ktor/http/c;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lio/ktor/http/d;->a(Lio/ktor/http/i;)Ljava/nio/charset/Charset;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public static final b(Lio/ktor/http/q;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lio/ktor/http/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-interface {p0}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/ktor/http/o;->g()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return-object p0
.end method

.method public static final c(Lio/ktor/http/q;)Lio/ktor/http/c;
    .locals 1
    .param p0    # Lio/ktor/http/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-interface {p0}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lio/ktor/http/c;->Companion:Lio/ktor/http/c$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lio/ktor/http/c$b;->b(Ljava/lang/String;)Lio/ktor/http/c;

    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return-object p0
.end method

.method public static final d(Lio/ktor/http/r;)Lio/ktor/http/c;
    .locals 1
    .param p0    # Lio/ktor/http/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-interface {p0}, Lio/ktor/http/r;->getHeaders()Lio/ktor/http/l;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lio/ktor/util/v;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lio/ktor/http/c;->Companion:Lio/ktor/http/c$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lio/ktor/http/c$b;->b(Ljava/lang/String;)Lio/ktor/http/c;

    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return-object p0
.end method

.method public static final e(Lio/ktor/http/r;Lio/ktor/http/c;)V
    .locals 1
    .param p0    # Lio/ktor/http/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/http/c;
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
    const-string v0, "type"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lio/ktor/http/r;->getHeaders()Lio/ktor/http/l;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/ktor/http/i;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Lio/ktor/util/v;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
