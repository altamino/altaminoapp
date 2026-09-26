.class public Lma/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba/d;


# instance fields
.field private final mixInfoItem:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

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
    iget-object v0, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "longBylineText"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "videoCountShortText"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    int-to-long v0, v0

    .line 20
    return-wide v0

    .line 21
    .line 22
    :catch_0
    const-wide/16 v0, -0x2

    .line 23
    return-wide v0

    .line 24
    .line 25
    :cond_0
    new-instance v0, Laa/h;

    .line 26
    .line 27
    const-string v1, "Could not extract item count for playlist/mix info item"

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
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
    iget-object v0, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->M(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic getDescription()Loa/e;
    .locals 1

    .line 1
    invoke-static {p0}, Lba/c;->a(Lba/d;)Loa/e;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Laa/h;

    .line 22
    .line 23
    const-string v1, "Could not get name"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/b;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "shareUrl"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Laa/h;

    .line 18
    .line 19
    const-string v1, "Could not get url"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public h()Lba/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/b;->getUrl()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->p(Ljava/lang/String;)Lba/a;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
