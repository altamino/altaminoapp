.class public final Lx9/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static downloader:Lz9/a;

.field private static preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

.field private static preferredLocalization:Lorg/schabi/newpipe/extractor/localization/i;


# direct methods
.method public static a()Lz9/a;
    .locals 1

    .line 1
    sget-object v0, Lx9/p;->downloader:Lz9/a;

    return-object v0
.end method

.method public static b()Lorg/schabi/newpipe/extractor/localization/a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lx9/p;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/a;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/a;

    .line 7
    :cond_0
    return-object v0
.end method

.method public static c()Lorg/schabi/newpipe/extractor/localization/i;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lx9/p;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/i;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 7
    :cond_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lx9/s;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lx9/r;->a()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lx9/s;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lx9/s;->c(Ljava/lang/String;)Lx9/s$a;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    sget-object v3, Lx9/s$a;->NONE:Lx9/s$a;

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    return-object v1

    .line 30
    .line 31
    :cond_1
    new-instance v0, Laa/d;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "No service can handle the url = \""

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p0, "\""

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method public static e(Lz9/a;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lx9/p;->f(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;)V

    .line 6
    return-void
.end method

.method public static f(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/a;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/a;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/a;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {p0, p1, v0}, Lx9/p;->g(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)V

    .line 26
    return-void
.end method

.method public static g(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)V
    .locals 0

    .line 1
    sput-object p0, Lx9/p;->downloader:Lz9/a;

    sput-object p1, Lx9/p;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/i;

    sput-object p2, Lx9/p;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/a;

    return-void
.end method
