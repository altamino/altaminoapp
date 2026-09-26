.class final Lorg/threeten/bp/zone/f$a;
.super Lorg/threeten/bp/zone/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7934694b7c9bb149L


# instance fields
.field private final offset:Lorg/threeten/bp/s;


# direct methods
.method constructor <init>(Lorg/threeten/bp/s;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/zone/f;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    return-object p1
.end method

.method public b(Lorg/threeten/bp/h;)Lorg/threeten/bp/zone/d;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lorg/threeten/bp/h;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/h;",
            ")",
            "Ljava/util/List<",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public e(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
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
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/zone/f$a;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 11
    .line 12
    check-cast p1, Lorg/threeten/bp/zone/f$a;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_1
    instance-of v1, p1, Lorg/threeten/bp/zone/b;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    check-cast p1, Lorg/threeten/bp/zone/b;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/threeten/bp/zone/b;->d()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 35
    .line 36
    sget-object v3, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lorg/threeten/bp/zone/b;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/s;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1f

    .line 17
    xor-int/2addr v0, v1

    .line 18
    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "FixedRules:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/threeten/bp/zone/f$a;->offset:Lorg/threeten/bp/s;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
