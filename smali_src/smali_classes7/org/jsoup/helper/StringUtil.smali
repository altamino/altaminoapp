.class public final Lorg/jsoup/helper/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MaxCachedBuilderSize:I = 0x2000

.field static final padding:[Ljava/lang/String;

.field private static final stringLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    const-string v1, " "

    .line 5
    .line 6
    const-string v2, "  "

    .line 7
    .line 8
    const-string v3, "   "

    .line 9
    .line 10
    const-string v4, "    "

    .line 11
    .line 12
    const-string v5, "     "

    .line 13
    .line 14
    const-string v6, "      "

    .line 15
    .line 16
    const-string v7, "       "

    .line 17
    .line 18
    const-string v8, "        "

    .line 19
    .line 20
    const-string v9, "         "

    .line 21
    .line 22
    const-string v10, "          "

    .line 23
    .line 24
    const-string v11, "           "

    .line 25
    .line 26
    const-string v12, "            "

    .line 27
    .line 28
    const-string v13, "             "

    .line 29
    .line 30
    const-string v14, "              "

    .line 31
    .line 32
    const-string v15, "               "

    .line 33
    .line 34
    const-string v16, "                "

    .line 35
    .line 36
    const-string v17, "                 "

    .line 37
    .line 38
    const-string v18, "                  "

    .line 39
    .line 40
    const-string v19, "                   "

    .line 41
    .line 42
    const-string v20, "                    "

    .line 43
    .line 44
    .line 45
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Lorg/jsoup/helper/StringUtil;->padding:[Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Lorg/jsoup/helper/StringUtil$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Lorg/jsoup/helper/StringUtil$1;-><init>()V

    .line 54
    .line 55
    sput-object v0, Lorg/jsoup/helper/StringUtil;->stringLocal:Ljava/lang/ThreadLocal;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 14
    move-result v5

    .line 15
    .line 16
    .line 17
    invoke-static {v5}, Lorg/jsoup/helper/StringUtil;->isActuallyWhitespace(I)Z

    .line 18
    move-result v6

    .line 19
    const/4 v7, 0x1

    .line 20
    .line 21
    if-eqz v6, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    :cond_0
    if-eqz v4, :cond_1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    const/16 v4, 0x20

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    move v4, v7

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-static {v5}, Lorg/jsoup/helper/StringUtil;->isInvisibleChar(I)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 45
    move v4, v1

    .line 46
    move v3, v7

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 50
    move-result v5

    .line 51
    add-int/2addr v2, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return-void
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v3

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static inSorted(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-ltz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isActuallyWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 22
    move-result v4

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    return v2

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    return v0
.end method

.method public static isInvisibleChar(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x200b

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x200c

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x200d

    .line 19
    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0xad

    .line 23
    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    move v2, v0

    .line 16
    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    return v0

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/helper/StringUtil;->stringBuilder()Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, v1}, Lorg/jsoup/helper/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static padding(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-ltz p0, :cond_2

    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/helper/StringUtil;->padding:[Ljava/lang/String;

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    aget-object p0, v0, p0

    .line 10
    return-object p0

    .line 11
    .line 12
    :cond_0
    new-array v0, p0, [C

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v1, p0, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x20

    .line 18
    .line 19
    aput-char v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    .line 29
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "width must be > 0"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :catch_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, ""

    return-object p0
.end method

.method public static resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "?"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object p0, v0

    .line 5
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static stringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/helper/StringUtil;->stringLocal:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0x2000

    .line 15
    .line 16
    if-le v2, v3, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 34
    :goto_0
    return-object v1
.end method
