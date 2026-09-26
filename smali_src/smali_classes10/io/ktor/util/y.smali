.class public final Lio/ktor/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,115:1\n151#2,6:116\n151#2,6:122\n*S KotlinDebug\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n*L\n50#1:116,6\n73#1:122,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;)Lio/ktor/util/h;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/util/h;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/ktor/util/h;-><init>(Ljava/lang/String;)V

    .line 11
    return-object v0
.end method

.method private static final b(C)C
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x41

    .line 3
    .line 4
    if-gt v0, p0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x5b

    .line 7
    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0x20

    .line 11
    int-to-char p0, p0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    if-ltz p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x80

    .line 17
    .line 18
    if-ge p0, v0, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 23
    move-result p0

    .line 24
    :goto_0
    return p0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, -0x1

    .line 13
    .line 14
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-static {v4}, Lio/ktor/util/y;->b(C)C

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eq v5, v4, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v3

    .line 30
    .line 31
    :goto_1
    if-ne v2, v3, :cond_2

    .line 32
    return-object p0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result v0

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    if-gt v2, v0, :cond_3

    .line 51
    .line 52
    .line 53
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lio/ktor/util/y;->b(C)C

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    if-eq v2, v0, :cond_3

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_2

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-object p0
.end method
