.class public Lcom/narvii/util/crawler/SourceContent;
.super Ljava/lang/Object;
.source "SourceContent.java"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->htmlCode:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->images:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCannonicalUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavicon()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlCode()Ljava/lang/String;
    .locals 1

    .line 50
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

    .line 170
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

    .line 155
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlData()[Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    return v0
.end method

.method public setCannonicalUrl(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->cannonicalUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavicon(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->favicon:Ljava/lang/String;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public setHtmlCode(Ljava/lang/String;)V
    .locals 0

    .line 58
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

    .line 178
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

    .line 163
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->metaTags:Ljava/util/HashMap;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->raw:Ljava/lang/String;

    return-void
.end method

.method public setSiteName(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->siteName:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/util/crawler/SourceContent;->success:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlData([Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/narvii/util/crawler/SourceContent;->urlData:[Ljava/lang/String;

    return-void
.end method
