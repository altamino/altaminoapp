.class public abstract Lz9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract execute(Lz9/b;)Lz9/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;)Lz9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 3
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ")",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 4
    invoke-static {}, Lz9/b;->e()Lz9/b$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lz9/b$a;->h(Ljava/lang/String;)Lz9/b$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lz9/b$a;->j(Ljava/util/Map;)Lz9/b$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lz9/b$a;->k(Lorg/schabi/newpipe/extractor/localization/i;)Lz9/b$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lz9/b$a;->g()Lz9/b;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lz9/a;->execute(Lz9/b;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lz9/a;->head(Ljava/lang/String;Ljava/util/Map;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Ljava/util/Map;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 2
    invoke-static {}, Lz9/b;->e()Lz9/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lz9/b$a;->i(Ljava/lang/String;)Lz9/b$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lz9/b$a;->j(Ljava/util/Map;)Lz9/b$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lz9/b$a;->g()Lz9/b;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lz9/a;->execute(Lz9/b;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[B)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 1
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz9/a;->post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ")",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 2
    invoke-static {}, Lz9/b;->e()Lz9/b$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p3}, Lz9/b$a;->l(Ljava/lang/String;[B)Lz9/b$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lz9/b$a;->j(Ljava/util/Map;)Lz9/b$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Lz9/b$a;->k(Lorg/schabi/newpipe/extractor/localization/i;)Lz9/b$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lz9/b$a;->g()Lz9/b;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lz9/a;->execute(Lz9/b;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lz9/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/lang/String;",
            ")",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 5
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lz9/a;->postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Ljava/lang/String;",
            ")",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p2, "Content-Type"

    .line 3
    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, v0, p3, p4}, Lz9/a;->post(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lz9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 2
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ")",
            "Lz9/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    const-string v5, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lz9/a;->postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lz9/d;

    move-result-object p1

    return-object p1
.end method
