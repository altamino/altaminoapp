.class public Lcom/narvii/model/LinkSummary;
.super Ljava/lang/Object;
.source "LinkSummary.java"


# instance fields
.field public body:Ljava/lang/String;

.field public deepLink:Ljava/lang/String;

.field public favicon:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/crawler/SourceContent;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 31
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_1

    .line 32
    iput v3, v1, Lcom/narvii/model/Media;->type:I

    goto :goto_0

    :cond_1
    const-string v2, "ytv"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x67

    .line 34
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    goto :goto_0

    .line 36
    :cond_2
    iput v3, v1, Lcom/narvii/model/Media;->type:I

    .line 38
    :goto_0
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 40
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFavicon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getSiteName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    .line 58
    iput-object p6, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getFavicon()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstMediaUrl()Ljava/lang/String;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(.+?)\\.(jpg|png|gif|bmp|webp)$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    return-object v0
.end method

.method public getShowFavIcon()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/favicon.ico"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowSource()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->body:Ljava/lang/String;

    return-void
.end method

.method public setFavicon(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->favicon:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    return-void
.end method

.method public setMediaList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/model/LinkSummary;->title:Ljava/lang/String;

    return-void
.end method
