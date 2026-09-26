.class public Lma/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/l;


# static fields
.field private static final ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

.field private static final NO_VIEWS_LOWERCASE:Ljava/lang/String; = "no views"


# instance fields
.field private cachedStreamType:Loa/o;

.field private isPremiere:Ljava/lang/Boolean;

.field private final timeAgoParser:Lorg/schabi/newpipe/extractor/localization/f0;

.field private final videoInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "([\\d,]+) views$"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lma/m0;->ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/f0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    iput-object p2, p0, Lma/m0;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/f0;

    .line 8
    return-void
.end method

.method public static synthetic p(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/m0;->y(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/m0;->z(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/m0;->x(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method private s()Ljava/time/OffsetDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "upcomingEventData"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "startTime"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lma/i0;->a(J)Ljava/time/Instant;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/localization/c;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object v0

    .line 32
    .line 33
    :catch_0
    new-instance v1, Laa/h;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v3, "Could not parse date from premiere: \""

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "\""

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 59
    throw v1
.end method

.method private t()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lqa/n$a;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "accessibility"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "accessibilityData"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "label"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "no views"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    return-wide v0

    .line 44
    .line 45
    :cond_0
    sget-object v1, Lma/m0;->ACCESSIBILITY_DATA_VIEW_COUNT_REGEX:Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lqa/n;->p(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    move-result-wide v0

    .line 58
    return-wide v0
.end method

.method private u(Ljava/lang/String;Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "no views"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    return-wide p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "recommended"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-wide/16 p1, -0x1

    .line 30
    return-wide p1

    .line 31
    .line 32
    :cond_1
    if-eqz p2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lqa/y;->r(Ljava/lang/String;)J

    .line 36
    move-result-wide p1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {p1}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    move-result-wide p1

    .line 46
    :goto_0
    return-wide p1
.end method

.method private v()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->isPremiere:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string v1, "upcomingEventData"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lma/m0;->isPremiere:Ljava/lang/Boolean;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lma/m0;->isPremiere:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method private w()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "badges"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    const-string v2, "metadataBadgeRenderer"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    const-string v2, "label"

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    const-string v2, "Premium"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 48
    return v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    return v0
.end method

.method private static synthetic x(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static synthetic y(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static synthetic z(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "longBylineText"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "runs"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v3, "navigationEndpoint"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    const-string v4, "ownerText"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 68
    .line 69
    const-string v4, "shortBylineText"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-nez v1, :cond_0

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_0
    new-instance v0, Laa/h;

    .line 99
    .line 100
    const-string v1, "Could not get uploader url"

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0

    .line 105
    :cond_1
    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "ownerBadges"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->W(Lcom/grack/nanojson/JsonArray;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "longBylineText"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 21
    .line 22
    const-string v1, "ownerText"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    const-string v1, "shortBylineText"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance v0, Laa/h;

    .line 58
    .line 59
    const-string v1, "Could not get uploader name"

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_1
    :goto_0
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->M(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "channelThumbnailSupportedRenderers"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    const-string v1, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lqa/e;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 26
    .line 27
    const-string v1, "channelThumbnail"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 36
    .line 37
    const-string v1, "channelThumbnail.thumbnails"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lqa/e;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public getDuration()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/m0;->getStreamType()Loa/o;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Loa/o;->LIVE_STREAM:Loa/o;

    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-wide v2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    const-string v1, "lengthText"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    const-string v1, "lengthSeconds"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    const-string v4, "thumbnailOverlays"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-class v4, Lcom/grack/nanojson/JsonObject;

    .line 58
    .line 59
    new-instance v5, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v4}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v5}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-class v4, Lcom/grack/nanojson/JsonObject;

    .line 69
    .line 70
    new-instance v5, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 71
    .line 72
    .line 73
    invoke-direct {v5, v4}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v5}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    new-instance v4, Lma/j0;

    .line 80
    .line 81
    .line 82
    invoke-direct {v4}, Lma/j0;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v4}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 90
    move-result-object v1

    .line 91
    const/4 v4, 0x0

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    const-string v1, "text"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lma/m0;->v()Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    return-wide v2

    .line 129
    .line 130
    :cond_2
    new-instance v0, Laa/h;

    .line 131
    .line 132
    const-string v1, "Could not get duration"

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->o0(Ljava/lang/String;)I

    .line 140
    move-result v0

    .line 141
    int-to-long v0, v0

    .line 142
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Laa/h;

    .line 22
    .line 23
    const-string v1, "Could not get name"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public getStreamType()Loa/o;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->cachedStreamType:Loa/o;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    const-string v1, "badges"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    const-string v2, "style"

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    instance-of v4, v1, Lcom/grack/nanojson/JsonObject;

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    const-string v4, "metadataBadgeRenderer"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    const-string v4, "BADGE_STYLE_TYPE_LIVE_NOW"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    const-string v2, "label"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "LIVE NOW"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    :cond_3
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 73
    .line 74
    iput-object v0, p0, Lma/m0;->cachedStreamType:Loa/o;

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_4
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 78
    .line 79
    const-string v1, "thumbnailOverlays"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    instance-of v4, v1, Lcom/grack/nanojson/JsonObject;

    .line 100
    .line 101
    if-nez v4, :cond_6

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_6
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 105
    .line 106
    const-string v4, "thumbnailOverlayTimeStatusRenderer"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    const-string v4, "LIVE"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    move-result v1

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 125
    .line 126
    iput-object v0, p0, Lma/m0;->cachedStreamType:Loa/o;

    .line 127
    return-object v0

    .line 128
    .line 129
    :cond_7
    sget-object v0, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 130
    .line 131
    iput-object v0, p0, Lma/m0;->cachedStreamType:Loa/o;

    .line 132
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "videoId"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lna/d;->l()Lna/d;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lna/d;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .line 20
    new-instance v1, Laa/h;

    .line 21
    .line 22
    const-string v2, "Could not get url"

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/m0;->getStreamType()Loa/o;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Loa/o;->LIVE_STREAM:Loa/o;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lma/m0;->v()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "yyyy-MM-dd HH:mm"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lja/a;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lma/m0;->s()Ljava/time/OffsetDateTime;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lma/d;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    const-string v2, "publishedTimeText"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    const-string v3, "videoInfo"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v2, "runs"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 75
    move-result-object v0

    .line 76
    const/4 v2, 0x2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    const-string v2, "text"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v1, v0

    .line 95
    :goto_0
    return-object v1
.end method

.method public j()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/m0;->getStreamType()Loa/o;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Loa/o;->LIVE_STREAM:Loa/o;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lma/m0;->v()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/e;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lma/m0;->s()Ljava/time/OffsetDateTime;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 30
    return-object v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lma/m0;->i()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v2, p0, Lma/m0;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/f0;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    :try_start_0
    iget-object v1, p0, Lma/m0;->timeAgoParser:Lorg/schabi/newpipe/extractor/localization/f0;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/f0;->h(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/e;

    .line 50
    move-result-object v0
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .line 54
    new-instance v1, Laa/h;

    .line 55
    .line 56
    const-string v2, "Could not get upload date"

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw v1

    .line 61
    :cond_2
    return-object v1
.end method

.method public k()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lma/m0;->w()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lma/m0;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "[Private video]"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lma/m0;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "[Deleted video]"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method

.method public l()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    const-string v1, "navigationEndpoint"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-string v3, "commandMetadata"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "webCommandMetadata"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "webPageType"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const-string v3, "WEB_PAGE_TYPE_SHORTS"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    move v2, v5

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    :cond_0
    move v2, v4

    .line 51
    .line 52
    :goto_0
    if-nez v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    const-string v2, "reelWatchEndpoint"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    :cond_1
    if-nez v2, :cond_4

    .line 67
    .line 68
    iget-object v1, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 69
    .line 70
    const-string v3, "thumbnailOverlays"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 81
    .line 82
    new-instance v6, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 83
    .line 84
    .line 85
    invoke-direct {v6, v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v6}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 92
    .line 93
    new-instance v6, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v6}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    new-instance v3, Lma/k0;

    .line 103
    .line 104
    .line 105
    invoke-direct {v3}, Lma/k0;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v3}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    new-instance v3, Lma/l0;

    .line 112
    .line 113
    .line 114
    invoke-direct {v3}, Lma/l0;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 122
    move-result-object v1

    .line 123
    const/4 v3, 0x0

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 133
    move-result v3

    .line 134
    .line 135
    if-nez v3, :cond_4

    .line 136
    .line 137
    const-string v2, "style"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    const-string v3, "SHORTS"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    move-result v2

    .line 148
    .line 149
    if-nez v2, :cond_2

    .line 150
    .line 151
    const-string v2, "icon"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    const-string v2, "iconType"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    const-string v1, "shorts"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    if-eqz v0, :cond_3

    .line 174
    :cond_2
    move v4, v5

    .line 175
    :cond_3
    move v2, v4

    .line 176
    :cond_4
    return v2

    .line 177
    .line 178
    :goto_1
    new-instance v1, Laa/h;

    .line 179
    .line 180
    const-string v2, "Could not determine if this is short-form content"

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    throw v1
.end method

.method public m()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "detailedMetadataSnippets"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "snippetText"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 35
    .line 36
    const-string v1, "descriptionSnippet"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public n()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lma/m0;->w()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lma/m0;->v()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    const-string v3, "viewCountText"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-direct {p0, v0, v4}, Lma/m0;->u(Ljava/lang/String;Z)J

    .line 38
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-wide v0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lma/m0;->getStreamType()Loa/o;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    sget-object v3, Loa/o;->LIVE_STREAM:Loa/o;

    .line 46
    .line 47
    if-eq v0, v3, :cond_2

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-direct {p0}, Lma/m0;->t()J

    .line 51
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    return-wide v0

    .line 53
    .line 54
    :catch_1
    :cond_2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 55
    .line 56
    const-string v3, "videoInfo"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    const/4 v5, 0x1

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    :try_start_2
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-string v3, "runs"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-string v3, "text"

    .line 82
    .line 83
    const-string v4, ""

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v0, v5}, Lma/m0;->u(Ljava/lang/String;Z)J

    .line 91
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    return-wide v0

    .line 93
    .line 94
    :catch_2
    :cond_3
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 95
    .line 96
    const-string v3, "shortViewCountText"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    :try_start_3
    iget-object v0, p0, Lma/m0;->videoInfo:Lcom/grack/nanojson/JsonObject;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 116
    move-result v3

    .line 117
    .line 118
    if-nez v3, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v0, v5}, Lma/m0;->u(Ljava/lang/String;Z)J

    .line 122
    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 123
    return-wide v0

    .line 124
    :catch_3
    :cond_4
    :goto_0
    return-wide v1
.end method
