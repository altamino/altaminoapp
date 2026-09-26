.class public Lka/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/l;


# instance fields
.field private final itemObject:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "user"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "permalink_url"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "user"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "verified"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "user"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "username"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lja/i;->e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "user"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "avatar_url"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lja/i;->c(Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

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
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    div-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStreamType()Loa/o;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Loa/o;->AUDIO_STREAM:Loa/o;

    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "permalink_url"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "created_at"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lka/d;->i()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lja/i;->m(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 14
    return-object v0
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
    iget-object v0, p0, Lka/d;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "playback_count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
