.class public Lcom/narvii/util/text/MyExtractor;
.super Lcom/twitter/a;
.source "SourceFile"


# static fields
.field private static final ecp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/twitter/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/text/MyExtractor$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/text/MyExtractor$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/text/MyExtractor;->ecp:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/twitter/a;-><init>()V

    .line 4
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
            "Lcom/twitter/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/twitter/a;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/twitter/b;->VALID_NDC_URL:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    const/4 v2, 0x3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->start(I)I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->end(I)I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    instance-of v1, v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    move-object v1, v0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    :cond_1
    :goto_1
    new-instance v5, Lcom/twitter/a$b;

    .line 46
    .line 47
    sget-object v6, Lcom/twitter/a$b$a;->URL:Lcom/twitter/a$b$a;

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v4, v2, v3, v6}, Lcom/twitter/a$b;-><init>(IILjava/lang/String;Lcom/twitter/a$b$a;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    if-nez v1, :cond_3

    .line 57
    return-object v0

    .line 58
    .line 59
    :cond_3
    sget-object p1, Lcom/narvii/util/text/MyExtractor;->ecp:Ljava/util/Comparator;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    return-object v1
.end method
