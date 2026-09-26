.class public Lma/h0;
.super Loa/h;
.source "SourceFile"


# static fields
.field private static final ADAPTIVE_FORMATS:Ljava/lang/String; = "adaptiveFormats"

.field private static final CIPHER:Ljava/lang/String; = "cipher"

.field private static final FORMATS:Ljava/lang/String; = "formats"

.field private static final NEXT:Ljava/lang/String; = "next"

.field private static final PLAYER:Ljava/lang/String; = "player"

.field private static final SIGNATURE_CIPHER:Ljava/lang/String; = "signatureCipher"

.field private static final STREAMING_DATA:Ljava/lang/String; = "streamingData"


# instance fields
.field private ageLimit:I

.field private androidCpn:Ljava/lang/String;

.field private androidStreamingData:Lcom/grack/nanojson/JsonObject;

.field private iosCpn:Ljava/lang/String;

.field private iosStreamingData:Lcom/grack/nanojson/JsonObject;

.field private nextResponse:Lcom/grack/nanojson/JsonObject;

.field private playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

.field private playerResponse:Lcom/grack/nanojson/JsonObject;

.field private streamType:Loa/o;

.field private tvHtml5SimplyEmbedCpn:Ljava/lang/String;

.field private tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

.field private videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

.field private videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Loa/h;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lma/h0;->ageLimit:I

    .line 7
    return-void
.end method

.method private A0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lma/h0;->tvHtml5SimplyEmbedCpn:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/services/youtube/l;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lma/h0;->tvHtml5SimplyEmbedCpn:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1, p3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->j(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)[B

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "player"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->G(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;)Lcom/grack/nanojson/JsonObject;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p3}, Lma/h0;->M0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    const-string p2, "streamingData"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 38
    move-result p3

    .line 39
    .line 40
    if-nez p3, :cond_0

    .line 41
    .line 42
    iput-object p1, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 43
    .line 44
    iput-object p2, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 45
    .line 46
    const-string p2, "captions"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "playerCaptionsTracklistRenderer"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Lma/h0;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 59
    :cond_0
    return-void

    .line 60
    .line 61
    :cond_1
    new-instance p1, Laa/d;

    .line 62
    .line 63
    const-string p2, "TVHTML5 embed player response is not valid"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method private B0()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lma/a;",
            "Loa/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lma/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lma/c0;-><init>(Lma/h0;)V

    .line 6
    return-object v0
.end method

.method private C0(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 17
    .line 18
    const-string v1, "adaptiveFormats"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "approxDurationMs"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    move-result-wide v0

    .line 45
    long-to-float v0, v0

    .line 46
    .line 47
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 48
    div-float/2addr v0, v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 52
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return p1

    .line 54
    .line 55
    :cond_1
    new-instance p1, Laa/h;

    .line 56
    .line 57
    const-string v0, "Could not get duration"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method private D0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Loa/g;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/services/youtube/a$a;",
            "Ljava/util/function/Function<",
            "Lma/a;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    new-array v2, v2, [Lqa/g;

    .line 13
    .line 14
    new-instance v3, Lqa/g;

    .line 15
    .line 16
    iget-object v4, p0, Lma/h0;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 17
    .line 18
    iget-object v5, p0, Lma/h0;->iosCpn:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4, v5}, Lqa/g;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    new-instance v3, Lqa/g;

    .line 27
    .line 28
    iget-object v4, p0, Lma/h0;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    iget-object v5, p0, Lma/h0;->androidCpn:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Lqa/g;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    aput-object v3, v2, v4

    .line 37
    .line 38
    new-instance v3, Lqa/g;

    .line 39
    .line 40
    iget-object v4, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 41
    .line 42
    iget-object v5, p0, Lma/h0;->tvHtml5SimplyEmbedCpn:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4, v5}, Lqa/g;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 46
    const/4 v4, 0x2

    .line 47
    .line 48
    aput-object v3, v2, v4

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lma/e;->a([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    new-instance v3, Lma/l;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, p0, v0, p1, p2}, Lma/l;-><init>(Lma/h0;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    new-instance p2, Lma/m;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v1}, Lma/m;-><init>(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/a;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    .line 77
    new-instance p2, Laa/h;

    .line 78
    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v0, "Could not get "

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p4, " streams"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p3

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, p3, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    throw p2
.end method

.method private static E0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p0, "ManifestUrl"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k;->a(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance v0, Lma/d0;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lma/d0;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v0, Lma/e0;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lma/e0;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    new-instance p1, Lma/f0;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Lma/f0;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    const-string p1, ""

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    check-cast p0, Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method private G0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/services/youtube/a$a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lma/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2, p3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-class p3, Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-class p3, Lcom/grack/nanojson/JsonObject;

    .line 31
    .line 32
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    new-instance p3, Lma/z;

    .line 42
    .line 43
    .line 44
    invoke-direct {p3, p0, p4, p1, p5}, Lma/z;-><init>(Lma/h0;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance p2, Lma/a0;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2}, Lma/a0;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-static {}, Lma/f;->a()Ljava/util/stream/Stream;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method private I0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "contents"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v2, "twoColumnWatchNextResults"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v2, "results"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 35
    .line 36
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Lma/p;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p1}, Lma/p;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    new-instance v1, Lma/q;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, p1}, Lma/q;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    new-instance v0, Lcom/grack/nanojson/JsonObject;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 88
    return-object p1
.end method

.method private J0()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "videoPrimaryInfoRenderer"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lma/h0;->I0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lma/h0;->videoPrimaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 14
    return-object v0
.end method

.method private K0()Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "videoSecondaryInfoRenderer"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lma/h0;->I0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lma/h0;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 14
    return-object v0
.end method

.method private L0(Z)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/function/Function<",
            "Lma/a;",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lma/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lma/k;-><init>(Lma/h0;Z)V

    .line 6
    return-object v0
.end method

.method private static M0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "videoDetails"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "videoId"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    return p0
.end method

.method private static synthetic N0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    .line 1
    .line 2
    const-string v0, "metadataRowRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "contents"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 30
    .line 31
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static synthetic O0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    .line 1
    .line 2
    const-string v0, "runs"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static synthetic P0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic Q0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "Age-restricted"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private synthetic R0(Lma/a;)Loa/a;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lma/a;->c()Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Loa/a$a;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Loa/a$a;-><init>()V

    .line 10
    .line 11
    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lma/a;->a()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lma/a;->b()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->o()Lx9/m;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->e()I

    .line 43
    move-result v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Loa/a$a;->f(I)Loa/a$a;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->b()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Loa/a$a;->c(Ljava/lang/String;)Loa/a$a;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->c()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Loa/a$a;->d(Ljava/lang/String;)Loa/a$a;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->a()Ljava/util/Locale;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Loa/a$a;->b(Ljava/util/Locale;)Loa/a$a;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->d()Loa/c;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Loa/a$a;->e(Loa/c;)Loa/a$a;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Loa/a$a;->j(Lorg/schabi/newpipe/extractor/services/youtube/a;)Loa/a$a;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    iget-object v1, p0, Lma/h0;->streamType:Loa/o;

    .line 86
    .line 87
    sget-object v2, Loa/o;->LIVE_STREAM:Loa/o;

    .line 88
    .line 89
    if-eq v1, v2, :cond_0

    .line 90
    .line 91
    sget-object v2, Loa/o;->POST_LIVE_STREAM:Loa/o;

    .line 92
    .line 93
    if-eq v1, v2, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lma/a;->b()Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    :cond_0
    sget-object p1, Loa/d;->DASH:Loa/d;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {v0}, Loa/a$a;->a()Loa/a;

    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

.method private synthetic S0(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Lqa/g;)Ljava/util/stream/Stream;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p4}, Lqa/g;->a()Ljava/io/Serializable;

    .line 4
    move-result-object v0

    .line 5
    move-object v3, v0

    .line 6
    .line 7
    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lqa/g;->b()Ljava/io/Serializable;

    .line 11
    move-result-object p4

    .line 12
    move-object v6, p4

    .line 13
    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    move-object v4, p2

    .line 18
    move-object v5, p3

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Lma/h0;->G0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;)Ljava/util/stream/Stream;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private static synthetic T0(Ljava/util/List;Loa/g;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, Loa/g;->a(Loa/g;Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic U0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic V0(Lorg/schabi/newpipe/extractor/localization/f0;Lcom/grack/nanojson/JsonObject;)Lx9/f;
    .locals 2

    .line 1
    .line 2
    const-string v0, "compactVideoRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lma/m0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1, p0}, Lma/m0;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/f0;)V

    .line 18
    return-object v1

    .line 19
    .line 20
    :cond_0
    const-string p0, "compactRadioRenderer"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lma/b;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lma/b;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 36
    return-object v0

    .line 37
    .line 38
    :cond_1
    const-string p0, "compactPlaylistRenderer"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Lma/b;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lma/b;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 54
    return-object v0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method private static synthetic W0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "engagementPanelSectionListRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "panelIdentifier"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "engagement-panel-macro-markers-description-chapters"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private static synthetic X0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 1
    .line 2
    const-string v0, "engagementPanelSectionListRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "macroMarkersListRenderer"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    const-string v0, "contents"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static synthetic Y0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    const-string v0, "macroMarkersListItemRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private synthetic Z0(Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lma/a;
    .locals 7

    .line 1
    .line 2
    :try_start_0
    const-string v0, "itag"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->n(I)Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 10
    move-result-object v4

    .line 11
    .line 12
    iget-object v5, v4, Lorg/schabi/newpipe/extractor/services/youtube/a;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 13
    .line 14
    if-ne v5, p1, :cond_0

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p2

    .line 17
    move-object v3, p4

    .line 18
    move-object v6, p3

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Lma/h0;->w0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/a;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;)Lma/a;

    .line 22
    move-result-object p1
    :try_end_0
    .catch Laa/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method private static synthetic a1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic b1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lorg/schabi/newpipe/extractor/localization/f0;Lcom/grack/nanojson/JsonObject;)Lx9/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lma/h0;->V0(Lorg/schabi/newpipe/extractor/localization/f0;Lcom/grack/nanojson/JsonObject;)Lx9/f;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c1(ZLma/a;)Loa/s;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lma/a;->c()Lorg/schabi/newpipe/extractor/services/youtube/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Loa/s$a;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Loa/s$a;-><init>()V

    .line 10
    .line 11
    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/a;->id:I

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lma/a;->a()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lma/a;->b()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->o()Lx9/m;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Loa/s$a;->e(Z)Loa/s$a;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Loa/s$a;->f(Lorg/schabi/newpipe/extractor/services/youtube/a;)Loa/s$a;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/a;->q()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    const-string v0, ""

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, v0}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 60
    .line 61
    iget-object v0, p0, Lma/h0;->streamType:Loa/o;

    .line 62
    .line 63
    sget-object v1, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 64
    .line 65
    if-ne v0, v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lma/a;->b()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    :cond_1
    sget-object p2, Loa/d;->DASH:Loa/d;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Loa/s$a;->c(Loa/d;)Loa/s$a;

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p1}, Loa/s$a;->a()Loa/s;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public static synthetic d0(Lma/h0;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lma/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lma/h0;->Z0(Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lma/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    const-string v0, "segmentedLikeDislikeButtonRenderer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "likeButton"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "toggleButtonRenderer"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static synthetic e0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->Y0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e1(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static synthetic f0(Lma/h0;ZLma/a;)Loa/s;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lma/h0;->c1(ZLma/a;)Loa/s;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    const-string v0, "segmentedLikeDislikeButtonViewModel"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "likeButtonViewModel"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-string v0, "toggleButtonViewModel"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string v0, "defaultButtonViewModel"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    const-string v0, "buttonViewModel"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static synthetic g0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->f1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g1(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static synthetic h0(Lma/h0;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Lqa/g;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lma/h0;->S0(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Lqa/g;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static h1(Lcom/grack/nanojson/JsonArray;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v0, Lma/n;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lma/n;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    new-instance v0, Lma/o;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Lma/o;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 48
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    const-string v0, "accessibilityData"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "label"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    const-string v3, "accessibility"

    .line 76
    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    :cond_0
    if-nez v1, :cond_1

    .line 88
    .line 89
    const-string v1, "defaultText"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    move-object v0, p0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move-object v0, v1

    .line 109
    .line 110
    :goto_0
    if-eqz v0, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    const-string v1, "no likes"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    move-result p0

    .line 121
    .line 122
    if-eqz p0, :cond_2

    .line 123
    .line 124
    const-wide/16 v0, 0x0

    .line 125
    return-wide v0

    .line 126
    .line 127
    :cond_2
    if-eqz v0, :cond_3

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-static {v0}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 135
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-wide v0

    .line 137
    :catch_0
    move-exception p0

    .line 138
    .line 139
    new-instance v1, Laa/h;

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    const-string v3, "Could not parse \""

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "\" as a long"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    throw v1

    .line 166
    .line 167
    :cond_3
    new-instance p0, Laa/h;

    .line 168
    .line 169
    const-string v0, "Could not get like count from accessibility data"

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 173
    throw p0
.end method

.method public static synthetic i0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->e1(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method private static i1(Lcom/grack/nanojson/JsonArray;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v0, Lma/r;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lma/r;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    new-instance v0, Lma/s;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Lma/s;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 48
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    const-string v0, "accessibilityText"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-static {p0}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 73
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-wide v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .line 77
    new-instance v1, Laa/h;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v3, "Could not parse \""

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p0, "\" as a long"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, p0, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    throw v1

    .line 104
    .line 105
    :cond_0
    new-instance p0, Laa/h;

    .line 106
    .line 107
    const-string v0, "Could not find buttonViewModel\'s accessibilityText string"

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0

    .line 112
    .line 113
    :cond_1
    new-instance p0, Laa/h;

    .line 114
    .line 115
    const-string v0, "Could not find buttonViewModel object"

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 119
    throw p0
.end method

.method public static synthetic j0(Lma/h0;Lma/a;)Loa/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lma/h0;->R0(Lma/a;)Loa/a;

    move-result-object p0

    return-object p0
.end method

.method private j1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "playabilityStatus"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "liveStreamability"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 19
    .line 20
    iput-object v0, p0, Lma/h0;->streamType:Loa/o;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    const-string v1, "videoDetails"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "isPostLiveDvr"

    .line 32
    .line 33
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Loa/o;->POST_LIVE_STREAM:Loa/o;

    .line 42
    .line 43
    iput-object v0, p0, Lma/h0;->streamType:Loa/o;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    sget-object v0, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 47
    .line 48
    iput-object v0, p0, Lma/h0;->streamType:Loa/o;

    .line 49
    :goto_0
    return-void
.end method

.method public static synthetic k0(Ljava/util/List;Loa/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lma/h0;->T0(Ljava/util/List;Loa/g;)V

    return-void
.end method

.method public static synthetic l0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->O0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lma/h0;->b1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lma/h0;->U0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->X0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->W0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->P0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->Q0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->d1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->N0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lma/h0;->a1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lma/h0;->g1(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method private w0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/a;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/lang/String;)Lma/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v1, "signatureCipher"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v3, "cipher"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v3, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lqa/n;->f(Ljava/lang/String;)Ljava/util/Map;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v3, "s"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/ads/internal/client/e;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "sp"

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "&"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "="

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v0, "&cpn="

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p5

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p5}, Lorg/schabi/newpipe/extractor/services/youtube/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string p5, "initRange"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 115
    move-result-object p5

    .line 116
    .line 117
    const-string v0, "indexRange"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    const-string v1, "mimeType"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    const-string v3, "codecs"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v3

    .line 134
    const/4 v4, 0x1

    .line 135
    .line 136
    if-eqz v3, :cond_1

    .line 137
    .line 138
    const-string v3, "\""

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    aget-object v1, v1, v4

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    move-object v1, v2

    .line 147
    .line 148
    :goto_1
    const-string v3, "bitrate"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 152
    move-result v3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v3}, Lorg/schabi/newpipe/extractor/services/youtube/a;->y(I)V

    .line 156
    .line 157
    const-string v3, "width"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 161
    move-result v3

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v3}, Lorg/schabi/newpipe/extractor/services/youtube/a;->K(I)V

    .line 165
    .line 166
    const-string v3, "height"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 170
    move-result v3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, v3}, Lorg/schabi/newpipe/extractor/services/youtube/a;->C(I)V

    .line 174
    .line 175
    const-string v3, "start"

    .line 176
    .line 177
    const-string v5, "-1"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p5, v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v6

    .line 182
    .line 183
    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    move-result v6

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/a;->G(I)V

    .line 189
    .line 190
    const-string v6, "end"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p5, v6, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object p5

    .line 195
    .line 196
    .line 197
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 198
    move-result p5

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->F(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object p5

    .line 206
    .line 207
    .line 208
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 209
    move-result p5

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->E(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v6, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object p5

    .line 217
    .line 218
    .line 219
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 220
    move-result p5

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->D(I)V

    .line 224
    .line 225
    const-string p5, "quality"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object p5

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->H(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/a;->z(Ljava/lang/String;)V

    .line 236
    .line 237
    iget-object p5, p0, Lma/h0;->streamType:Loa/o;

    .line 238
    .line 239
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 240
    .line 241
    if-eq p5, v0, :cond_2

    .line 242
    .line 243
    sget-object v0, Loa/o;->POST_LIVE_STREAM:Loa/o;

    .line 244
    .line 245
    if-ne p5, v0, :cond_3

    .line 246
    .line 247
    :cond_2
    const-string p5, "targetDurationSec"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 251
    move-result p5

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->J(I)V

    .line 255
    .line 256
    :cond_3
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 257
    const/4 v0, 0x0

    .line 258
    .line 259
    if-eq p4, p5, :cond_7

    .line 260
    .line 261
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 262
    .line 263
    if-ne p4, p5, :cond_4

    .line 264
    goto :goto_2

    .line 265
    .line 266
    :cond_4
    sget-object p5, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 267
    .line 268
    if-ne p4, p5, :cond_8

    .line 269
    .line 270
    const-string p4, "audioSampleRate"

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object p4

    .line 275
    .line 276
    .line 277
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 278
    move-result p4

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/a;->I(I)V

    .line 282
    .line 283
    const-string p4, "audioChannels"

    .line 284
    const/4 p5, 0x2

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 288
    move-result p4

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/a;->t(I)V

    .line 292
    .line 293
    const-string p4, "audioTrack"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 297
    move-result-object p5

    .line 298
    .line 299
    const-string v1, "id"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p5, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    move-result-object p5

    .line 304
    .line 305
    .line 306
    invoke-static {p5}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 307
    move-result v1

    .line 308
    .line 309
    if-nez v1, :cond_6

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->v(Ljava/lang/String;)V

    .line 313
    .line 314
    const-string v1, "."

    .line 315
    .line 316
    .line 317
    invoke-virtual {p5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 318
    move-result v1

    .line 319
    const/4 v3, -0x1

    .line 320
    .line 321
    if-eq v1, v3, :cond_5

    .line 322
    .line 323
    .line 324
    invoke-virtual {p5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 325
    move-result-object p5

    .line 326
    .line 327
    .line 328
    invoke-static {p5}, Lqa/f;->a(Ljava/lang/String;)Ljava/util/Optional;

    .line 329
    move-result-object p5

    .line 330
    .line 331
    new-instance v1, Lma/b0;

    .line 332
    .line 333
    .line 334
    invoke-direct {v1, p3}, Lma/b0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/a;)V

    .line 335
    .line 336
    .line 337
    invoke-static {p5, v1}, Lcom/google/android/gms/ads/internal/client/a;->a(Ljava/util/Optional;Ljava/util/function/Consumer;)V

    .line 338
    .line 339
    .line 340
    :cond_5
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->k(Ljava/lang/String;)Loa/c;

    .line 341
    move-result-object p5

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->x(Loa/c;)V

    .line 345
    .line 346
    .line 347
    :cond_6
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 348
    move-result-object p4

    .line 349
    .line 350
    const-string p5, "displayName"

    .line 351
    .line 352
    .line 353
    invoke-virtual {p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object p4

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/a;->w(Ljava/lang/String;)V

    .line 358
    goto :goto_3

    .line 359
    .line 360
    :cond_7
    :goto_2
    const-string p4, "fps"

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, p4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 364
    move-result p4

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/a;->B(I)V

    .line 368
    .line 369
    :cond_8
    :goto_3
    const-string p4, "contentLength"

    .line 370
    .line 371
    const-wide/16 v5, -0x1

    .line 372
    .line 373
    .line 374
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 375
    move-result-object p5

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    move-result-object p4

    .line 380
    .line 381
    .line 382
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 383
    move-result-wide p4

    .line 384
    .line 385
    .line 386
    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->A(J)V

    .line 387
    .line 388
    const-string p4, "approxDurationMs"

    .line 389
    .line 390
    .line 391
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 392
    move-result-object p5

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2, p4, p5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object p4

    .line 397
    .line 398
    .line 399
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 400
    move-result-wide p4

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, p4, p5}, Lorg/schabi/newpipe/extractor/services/youtube/a;->s(J)V

    .line 404
    .line 405
    new-instance p4, Lma/a;

    .line 406
    .line 407
    .line 408
    invoke-direct {p4, p1, p3}, Lma/a;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a;)V

    .line 409
    .line 410
    iget-object p1, p0, Lma/h0;->streamType:Loa/o;

    .line 411
    .line 412
    sget-object p3, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 413
    .line 414
    if-ne p1, p3, :cond_9

    .line 415
    .line 416
    const-string p1, "type"

    .line 417
    .line 418
    .line 419
    invoke-virtual {p2, p1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object p1

    .line 421
    .line 422
    const-string p2, "FORMAT_STREAM_TYPE_OTF"

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 426
    move-result p1

    .line 427
    xor-int/2addr p1, v4

    .line 428
    .line 429
    .line 430
    invoke-virtual {p4, p1}, Lma/a;->d(Z)V

    .line 431
    goto :goto_5

    .line 432
    .line 433
    :cond_9
    sget-object p2, Loa/o;->POST_LIVE_STREAM:Loa/o;

    .line 434
    .line 435
    if-eq p1, p2, :cond_a

    .line 436
    goto :goto_4

    .line 437
    :cond_a
    move v4, v0

    .line 438
    .line 439
    .line 440
    :goto_4
    invoke-virtual {p4, v4}, Lma/a;->d(Z)V

    .line 441
    :goto_5
    return-object p4
.end method

.method private x0(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "status"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_9

    .line 9
    .line 10
    const-string v1, "ok"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const-string p2, "playabilityStatus"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-string v0, "reason"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "login_required"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v1, "messages"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v2, "private"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    new-instance p1, Laa/i;

    .line 69
    .line 70
    const-string p2, "This video is private."

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2}, Laa/i;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1

    .line 75
    .line 76
    :cond_2
    :goto_0
    const-string v1, "unplayable"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    const-string v1, "error"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    move-result p2

    .line 89
    .line 90
    if-eqz p2, :cond_8

    .line 91
    .line 92
    :cond_3
    if-eqz v0, :cond_8

    .line 93
    .line 94
    const-string p2, "Music Premium"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p2

    .line 99
    .line 100
    if-nez p2, :cond_7

    .line 101
    .line 102
    const-string p2, "payment"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    move-result p2

    .line 107
    .line 108
    if-nez p2, :cond_6

    .line 109
    .line 110
    const-string p2, "members-only"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    move-result p2

    .line 115
    .line 116
    if-nez p2, :cond_5

    .line 117
    .line 118
    const-string p2, "unavailable"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    move-result p2

    .line 123
    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    const-string p2, "errorScreen"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    const-string p2, "playerErrorMessageRenderer"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    const-string p2, "subreason"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    const-string p2, "country"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    move-result p2

    .line 155
    .line 156
    if-eqz p2, :cond_4

    .line 157
    .line 158
    new-instance p1, Laa/f;

    .line 159
    .line 160
    const-string p2, "This video is not available in client\'s country."

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, p2}, Laa/f;-><init>(Ljava/lang/String;)V

    .line 164
    throw p1

    .line 165
    .line 166
    :cond_4
    new-instance p2, Laa/b;

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    check-cast p1, Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-direct {p2, p1}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 176
    throw p2

    .line 177
    .line 178
    :cond_5
    new-instance p1, Laa/g;

    .line 179
    .line 180
    const-string p2, "This video is only available for members of the channel of this video"

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, p2}, Laa/g;-><init>(Ljava/lang/String;)V

    .line 184
    throw p1

    .line 185
    .line 186
    :cond_6
    new-instance p1, Laa/g;

    .line 187
    .line 188
    const-string p2, "This video is a paid video"

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, p2}, Laa/g;-><init>(Ljava/lang/String;)V

    .line 192
    throw p1

    .line 193
    .line 194
    :cond_7
    new-instance p1, Laa/l;

    .line 195
    .line 196
    .line 197
    invoke-direct {p1}, Laa/l;-><init>()V

    .line 198
    throw p1

    .line 199
    .line 200
    :cond_8
    new-instance p1, Laa/b;

    .line 201
    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    const-string v1, "Got error: \""

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v0, "\""

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p2

    .line 223
    .line 224
    .line 225
    invoke-direct {p1, p2}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 226
    throw p1

    .line 227
    :cond_9
    :goto_1
    return-void
.end method

.method private y0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lma/h0;->androidCpn:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->p0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "playerRequest"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "videoId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v1, "disablePlayerResponse"

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "cpn"

    .line 40
    .line 41
    iget-object v1, p0, Lma/h0;->androidCpn:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v0, "contentCheckOk"

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v0, "racyCheckOk"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->u()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v2, "&t="

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "&id="

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "&$fields=playerResponse"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-string v1, "reel/reel_item_watch"

    .line 109
    .line 110
    .line 111
    invoke-static {v1, p1, p2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->E(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    const-string p2, "playerResponse"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p3}, Lma/h0;->M0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 122
    move-result p2

    .line 123
    .line 124
    if-eqz p2, :cond_0

    .line 125
    return-void

    .line 126
    .line 127
    :cond_0
    const-string p2, "streamingData"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 135
    move-result p3

    .line 136
    .line 137
    if-nez p3, :cond_1

    .line 138
    .line 139
    iput-object p2, p0, Lma/h0;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 140
    .line 141
    iget-object p2, p0, Lma/h0;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 145
    move-result p2

    .line 146
    .line 147
    if-eqz p2, :cond_1

    .line 148
    .line 149
    const-string p2, "captions"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    const-string p2, "playerCaptionsTracklistRenderer"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    iput-object p1, p0, Lma/h0;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 162
    :cond_1
    return-void
.end method

.method private z0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lma/h0;->iosCpn:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->s0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "videoId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "cpn"

    .line 19
    .line 20
    iget-object v1, p0, Lma/h0;->iosCpn:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "contentCheckOk"

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string v0, "racyCheckOk"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->u()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v2, "&t="

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "&id="

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    const-string v1, "player"

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, p2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->F(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p3}, Lma/h0;->M0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 90
    move-result p2

    .line 91
    .line 92
    if-nez p2, :cond_1

    .line 93
    .line 94
    const-string p2, "streamingData"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 102
    move-result p3

    .line 103
    .line 104
    if-nez p3, :cond_0

    .line 105
    .line 106
    iput-object p2, p0, Lma/h0;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 107
    .line 108
    const-string p2, "captions"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    const-string p2, "playerCaptionsTracklistRenderer"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iput-object p1, p0, Lma/h0;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 121
    :cond_0
    return-void

    .line 122
    .line 123
    :cond_1
    new-instance p1, Laa/d;

    .line 124
    .line 125
    const-string p2, "IOS player response is not valid"

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1
.end method


# virtual methods
.method public A()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "lengthSeconds"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-wide v0

    .line 23
    :catch_0
    const/4 v0, 0x3

    .line 24
    .line 25
    new-array v0, v0, [Lcom/grack/nanojson/JsonObject;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    iget-object v2, p0, Lma/h0;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    iget-object v2, p0, Lma/h0;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 34
    .line 35
    aput-object v2, v0, v1

    .line 36
    const/4 v1, 0x2

    .line 37
    .line 38
    iget-object v2, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    aput-object v2, v0, v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lma/h0;->C0(Ljava/util/List;)I

    .line 48
    move-result v0

    .line 49
    int-to-long v0, v0

    .line 50
    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "metadataRowContainer"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "metadataRowContainerRenderer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "rows"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v2, "metadataRowRenderer"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v2, "contents"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v2, "title"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v2, "Licence"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    const-string v1, "YouTube licence"

    .line 71
    :goto_0
    return-object v1
.end method

.method public C()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "allowRatings"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    return-wide v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Lma/h0;->J0()Lcom/grack/nanojson/JsonObject;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "videoActions"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "menuRenderer"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "topLevelButtons"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-static {v0}, Lma/h0;->i1(Lcom/grack/nanojson/JsonArray;)J

    .line 48
    move-result-wide v0
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-wide v0

    .line 50
    .line 51
    .line 52
    :catch_0
    :try_start_1
    invoke-static {v0}, Lma/h0;->h1(Lcom/grack/nanojson/JsonArray;)J

    .line 53
    move-result-wide v0
    :try_end_1
    .catch Laa/h; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    return-wide v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .line 57
    new-instance v1, Laa/h;

    .line 58
    .line 59
    const-string v2, "Could not get like count"

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    throw v1
.end method

.method public D()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/n;",
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
    iget-object v0, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "contents"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v2, "twoColumnWatchNextResults"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v2, "results"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/p;->f(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public E()Loa/h$a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "isUnlisted"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Loa/h$a;->UNLISTED:Loa/h$a;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Loa/h$a;->PUBLIC:Loa/h$a;

    .line 16
    :goto_0
    return-object v0
.end method

.method public bridge synthetic F()Lx9/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/h0;->F0()Lx9/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public F0()Lx9/o;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "secondaryResults"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lma/h0;->p()I

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    :try_start_0
    new-instance v1, Lx9/o;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lx9/b;->l()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lx9/o;-><init>(I)V

    .line 23
    .line 24
    iget-object v2, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    const-string v3, "contents"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    const-string v3, "twoColumnWatchNextResults"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v2, "results"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lx9/b;->m()Lorg/schabi/newpipe/extractor/localization/f0;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 61
    .line 62
    new-instance v4, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v4}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 72
    .line 73
    new-instance v4, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v4}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    new-instance v3, Lma/t;

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v2}, Lma/t;-><init>(Lorg/schabi/newpipe/extractor/localization/f0;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    new-instance v2, Lma/u;

    .line 92
    .line 93
    .line 94
    invoke-direct {v2}, Lma/u;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    new-instance v2, Lma/v;

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v1}, Lma/v;-><init>(Lx9/o;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2}, Lda/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .line 110
    new-instance v1, Laa/h;

    .line 111
    .line 112
    const-string v2, "Could not get related videos"

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw v1
.end method

.method public G()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/n;",
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
    iget-object v0, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "engagementPanels"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Lma/x;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Lma/x;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    new-instance v1, Lma/y;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Lma/y;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/grack/nanojson/JsonArray;

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0}, Lma/h0;->A()J

    .line 87
    move-result-wide v1

    .line 88
    .line 89
    new-instance v3, Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    const-class v4, Lcom/grack/nanojson/JsonObject;

    .line 99
    .line 100
    new-instance v5, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 101
    .line 102
    .line 103
    invoke-direct {v5, v4}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v5}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    const-class v4, Lcom/grack/nanojson/JsonObject;

    .line 110
    .line 111
    new-instance v5, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 112
    .line 113
    .line 114
    invoke-direct {v5, v4}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v5}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    new-instance v4, Lma/w;

    .line 121
    .line 122
    .line 123
    invoke-direct {v4}, Lma/w;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v4}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v4}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    check-cast v0, Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    .line 144
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-eqz v4, :cond_6

    .line 148
    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    check-cast v4, Lcom/grack/nanojson/JsonObject;

    .line 154
    .line 155
    const-string v5, "onTap"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    const-string v6, "watchEndpoint"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    const-string v6, "startTimeSeconds"

    .line 168
    const/4 v7, -0x1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v6, v7}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 172
    move-result v5

    .line 173
    .line 174
    if-eq v5, v7, :cond_5

    .line 175
    int-to-long v6, v5

    .line 176
    .line 177
    cmp-long v6, v6, v1

    .line 178
    .line 179
    if-lez v6, :cond_2

    .line 180
    goto :goto_1

    .line 181
    .line 182
    :cond_2
    const-string v6, "title"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 186
    move-result-object v6

    .line 187
    .line 188
    .line 189
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 190
    move-result-object v6

    .line 191
    .line 192
    .line 193
    invoke-static {v6}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 194
    move-result v7

    .line 195
    .line 196
    if-nez v7, :cond_4

    .line 197
    .line 198
    new-instance v7, Loa/n;

    .line 199
    .line 200
    .line 201
    invoke-direct {v7, v6, v5}, Loa/n;-><init>(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lx9/b;->n()Ljava/lang/String;

    .line 205
    move-result-object v6

    .line 206
    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v6, "?t="

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v5

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v5}, Loa/n;->c(Ljava/lang/String;)V

    .line 229
    .line 230
    const-string v5, "thumbnail"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 234
    move-result v6

    .line 235
    .line 236
    if-eqz v6, :cond_3

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 240
    move-result-object v4

    .line 241
    .line 242
    const-string v5, "thumbnails"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 246
    move-result-object v4

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    .line 250
    move-result v5

    .line 251
    .line 252
    if-nez v5, :cond_3

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 256
    move-result v5

    .line 257
    .line 258
    add-int/lit8 v5, v5, -0x1

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    const-string v5, "url"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v4

    .line 269
    .line 270
    .line 271
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object v4

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v4}, Loa/n;->b(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_4
    new-instance v0, Laa/h;

    .line 283
    .line 284
    const-string v1, "Could not get stream segment title."

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 288
    throw v0

    .line 289
    .line 290
    :cond_5
    new-instance v0, Laa/h;

    .line 291
    .line 292
    const-string v1, "Could not get stream segment start time."

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    .line 297
    :cond_6
    :goto_1
    return-object v3
.end method

.method public H()Loa/o;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lma/h0;->streamType:Loa/o;

    .line 6
    return-object v0
.end method

.method public H0(Lx9/m;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/m;",
            ")",
            "Ljava/util/List<",
            "Loa/q;",
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
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iget-object v1, p0, Lma/h0;->playerCaptionsTracklistRenderer:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v2, "captionTracks"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    const-string v4, "languageCode"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    const-string v5, "baseUrl"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    const-string v6, "vssId"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    const-string v6, "a."

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v5

    .line 66
    .line 67
    const-string v6, "&fmt=[^&]*"

    .line 68
    .line 69
    const-string v7, ""

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    const-string v6, "&tlang=[^&]*"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    new-instance v6, Loa/q$a;

    .line 82
    .line 83
    .line 84
    invoke-direct {v6}, Loa/q$a;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lx9/m;->c()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "&fmt="

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    const/4 v7, 0x1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v4, v7}, Loa/q$a;->c(Ljava/lang/String;Z)Loa/q$a;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, p1}, Loa/q$a;->e(Lx9/m;)Loa/q$a;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v3}, Loa/q$a;->d(Ljava/lang/String;)Loa/q$a;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v5}, Loa/q$a;->b(Z)Loa/q$a;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Loa/q$a;->a()Loa/q;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/q;",
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
    sget-object v0, Lx9/m;->TTML:Lx9/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lma/h0;->H0(Lx9/m;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "videoDetails"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "keywords"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lqa/e;->i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "uploadDate"

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 26
    .line 27
    const-string v1, "publishDate"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 47
    .line 48
    const-string v1, "liveBroadcastDetails"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "endTimestamp"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    .line 71
    :cond_2
    const-string v1, "startTimestamp"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, Lma/h0;->H()Loa/o;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    sget-object v1, Loa/o;->LIVE_STREAM:Loa/o;

    .line 93
    .line 94
    if-ne v0, v1, :cond_4

    .line 95
    const/4 v0, 0x0

    .line 96
    return-object v0

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-direct {p0}, Lma/h0;->J0()Lcom/grack/nanojson/JsonObject;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    const-string v1, "dateText"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    const-string v1, "Could not get upload date"

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    const-string v2, "Premiered"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    const-string v3, "dd MMM yyyy"

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    const/16 v2, 0xd

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    :try_start_0
    new-instance v4, Lorg/schabi/newpipe/extractor/localization/i;

    .line 133
    .line 134
    const-string v5, "en"

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v5}, Lorg/schabi/newpipe/extractor/localization/i;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/localization/g0;->b(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v2}, Lorg/schabi/newpipe/extractor/localization/f0;->h(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/e;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/localization/e;->a()Ljava/time/OffsetDateTime;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lm4/o;->a()Ljava/time/format/DateTimeFormatter;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    .line 156
    invoke-static {v5, v4}, Lma/d;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 157
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-object v0

    .line 159
    .line 160
    :catch_0
    :try_start_1
    const-string v4, "MMM dd, yyyy"

    .line 161
    .line 162
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v5}, Lda/a;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v4}, Lma/c;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 170
    move-result-object v4

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lm4/o;->a()Ljava/time/format/DateTimeFormatter;

    .line 174
    move-result-object v5

    .line 175
    .line 176
    .line 177
    invoke-static {v5, v4}, Lma/d;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 178
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    return-object v0

    .line 180
    .line 181
    :catch_1
    :try_start_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v4}, Lda/a;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v4}, Lma/c;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lm4/o;->a()Ljava/time/format/DateTimeFormatter;

    .line 193
    move-result-object v4

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v2}, Lma/d;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 197
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    return-object v0

    .line 199
    .line 200
    :catch_2
    :cond_5
    :try_start_3
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v2}, Lda/a;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v2}, Lma/c;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lm4/o;->a()Ljava/time/format/DateTimeFormatter;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v0}, Lma/d;->a(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 216
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    return-object v0

    .line 218
    :catch_3
    move-exception v0

    .line 219
    .line 220
    new-instance v2, Laa/h;

    .line 221
    .line 222
    .line 223
    invoke-direct {v2, v1, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    throw v2

    .line 225
    .line 226
    :cond_6
    new-instance v0, Laa/h;

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 230
    throw v0
.end method

.method public P()Ljava/util/List;
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
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "thumbnail"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "thumbnails"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    .line 30
    :catch_0
    new-instance v0, Laa/h;

    .line 31
    .line 32
    const-string v1, "Could not get thumbnails"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public Q()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Loa/h;->R(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, -0x2

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    :cond_0
    return-wide v0
.end method

.method public S()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lma/h0;->O()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->n0(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;Z)V

    .line 23
    return-object v1
.end method

.method public T()Ljava/util/List;
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
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "owner"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "videoOwnerRenderer"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "thumbnail"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "thumbnails"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget v1, p0, Lma/h0;->ageLimit:I

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    new-instance v0, Laa/h;

    .line 49
    .line 50
    const-string v1, "Could not get uploader avatars"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_1
    :goto_0
    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "author"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_0
    new-instance v0, Laa/h;

    .line 27
    .line 28
    const-string v1, "Could not get uploader name"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method public V()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->videoSecondaryInfoRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "owner.videoOwnerRenderer"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "subscriberCountText"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    return-wide v0

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

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
    invoke-static {v0}, Lqa/y;->r(Ljava/lang/String;)J

    .line 31
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-wide v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .line 35
    new-instance v1, Laa/h;

    .line 36
    .line 37
    const-string v2, "Could not get uploader subscriber count"

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    throw v1
.end method

.method public W()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "channelId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lna/a;->n()Lna/a;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v3, "channel/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/linkhandler/d;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Laa/h;

    .line 52
    .line 53
    const-string v1, "Could not get uploader url"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method public X()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lma/h0;->L0(Z)Ljava/util/function/Function;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "video-only"

    .line 13
    .line 14
    const-string v3, "adaptiveFormats"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, v0, v1, v2}, Lma/h0;->D0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public Y()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lma/h0;->L0(Z)Ljava/util/function/Function;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "video"

    .line 13
    .line 14
    const-string v3, "formats"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, v0, v1, v2}, Lma/h0;->D0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public Z()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lma/h0;->J0()Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "viewCount"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v2, "videoViewCountRenderer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 33
    .line 34
    const-string v2, "videoDetails"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Laa/h;

    .line 52
    .line 53
    const-string v1, "Could not get view count"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v2, "no views"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    const-wide/16 v0, 0x0

    .line 72
    return-wide v0

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {v0}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    move-result-wide v0

    .line 81
    return-wide v0
.end method

.method public b0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "owner"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "videoOwnerRenderer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "badges"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->W(Lcom/grack/nanojson/JsonArray;)Z

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 6
    .line 7
    const-string v1, "videoDetails"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "title"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lma/h0;->J0()Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    new-instance v0, Laa/h;

    .line 45
    .line 46
    const-string v1, "Could not get name"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    return-object v0
.end method

.method public o(Lz9/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/b;->f()Lorg/schabi/newpipe/extractor/localization/i;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lx9/b;->e()Lorg/schabi/newpipe/extractor/localization/a;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->P(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p1}, Lma/h0;->M0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    const-string v4, "playabilityStatus"

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    iput-object v2, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    const-string v4, "status"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    const-string v5, "login_required"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const-string v4, "reason"

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    const-string v6, "age"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    move v4, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v4, 0x0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-direct {p0}, Lma/h0;->j1()V

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1, v0, p1}, Lma/h0;->A0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V

    .line 73
    .line 74
    iget-object v3, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lma/h0;->j1()V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    new-instance p1, Laa/a;

    .line 83
    .line 84
    const-string v0, "This age-restricted video cannot be watched."

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Laa/a;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-direct {p0, v2, v3}, Lma/h0;->x0(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v1, v0, p1}, Lma/h0;->z0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-direct {p0, v1, v0, p1}, Lma/h0;->y0(Lorg/schabi/newpipe/extractor/localization/a;Lorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    :catch_0
    :goto_1
    const-string v3, "microformat"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    const-string v3, "playerMicroformatRenderer"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    iput-object v2, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->q0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    const-string v2, "videoId"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    const-string v1, "contentCheckOk"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    const-string v1, "racyCheckOk"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    move-result-object p1

    .line 148
    .line 149
    const-string v1, "next"

    .line 150
    .line 151
    .line 152
    invoke-static {v1, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->G(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;)Lcom/grack/nanojson/JsonObject;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    iput-object p1, p0, Lma/h0;->nextResponse:Lcom/grack/nanojson/JsonObject;

    .line 156
    return-void

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v2, p1}, Lma/h0;->x0(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)V

    .line 164
    .line 165
    new-instance p1, Laa/d;

    .line 166
    .line 167
    const-string v0, "Initial WEB player response is not valid"

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 171
    throw p1
.end method

.method public p()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lma/h0;->ageLimit:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "metadataRowContainer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "metadataRowContainerRenderer"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "rows"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 35
    .line 36
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Lma/h;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Lma/h;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    new-instance v1, Lma/i;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Lma/i;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    new-instance v1, Lma/j;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Lma/j;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    new-instance v1, Lma/g0;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1}, Lma/g0;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    const/16 v0, 0x12

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 97
    .line 98
    :goto_0
    iput v0, p0, Lma/h0;->ageLimit:I

    .line 99
    return v0
.end method

.method public q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/a$a;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/a$a;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lma/h0;->B0()Ljava/util/function/Function;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "audio"

    .line 12
    .line 13
    const-string v3, "adaptiveFormats"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v3, v0, v1, v2}, Lma/h0;->D0(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/a$a;Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "category"

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    new-array v0, v0, [Lcom/grack/nanojson/JsonObject;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iget-object v2, p0, Lma/h0;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iget-object v2, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "dash"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lma/h0;->E0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public t()Loa/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "description"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->K(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    new-instance v1, Loa/e;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 30
    return-object v1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-direct {p0}, Lma/h0;->K0()Lcom/grack/nanojson/JsonObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v3, "attributedDescription"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/i;->i(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    new-instance v1, Loa/e;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 56
    return-object v1

    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    const-string v2, "videoDetails"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v2, "shortDescription"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lma/h0;->playerMicroFormatRenderer:Lcom/grack/nanojson/JsonObject;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    :cond_2
    new-instance v1, Loa/e;

    .line 85
    const/4 v2, 0x3

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v0, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 89
    return-object v1
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "playabilityStatus"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "errorScreen"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "playerErrorMessageRenderer"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "reason"

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
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object v0

    .line 32
    :catch_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$M"

    .line 3
    .line 4
    const-string v1, "playerLiveStoryboardSpecRenderer"

    .line 5
    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    :try_start_0
    iget-object v3, v2, Lma/h0;->playerResponse:Lcom/grack/nanojson/JsonObject;

    .line 9
    .line 10
    const-string v4, "storyboards"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 18
    move-result v4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string v1, "playerStoryboardSpecRenderer"

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    const-string v3, "spec"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_2
    const-string v3, "\\|"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    aget-object v4, v1, v3

    .line 60
    .line 61
    new-instance v5, Ljava/util/ArrayList;

    .line 62
    array-length v6, v1

    .line 63
    const/4 v7, 0x1

    .line 64
    sub-int/2addr v6, v7

    .line 65
    .line 66
    .line 67
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    move v6, v7

    .line 69
    :goto_1
    array-length v8, v1

    .line 70
    .line 71
    if-ge v6, v8, :cond_7

    .line 72
    .line 73
    aget-object v8, v1, v6

    .line 74
    .line 75
    const-string v9, "#"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    array-length v9, v8

    .line 81
    .line 82
    const/16 v10, 0x8

    .line 83
    .line 84
    if-ne v9, v10, :cond_6

    .line 85
    const/4 v9, 0x5

    .line 86
    .line 87
    aget-object v10, v8, v9

    .line 88
    .line 89
    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    move-result v10

    .line 92
    .line 93
    if-nez v10, :cond_3

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    :cond_3
    const/4 v10, 0x2

    .line 97
    .line 98
    aget-object v10, v8, v10

    .line 99
    .line 100
    .line 101
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    move-result v15

    .line 103
    const/4 v10, 0x3

    .line 104
    .line 105
    aget-object v10, v8, v10

    .line 106
    .line 107
    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    move-result v17

    .line 110
    const/4 v10, 0x4

    .line 111
    .line 112
    aget-object v10, v8, v10

    .line 113
    .line 114
    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    move-result v18

    .line 117
    .line 118
    const-string v10, "$L"

    .line 119
    .line 120
    add-int/lit8 v11, v6, -0x1

    .line 121
    .line 122
    .line 123
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    move-result-object v11

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    const-string v11, "$N"

    .line 131
    const/4 v12, 0x6

    .line 132
    .line 133
    aget-object v12, v8, v12

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 137
    move-result-object v10

    .line 138
    const/4 v11, 0x7

    .line 139
    .line 140
    aget-object v11, v8, v11

    .line 141
    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v10, "&sigh="

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v10

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v11

    .line 165
    .line 166
    if-eqz v11, :cond_4

    .line 167
    int-to-double v11, v15

    .line 168
    .line 169
    mul-int v13, v17, v18

    .line 170
    int-to-double v13, v13

    .line 171
    div-double/2addr v11, v13

    .line 172
    .line 173
    .line 174
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 175
    move-result-wide v11

    .line 176
    double-to-int v11, v11

    .line 177
    .line 178
    new-instance v12, Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    move v13, v3

    .line 183
    .line 184
    :goto_2
    if-ge v13, v11, :cond_5

    .line 185
    .line 186
    .line 187
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    move-result-object v14

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 192
    move-result-object v14

    .line 193
    .line 194
    .line 195
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    add-int/lit8 v13, v13, 0x1

    .line 198
    goto :goto_2

    .line 199
    .line 200
    .line 201
    :cond_4
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 202
    move-result-object v10

    .line 203
    move-object v12, v10

    .line 204
    .line 205
    :cond_5
    new-instance v10, Loa/f;

    .line 206
    .line 207
    aget-object v11, v8, v3

    .line 208
    .line 209
    .line 210
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 211
    move-result v13

    .line 212
    .line 213
    aget-object v11, v8, v7

    .line 214
    .line 215
    .line 216
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    move-result v14

    .line 218
    .line 219
    aget-object v8, v8, v9

    .line 220
    .line 221
    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 223
    move-result v16

    .line 224
    move-object v11, v10

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v11 .. v18}, Loa/f;-><init>(Ljava/util/List;IIIIII)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    :cond_7
    return-object v5

    .line 236
    .line 237
    :goto_4
    new-instance v1, Laa/d;

    .line 238
    .line 239
    const-string v3, "Could not get frames"

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v3, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    throw v1
.end method

.method public x()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    new-array v0, v0, [Lcom/grack/nanojson/JsonObject;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iget-object v2, p0, Lma/h0;->iosStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iget-object v2, p0, Lma/h0;->androidStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Lma/h0;->tvHtml5SimplyEmbedStreamingData:Lcom/grack/nanojson/JsonObject;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "hls"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lma/h0;->E0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public z()Ljava/util/Locale;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
