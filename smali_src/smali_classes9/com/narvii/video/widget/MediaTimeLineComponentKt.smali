.class public final Lcom/narvii/video/widget/MediaTimeLineComponentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convertMillisToTime(I)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    rem-int/lit16 v0, p0, 0x3e8

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x64

    .line 5
    .line 6
    div-int/lit16 p0, p0, 0x3e8

    .line 7
    .line 8
    rem-int/lit8 v1, p0, 0x3c

    .line 9
    .line 10
    div-int/lit8 p0, p0, 0x3c

    .line 11
    .line 12
    sget-object v2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 13
    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    const/4 v3, 0x3

    .line 16
    .line 17
    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    aput-object p0, v4, v5

    .line 25
    const/4 p0, 0x1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    aput-object v1, v4, p0

    .line 32
    const/4 p0, 0x2

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    aput-object v0, v4, p0

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    const-string v0, "%01d:%02d.%1d"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    const-string v0, "format(...)"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    return-object p0
.end method
