.class public Lha/g;
.super Lx9/s;
.source "SourceFile"


# instance fields
.field private instance:Lha/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Lha/a;->DEFAULT_INSTANCE:Lha/a;

    invoke-direct {p0, p1, v0}, Lha/g;-><init>(ILha/a;)V

    return-void
.end method

.method public constructor <init>(ILha/a;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/s$b$a;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lx9/s$b$a;->VIDEO:Lx9/s$b$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lx9/s$b$a;->COMMENTS:Lx9/s$b$a;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PeerTube"

    invoke-direct {p0, p1, v1, v0}, Lx9/s;-><init>(ILjava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lha/g;->instance:Lha/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/schabi/newpipe/extractor/linkhandler/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lia/a;->o()Lia/a;

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
    invoke-static {}, Lia/b;->n()Lia/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 6
    return-object v0
.end method

.method public i()Lorg/schabi/newpipe/extractor/linkhandler/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lia/c;->i()Lia/c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lha/g;->instance:Lha/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lha/a;->a()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
