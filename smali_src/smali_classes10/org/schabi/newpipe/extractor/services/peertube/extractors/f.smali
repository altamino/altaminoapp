.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/l;


# instance fields
.field private baseUrl:Ljava/lang/String;

.field protected final item:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->baseUrl:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "account.name"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v2, "account.host"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget-object v2, Lx9/r;->PeerTube:Lha/g;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lha/g;->a()Lorg/schabi/newpipe/extractor/linkhandler/d;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v4, "accounts/"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "@"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->baseUrl:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/d;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/c;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->d()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "account.displayName"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lha/f;->f(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lha/f;->c(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "duration"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "name"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStreamType()Loa/o;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "isLive"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 16
    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "uuid"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lx9/r;->PeerTube:Lha/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lha/g;->i()Lorg/schabi/newpipe/extractor/linkhandler/b;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->baseUrl:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lorg/schabi/newpipe/extractor/linkhandler/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->d()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "publishedAt"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public j()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->i()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/e;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lha/f;->i(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 18
    return-object v1
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic l()Z
    .locals 1

    .line 1
    invoke-static {p0}, Loa/k;->b(Loa/l;)Z

    move-result v0

    return v0
.end method

.method public synthetic m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Loa/k;->a(Loa/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->item:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "views"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
