.class public Lz9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz9/b$a;
    }
.end annotation


# instance fields
.field private final dataToSend:[B

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final httpMethod:Ljava/lang/String;

.field private final localization:Lorg/schabi/newpipe/extractor/localization/i;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Request\'s httpMethod is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz9/b;->httpMethod:Ljava/lang/String;

    const-string p1, "Request\'s url is null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lz9/b;->url:Ljava/lang/String;

    iput-object p4, p0, Lz9/b;->dataToSend:[B

    iput-object p5, p0, Lz9/b;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    .line 7
    invoke-static {p5}, Lz9/b;->b(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lz9/b;->headers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lz9/b$a;)V
    .locals 7

    .line 9
    invoke-static {p1}, Lz9/b$a;->d(Lz9/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lz9/b$a;->f(Lz9/b$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lz9/b$a;->c(Lz9/b$a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lz9/b$a;->b(Lz9/b$a;)[B

    move-result-object v4

    invoke-static {p1}, Lz9/b$a;->e(Lz9/b$a;)Lorg/schabi/newpipe/extractor/localization/i;

    move-result-object v5

    invoke-static {p1}, Lz9/b$a;->a(Lz9/b$a;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lz9/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lz9/b$a;Lz9/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz9/b;-><init>(Lz9/b$a;)V

    return-void
.end method

.method public static b(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->e()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->g()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p0, ", "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p0, ";q=0.9"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    const-string v0, "Accept-Language"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static e()Lz9/b$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lz9/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lz9/b$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lz9/b;->dataToSend:[B

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz9/b;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz9/b;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lz9/b;

    .line 21
    .line 22
    iget-object v2, p0, Lz9/b;->httpMethod:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lz9/b;->httpMethod:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lz9/b;->url:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p1, Lz9/b;->url:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lz9/b;->headers:Ljava/util/Map;

    .line 43
    .line 44
    iget-object v3, p1, Lz9/b;->headers:Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget-object v2, p0, Lz9/b;->dataToSend:[B

    .line 53
    .line 54
    iget-object v3, p1, Lz9/b;->dataToSend:[B

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lz9/b;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 63
    .line 64
    iget-object p1, p1, Lz9/b;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 65
    .line 66
    .line 67
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v0, v1

    .line 73
    :goto_0
    return v0

    .line 74
    :cond_3
    :goto_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz9/b;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lz9/b;->httpMethod:Ljava/lang/String;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Lz9/b;->url:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    iget-object v2, p0, Lz9/b;->headers:Ljava/util/Map;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    iget-object v2, p0, Lz9/b;->localization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lz9/b;->dataToSend:[B

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    return v0
.end method
