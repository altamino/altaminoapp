.class public abstract Lx9/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/s$a;,
        Lx9/s$b;
    }
.end annotation


# instance fields
.field private final serviceId:I

.field private final serviceInfo:Lx9/s$b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lx9/s$b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lx9/s;->serviceId:I

    .line 6
    .line 7
    new-instance p1, Lx9/s$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2, p3}, Lx9/s$b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    .line 12
    iput-object p1, p0, Lx9/s;->serviceInfo:Lx9/s$b;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract a()Lorg/schabi/newpipe/extractor/linkhandler/d;
.end method

.method public b()Lorg/schabi/newpipe/extractor/localization/a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lx9/p;->b()Lorg/schabi/newpipe/extractor/localization/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/s;->j()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/a;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/a;

    .line 18
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lx9/s$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lqa/y;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/s;->i()Lorg/schabi/newpipe/extractor/linkhandler/b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lx9/s;->a()Lorg/schabi/newpipe/extractor/linkhandler/d;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lx9/s;->e()Lorg/schabi/newpipe/extractor/linkhandler/d;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/b;->a(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object p1, Lx9/s$a;->STREAM:Lx9/s$a;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/b;->a(Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object p1, Lx9/s$a;->CHANNEL:Lx9/s$a;

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_1
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/b;->a(Ljava/lang/String;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    sget-object p1, Lx9/s$a;->PLAYLIST:Lx9/s$a;

    .line 49
    return-object p1

    .line 50
    .line 51
    :cond_2
    sget-object p1, Lx9/s$a;->NONE:Lx9/s$a;

    .line 52
    return-object p1
.end method

.method public d()Lorg/schabi/newpipe/extractor/localization/i;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lx9/p;->c()Lorg/schabi/newpipe/extractor/localization/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lx9/s;->k()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lx9/s;->k()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lorg/schabi/newpipe/extractor/localization/i;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/i;->e()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/i;->e()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    return-object v2

    .line 51
    .line 52
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 53
    return-object v0
.end method

.method public abstract e()Lorg/schabi/newpipe/extractor/linkhandler/d;
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lx9/s;->serviceId:I

    return v0
.end method

.method public g(Ljava/lang/String;)Loa/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/s;->i()Lorg/schabi/newpipe/extractor/linkhandler/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/b;->c(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lx9/s;->h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public abstract h(Lorg/schabi/newpipe/extractor/linkhandler/a;)Loa/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation
.end method

.method public abstract i()Lorg/schabi/newpipe/extractor/linkhandler/b;
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/a;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/localization/g0;->b(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/i;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/i;->e()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/i;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/g0;->b(Lorg/schabi/newpipe/extractor/localization/i;)Lorg/schabi/newpipe/extractor/localization/f0;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "Localization is not supported (\""

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, "\")"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lx9/s;->serviceId:I

    .line 3
    .line 4
    iget-object v1, p0, Lx9/s;->serviceInfo:Lx9/s$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lx9/s$b;->a()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, ":"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
