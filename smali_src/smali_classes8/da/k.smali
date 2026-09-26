.class public Lda/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lba/d;


# instance fields
.field private final relatedAlbum:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lda/k;->relatedAlbum:Lorg/jsoup/nodes/Element;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lda/k;->relatedAlbum:Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    const-string v1, "by-artist"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "by "

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
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
    const-wide/16 v0, -0x1

    return-wide v0
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
    iget-object v0, p0, Lda/k;->relatedAlbum:Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    const-string v1, "album-art"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "src"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lda/g;->f(Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
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
    iget-object v0, p0, Lda/k;->relatedAlbum:Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    const-string v1, "release-title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
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
    iget-object v0, p0, Lda/k;->relatedAlbum:Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    const-string v1, "album-link"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "abs:href"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public synthetic h()Lba/a;
    .locals 1

    .line 1
    invoke-static {p0}, Lba/c;->b(Lba/d;)Lba/a;

    move-result-object v0

    return-object v0
.end method
