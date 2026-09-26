.class public Lja/j;
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
    sget-object v2, Lx9/s$b$a;->COMMENTS:Lx9/s$b$a;

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
    const-string v1, "SoundCloud"

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
    invoke-static {}, Lla/a;->n()Lla/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lla/b;->n()Lla/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lka/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lka/c;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 6
    return-object v0
.end method

.method public i()Lorg/schabi/newpipe/extractor/linkhandler/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lla/c;->i()Lla/c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "AU"

    .line 3
    .line 4
    const-string v1, "CA"

    .line 5
    .line 6
    const-string v2, "DE"

    .line 7
    .line 8
    const-string v3, "FR"

    .line 9
    .line 10
    const-string v4, "GB"

    .line 11
    .line 12
    const-string v5, "IE"

    .line 13
    .line 14
    const-string v6, "NL"

    .line 15
    .line 16
    const-string v7, "NZ"

    .line 17
    .line 18
    const-string v8, "US"

    .line 19
    .line 20
    .line 21
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/a;->b([Ljava/lang/String;)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
