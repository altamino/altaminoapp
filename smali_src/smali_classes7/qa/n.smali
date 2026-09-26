.class public final Lqa/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqa/n$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lqa/n;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqa/n;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lqa/n;->k([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lqa/n;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lqa/n;->i([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "&"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lx9/i;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    new-instance v0, Lqa/i;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lqa/i;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    new-instance v0, Lqa/j;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Lqa/j;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    new-instance v0, Lqa/k;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lqa/k;-><init>()V

    .line 34
    .line 35
    new-instance v1, Lqa/l;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Lqa/l;-><init>()V

    .line 39
    .line 40
    new-instance v2, Lqa/m;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2}, Lqa/m;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lqa/h;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    check-cast p0, Ljava/util/Map;

    .line 54
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static synthetic h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "="

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic i([Ljava/lang/String;)Z
    .locals 1

    .line 1
    array-length p0, p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    if-le p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0
.end method

.method private static synthetic j([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-object p0, p0, v0

    .line 4
    return-object p0
.end method

.method private static synthetic k([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    aget-object p0, p0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lqa/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static synthetic l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lqa/n;->n(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static n(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    move-result p2

    .line 20
    .line 21
    const/16 v0, 0x400

    .line 22
    .line 23
    const-string v1, "\""

    .line 24
    .line 25
    const-string v2, "Failed to find pattern \""

    .line 26
    .line 27
    if-le p2, v0, :cond_1

    .line 28
    .line 29
    new-instance p1, Lqa/n$a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0}, Lqa/n$a;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    :cond_1
    new-instance p2, Lqa/n$a;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p0, "\" inside of \""

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, p0}, Lqa/n$a;-><init>(Ljava/lang/String;)V

    .line 91
    throw p2
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lqa/n;->m(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static p(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lqa/n;->n(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static q([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lqa/n;->r([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static r([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lqa/n$a;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    .line 7
    aget-object v3, p0, v2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    move-result-object v4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    move-result v5

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    return-object v4

    .line 19
    .line 20
    :cond_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    move-result v1

    .line 25
    .line 26
    const/16 v4, 0x400

    .line 27
    .line 28
    const-string v5, "\""

    .line 29
    .line 30
    const-string v6, "Failed to find pattern \""

    .line 31
    .line 32
    if-le v1, v4, :cond_1

    .line 33
    .line 34
    new-instance v1, Lqa/n$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v3}, Lqa/n$a;-><init>(Ljava/lang/String;)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    new-instance v1, Lqa/n$a;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "\" inside of \""

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v3}, Lqa/n$a;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_3
    if-nez v1, :cond_4

    .line 101
    .line 102
    new-instance p0, Lqa/n$a;

    .line 103
    .line 104
    const-string p1, "Empty patterns array passed to matchMultiplePatterns"

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Lqa/n$a;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0

    .line 109
    :cond_4
    throw v1
.end method
