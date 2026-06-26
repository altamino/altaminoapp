.class public Lcom/narvii/util/crawler/TextCrawler;
.super Ljava/lang/Object;
.source "TextCrawler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/crawler/TextCrawler$GetCode;
    }
.end annotation


# static fields
.field public static final ALL:I = -0x1

.field public static final NONE:I = -0x2


# instance fields
.field private final HTTPS_PROTOCOL:Ljava/lang/String;

.field private final HTTP_PROTOCOL:Ljava/lang/String;

.field private callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://"

    .line 49
    iput-object v0, p0, Lcom/narvii/util/crawler/TextCrawler;->HTTP_PROTOCOL:Ljava/lang/String;

    const-string v0, "https://"

    .line 50
    iput-object v0, p0, Lcom/narvii/util/crawler/TextCrawler;->HTTPS_PROTOCOL:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/util/crawler/LinkPreviewCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/util/crawler/TextCrawler;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/crawler/TextCrawler;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/util/crawler/TextCrawler;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->unshortenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->isImage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/util/crawler/TextCrawler;Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->getFavIcon(Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/util/crawler/TextCrawler;Lorg/jsoup/nodes/Document;Z)Ljava/util/HashMap;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/crawler/TextCrawler;->getMetaTags(Lorg/jsoup/nodes/Document;Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->crawlCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->cannonicalPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/util/crawler/TextCrawler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->stripTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cannonicalPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "http://"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "https://"

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    :goto_1
    if-ge v1, v0, :cond_2

    .line 454
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private connectURL(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1

    .line 677
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Can not connect to the URL"

    .line 682
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "Please input a valid URL"

    .line 680
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private crawlCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "span"

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/narvii/util/crawler/TextCrawler;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p"

    .line 423
    invoke-direct {p0, v1, p1}, Lcom/narvii/util/crawler/TextCrawler;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "div"

    .line 424
    invoke-direct {p0, v2, p1}, Lcom/narvii/util/crawler/TextCrawler;->getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 429
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v1

    .line 437
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static extendedTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const-string v1, "\\s+"

    .line 691
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\r"

    .line 692
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 555
    :cond_0
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "content"

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 556
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    sget-object p6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p5, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 557
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 558
    :cond_2
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 560
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p5}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, p5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 561
    invoke-virtual {p1, p5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 562
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method private getFavIcon(Lcom/narvii/util/crawler/SourceContent;)Ljava/lang/String;
    .locals 8

    .line 479
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getHtmlCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "<link(.*?)>"

    invoke-static {v0, v2, v1}, Lcom/narvii/util/crawler/Regex;->pregMatchAll(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "://"

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rel=\"shortcut icon\""

    .line 484
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "rel=\'shortcut icon\'"

    .line 485
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    const-string v5, "href=\"(.*?)\""

    .line 486
    invoke-static {v3, v5, v1}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 489
    invoke-direct {p0, v3}, Lcom/narvii/util/crawler/TextCrawler;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v5, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 495
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 497
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 502
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    :try_start_1
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 506
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "/favicon.ico"

    .line 507
    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 509
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    const-string p1, ""

    return-object p1

    :cond_3
    return-object v2
.end method

.method private getImagesSrc(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 387
    :cond_0
    instance-of v2, p1, Lorg/jsoup/select/Elements;

    const-string v3, "[src]"

    if-eqz v2, :cond_1

    .line 388
    check-cast p1, Lorg/jsoup/select/Elements;

    invoke-virtual {p1, v3}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_1
    instance-of v2, p1, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_2

    .line 390
    check-cast p1, Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    goto :goto_0

    .line 391
    :cond_2
    instance-of v2, p1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_5

    .line 392
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 396
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 397
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "abs:src"

    .line 398
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "svg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method private getMetaTags(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    const-string v2, ""

    .line 574
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title"

    .line 575
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "description"

    .line 576
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "image"

    .line 577
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sitename"

    .line 578
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "<meta(.*?)>"

    const/4 v7, 0x1

    .line 580
    invoke-static {p1, v2, v7}, Lcom/narvii/util/crawler/Regex;->pregMatchAll(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 583
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 584
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "property=\"og:url\""

    .line 585
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "property=\'og:url\'"

    .line 586
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "name=\"url\""

    .line 587
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "name=\'url\'"

    .line 588
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v9, "property=\"og:title\""

    .line 590
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "property=\'og:title\'"

    .line 591
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "name=\"title\""

    .line 592
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "name=\'title\'"

    .line 593
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v9, "property=\"og:description\""

    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "property=\'og:description\'"

    .line 598
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "name=\"description\""

    .line 599
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "name=\'description\'"

    .line 600
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    const-string v9, "property=\"og:image\""

    .line 602
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "property=\'og:image\'"

    .line 603
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "name=\"image\""

    .line 604
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "name=\'image\'"

    .line 605
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    const-string v9, "property=\"og:site_name\""

    .line 607
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "property=\'og:site_name\'"

    .line 608
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "name=\"site_name\""

    .line 609
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "name=\'site_name\'"

    .line 610
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 611
    :cond_5
    invoke-direct {p0, v7}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v6, v7}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_6
    :goto_1
    invoke-direct {p0, v7}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v5, v7}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_7
    :goto_2
    invoke-direct {p0, v7}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v4, v7}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_8
    :goto_3
    invoke-direct {p0, v7}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v3, v7}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :cond_9
    :goto_4
    invoke-direct {p0, v7}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v1, v7}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p2, :cond_d

    .line 615
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 616
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemprop=\"videoid\""

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "itemprop=\'videoid\'"

    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 619
    :cond_c
    invoke-direct {p0, p2}, Lcom/narvii/util/crawler/TextCrawler;->separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v5, p2}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    return-object v0
.end method

.method private getMetaTags(Lorg/jsoup/nodes/Document;Z)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 519
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "url"

    const-string v0, ""

    .line 520
    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "title"

    .line 521
    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "description"

    .line 522
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "image"

    .line 523
    invoke-virtual {v8, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "sitename"

    .line 524
    invoke-virtual {v8, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "channelId"

    .line 525
    invoke-virtual {v8, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "meta"

    move-object/from16 v1, p1

    .line 527
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/jsoup/nodes/Element;

    const-string v2, "property"

    const-string v3, "og:url"

    const-string v4, "twitter:url"

    const-string v5, "name"

    const-string v6, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .line 529
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-direct {v7, v8, v9, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "property"

    const-string v3, "og:title"

    const-string v4, "twitter:title"

    const-string v5, "name"

    const-string v6, "title"

    move-object/from16 v0, p0

    .line 531
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-direct {v7, v8, v10, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "property"

    const-string v3, "og:description"

    const-string v4, "twitter:description"

    const-string v5, "name"

    const-string v6, "description"

    move-object/from16 v0, p0

    .line 533
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-direct {v7, v8, v11, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "property"

    const-string v3, "og:image"

    const-string v4, "twitter:image"

    const-string v5, "name"

    const-string v6, "image"

    move-object/from16 v0, p0

    .line 535
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-direct {v7, v8, v12, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "property"

    const-string v3, "og:site_name"

    const-string v4, "twitter:site_name"

    const-string v5, "name"

    const-string v6, "site_name"

    move-object/from16 v0, p0

    .line 537
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-direct {v7, v8, v13, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "itemprop"

    const-string v3, "videoid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .line 541
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-direct {v7, v8, v12, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemprop"

    const-string v3, "channelid"

    move-object/from16 v0, p0

    .line 544
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/crawler/TextCrawler;->extraContent(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-direct {v7, v8, v14, v0}, Lcom/narvii/util/crawler/TextCrawler;->updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v8
.end method

.method private getTagContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(.*?)>(.*?)</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 321
    invoke-static {p2, p1, v0}, Lcom/narvii/util/crawler/Regex;->pregMatchAll(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ""

    if-ge v3, v2, :cond_1

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/narvii/util/crawler/TextCrawler;->stripTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x78

    if-lt v6, v7, :cond_0

    .line 327
    invoke-static {v5}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 332
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-static {p2, p1, v0}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p1, "&nbsp;"

    .line 337
    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private htmlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 410
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isImage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(.+?)\\.(jpg|png|gif|bmp|webp)$"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private separeMetaTagsContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "content=\"(.*?)\""

    const/4 v1, 0x1

    .line 638
    invoke-static {p1, v0, v1}, Lcom/narvii/util/crawler/Regex;->pregMatch(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->htmlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stripTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 468
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unshortenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 647
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 648
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 651
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->connectURL(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 656
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 658
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-direct {p0, v0}, Lcom/narvii/util/crawler/TextCrawler;->connectURL(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 663
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method private updateMetaTag(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 629
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 630
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getImages(Lorg/jsoup/nodes/Document;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "p"

    .line 349
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lcom/narvii/util/crawler/TextCrawler;->getImagesSrc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "div"

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 353
    :cond_0
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 356
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/util/crawler/TextCrawler;->getImagesSrc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 364
    :cond_4
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lcom/narvii/util/crawler/TextCrawler;->getImagesSrc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 368
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 369
    :cond_6
    invoke-direct {p0, p1}, Lcom/narvii/util/crawler/TextCrawler;->getImagesSrc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_7
    const/4 p1, -0x1

    if-eq p2, p1, :cond_8

    const/4 p1, 0x0

    .line 372
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 62
    new-instance p1, Lcom/narvii/util/crawler/TextCrawler$GetCode;

    const/4 v0, -0x1

    invoke-direct {p1, p0, v0}, Lcom/narvii/util/crawler/TextCrawler$GetCode;-><init>(Lcom/narvii/util/crawler/TextCrawler;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;I)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/narvii/util/crawler/TextCrawler;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    .line 68
    new-instance p1, Lcom/narvii/util/crawler/TextCrawler$GetCode;

    invoke-direct {p1, p0, p3}, Lcom/narvii/util/crawler/TextCrawler$GetCode;-><init>(Lcom/narvii/util/crawler/TextCrawler;I)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
