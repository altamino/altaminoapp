.class public abstract Lx9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final downloader:Lz9/a;

.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/i;

.field private final linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

.field private pageFetched:Z

.field private final service:Lx9/s;


# direct methods
.method protected constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lx9/b;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 7
    .line 8
    iput-object v0, p0, Lx9/b;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lx9/b;->pageFetched:Z

    .line 12
    .line 13
    const-string v0, "service is null"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lx9/b;->service:Lx9/s;

    .line 19
    .line 20
    const-string p1, "LinkHandler is null"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p2, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string p2, "downloader is null"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p1, p0, Lx9/b;->downloader:Lz9/a;

    .line 37
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lx9/b;->pageFetched:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "Page is not fetched. Make sure you call fetchPage()"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lx9/b;->pageFetched:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lx9/b;->downloader:Lz9/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lx9/b;->o(Lz9/a;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lx9/b;->pageFetched:Z

    .line 14
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->a()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lz9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/b;->downloader:Lz9/a;

    return-object v0
.end method

.method public e()Lorg/schabi/newpipe/extractor/localization/a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/b;->k()Lx9/s;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lx9/s;->b()Lorg/schabi/newpipe/extractor/localization/a;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method public f()Lorg/schabi/newpipe/extractor/localization/i;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/b;->k()Lx9/s;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lx9/s;->d()Lorg/schabi/newpipe/extractor/localization/i;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->b()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Lorg/schabi/newpipe/extractor/linkhandler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    return-object v0
.end method

.method public abstract i()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->c()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()Lx9/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/b;->service:Lx9/s;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->service:Lx9/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lx9/s;->f()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()Lorg/schabi/newpipe/extractor/localization/f0;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->k()Lx9/s;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/b;->f()Lorg/schabi/newpipe/extractor/localization/i;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lx9/s;->l(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lx9/b;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->d()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract o(Lz9/a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation
.end method
