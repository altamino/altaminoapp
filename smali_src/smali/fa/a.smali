.class public Lfa/a;
.super Lx9/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lx9/s$b$a;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    sget-object v2, Lx9/s$b$a;->AUDIO:Lx9/s$b$a;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    sget-object v2, Lx9/s$b$a;->VIDEO:Lx9/s$b$a;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "media.ccc.de"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v1, v0}, Lx9/s;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lga/a;->n()Lga/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/a;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->f(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 22
    return-object v0
.end method

.method public i()Lorg/schabi/newpipe/extractor/linkhandler/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lga/b;->i()Lga/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
