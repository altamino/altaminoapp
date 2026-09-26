.class public final Lorg/schabi/newpipe/extractor/localization/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lorg/schabi/newpipe/extractor/localization/i;)Lpa/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->e()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lpa/c;->a(Ljava/lang/String;Ljava/lang/String;)Lpa/b;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static b(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/g0;->a(Lorg/schabi/newpipe/extractor/localization/i;)Lpa/b;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/f0;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/localization/f0;-><init>(Lpa/b;)V

    .line 14
    return-object v0
.end method
