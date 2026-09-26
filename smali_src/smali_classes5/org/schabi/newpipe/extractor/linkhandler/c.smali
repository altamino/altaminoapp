.class public Lorg/schabi/newpipe/extractor/linkhandler/c;
.super Lorg/schabi/newpipe/extractor/linkhandler/a;
.source "SourceFile"


# instance fields
.field protected final contentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/linkhandler/c;->contentFilters:Ljava/util/List;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/linkhandler/c;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 6

    .line 4
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->id:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/c;)V
    .locals 6

    .line 3
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/schabi/newpipe/extractor/linkhandler/c;->contentFilters:Ljava/util/List;

    iget-object v5, p1, Lorg/schabi/newpipe/extractor/linkhandler/c;->sortFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
