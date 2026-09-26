.class public Lorg/schabi/newpipe/extractor/localization/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DURATION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final now:Ljava/time/OffsetDateTime;

.field private final patternsHolder:Lpa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(?:(\\d+) )?([A-z]+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/localization/f0;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Lpa/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/localization/j;->a(Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/f0;->now:Ljava/time/OffsetDateTime;

    .line 16
    return-void
.end method

.method public static synthetic a(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/f0;->f(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Laa/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/f0;->g(Ljava/lang/String;)Laa/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/f0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/e;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->now:Ljava/time/OffsetDateTime;

    .line 3
    .line 4
    sget-object v1, Lorg/schabi/newpipe/extractor/localization/f0$a;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/localization/o;->a(Ljava/time/temporal/ChronoUnit;)I

    .line 8
    move-result v2

    .line 9
    .line 10
    aget v1, v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    :goto_0
    move v2, v3

    .line 17
    goto :goto_1

    .line 18
    :pswitch_0
    int-to-long p1, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/q;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-wide/16 v0, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/extractor/localization/r;->a(Ljava/time/OffsetDateTime;J)Ljava/time/OffsetDateTime;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :pswitch_1
    int-to-long v3, p1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3, v4, p2}, Lorg/schabi/newpipe/extractor/localization/p;->a(Ljava/time/OffsetDateTime;JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :pswitch_2
    int-to-long v1, p1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, p2}, Lorg/schabi/newpipe/extractor/localization/p;->a(Ljava/time/OffsetDateTime;JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :goto_1
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lorg/schabi/newpipe/extractor/localization/s;->a()Ljava/time/temporal/ChronoUnit;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/localization/t;->a(Ljava/time/OffsetDateTime;Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/localization/e;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;Z)V

    .line 57
    return-object p1

    .line 58
    nop

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/f0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private synthetic f(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/localization/k;->a(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/x;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/localization/x;-><init>(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method private static synthetic g(Ljava/lang/String;)Laa/h;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Laa/h;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Unable to parse the date: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpa/b;->a()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/m;->a(Ljava/util/Set;)Ljava/util/stream/Stream;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/u;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/localization/u;-><init>(Lorg/schabi/newpipe/extractor/localization/f0;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/v;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/localization/v;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/w;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/localization/w;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/f;->a(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/localization/l;->a(Ljava/lang/Object;)Ljava/time/temporal/ChronoUnit;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private j(Ljava/lang/String;)I
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "\\D+"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lpa/b;->i()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lpa/b;->i()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, " "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string v0, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lpa/b;->i()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v2, "(^|"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, ")"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p2, "($|"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-static {p2, p1}, Lqa/n;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    move-result p1

    .line 113
    return p1
.end method


# virtual methods
.method public h(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/f0;->patternsHolder:Lpa/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpa/b;->g()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/localization/l;->a(Ljava/lang/Object;)Ljava/time/temporal/ChronoUnit;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Ljava/util/Map$Entry;

    .line 61
    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/extractor/localization/f0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/extractor/localization/f0;->d(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/e;

    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/f0;->j(Ljava/lang/String;)I

    .line 91
    move-result v0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/f0;->i(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/localization/f0;->d(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/e;

    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method
