.class public Lorg/schabi/newpipe/extractor/linkhandler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final originalUrl:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->originalUrl:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->originalUrl:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/linkhandler/a;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lqa/y;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->id:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/a;->url:Ljava/lang/String;

    return-object v0
.end method
