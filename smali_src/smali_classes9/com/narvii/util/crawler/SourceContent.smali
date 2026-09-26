.class public Lcom/narvii/util/crawler/SourceContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cannonicalUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private favicon:Ljava/lang/String;

.field private finalUrl:Ljava/lang/String;

.field private htmlCode:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metaTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private raw:Ljava/lang/String;

.field private siteName:Ljava/lang/String;

.field private success:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlData:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->htmlCode:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->images:Ljava/util/List;

    .line 41
    const/4 v0, 0x2

    .line 42
    .line 43
    new-array v0, v0, [Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getCannonicalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavicon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->htmlCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->images:Ljava/util/List;

    return-object v0
.end method

.method public getMetaTags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlData()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    return v0
.end method

.method public setCannonicalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavicon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public setHtmlCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->htmlCode:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->images:Ljava/util/List;

    return-void
.end method

.method public setMetaTags(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    return-void
.end method

.method public setSiteName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlData([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    return-void
.end method
