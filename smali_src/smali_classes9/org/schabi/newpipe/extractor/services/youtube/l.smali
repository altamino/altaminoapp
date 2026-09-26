.class public final Lorg/schabi/newpipe/extractor/services/youtube/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedJavaScriptPlayerCode:Ljava/lang/String;

.field private static cachedSignatureDeobfuscationFunction:Ljava/lang/String;

.field private static cachedSignatureTimestamp:Ljava/lang/Integer;

.field private static cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

.field private static cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

.field private static sigDeobFuncExtractionEx:Laa/h;

.field private static sigTimestampExtractionEx:Laa/h;

.field private static throttlingDeobfFuncExtractionEx:Laa/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigDeobFuncExtractionEx:Laa/h;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/l;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/t0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :goto_0
    new-instance p1, Laa/h;

    .line 27
    .line 28
    const-string v0, "Could not get signature parameter deobfuscation JavaScript function"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigDeobFuncExtractionEx:Laa/h;

    .line 34
    throw p0

    .line 35
    .line 36
    :goto_1
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigDeobFuncExtractionEx:Laa/h;

    .line 37
    throw p0

    .line 38
    .line 39
    :cond_0
    :goto_2
    :try_start_1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "deobfuscate"

    .line 42
    .line 43
    .line 44
    filled-new-array {p1}, [Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, p1}, Lqa/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    return-object p0

    .line 59
    :catch_2
    move-exception p0

    .line 60
    .line 61
    new-instance p1, Laa/h;

    .line 62
    .line 63
    const-string v0, "Could not run signature parameter deobfuscation JavaScript function"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p1

    .line 68
    :cond_1
    throw v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 11
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureTimestamp:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigTimestampExtractionEx:Laa/h;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/l;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/t0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureTimestamp:Ljava/lang/Integer;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_2
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    .line 33
    :goto_0
    new-instance v0, Laa/h;

    .line 34
    .line 35
    const-string v1, "Could not get signature timestamp"

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigTimestampExtractionEx:Laa/h;

    .line 41
    throw p0

    .line 42
    .line 43
    :goto_1
    new-instance v0, Laa/h;

    .line 44
    .line 45
    const-string v1, "Could not convert signature timestamp to a number"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigTimestampExtractionEx:Laa/h;

    .line 51
    .line 52
    :goto_2
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedSignatureTimestamp:Ljava/lang/Integer;

    .line 53
    return-object p0

    .line 54
    .line 55
    :goto_3
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->sigTimestampExtractionEx:Laa/h;

    .line 56
    throw p0

    .line 57
    :cond_1
    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/u0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/l;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/l;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->throttlingDeobfFuncExtractionEx:Laa/h;

    .line 28
    .line 29
    if-nez p0, :cond_3

    .line 30
    .line 31
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    .line 32
    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    :try_start_0
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/u0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :goto_0
    new-instance p1, Laa/h;

    .line 57
    .line 58
    const-string v0, "Could not get throttling parameter deobfuscation JavaScript function"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    sput-object p1, Lorg/schabi/newpipe/extractor/services/youtube/l;->throttlingDeobfFuncExtractionEx:Laa/h;

    .line 64
    throw p0

    .line 65
    .line 66
    :goto_1
    sput-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->throttlingDeobfFuncExtractionEx:Laa/h;

    .line 67
    throw p0

    .line 68
    .line 69
    :cond_2
    :goto_2
    :try_start_1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    .line 70
    .line 71
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/l;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    filled-new-array {v0}, [Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v2, v3}, Lqa/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 87
    return-object p0

    .line 88
    :catch_2
    move-exception p0

    .line 89
    .line 90
    new-instance p1, Laa/h;

    .line 91
    .line 92
    const-string v0, "Could not run throttling parameter deobfuscation JavaScript function"

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    throw p1

    .line 97
    :cond_3
    throw p0
.end method
