.class public Lcom/narvii/util/text/MyExtractor;
.super Lcom/twitter/Extractor;
.source "MyExtractor.java"


# static fields
.field private static final ecp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/narvii/util/text/MyExtractor$1;

    invoke-direct {v0}, Lcom/narvii/util/text/MyExtractor$1;-><init>()V

    sput-object v0, Lcom/narvii/util/text/MyExtractor;->ecp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/twitter/Extractor;-><init>()V

    return-void
.end method


# virtual methods
.method public extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/twitter/Regex;->VALID_NDC_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 23
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 25
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    if-nez v1, :cond_1

    .line 28
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_1

    .line 31
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    :cond_1
    :goto_1
    new-instance v5, Lcom/twitter/Extractor$Entity;

    sget-object v6, Lcom/twitter/Extractor$Entity$Type;->URL:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct {v5, v4, v2, v3, v6}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    .line 41
    :cond_3
    sget-object p1, Lcom/narvii/util/text/MyExtractor;->ecp:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method
