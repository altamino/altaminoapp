.class public final Lorg/schabi/newpipe/extractor/utils/jsextractor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    move-result p1

    .line 11
    add-int/2addr v0, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->b()Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 29
    .line 30
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/b;->g()Z

    .line 40
    move-result v4

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    iget p1, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/b$h;->end:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 52
    .line 53
    if-eq v3, v2, :cond_2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    new-instance p0, Laa/h;

    .line 57
    .line 58
    const-string p1, "Could not find matching braces"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    .line 64
    :cond_3
    new-instance p0, Laa/h;

    .line 65
    .line 66
    const-string p1, "Start not found"

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
.end method
