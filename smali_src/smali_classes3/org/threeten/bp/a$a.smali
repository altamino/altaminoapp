.class final Lorg/threeten/bp/a$a;
.super Lorg/threeten/bp/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final zone:Lorg/threeten/bp/r;


# direct methods
.method constructor <init>(Lorg/threeten/bp/r;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/a;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Lorg/threeten/bp/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    return-object v0
.end method

.method public b()Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/a$a;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/threeten/bp/f;->t(J)Lorg/threeten/bp/f;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    .line 7
    .line 8
    check-cast p1, Lorg/threeten/bp/a$a;

    .line 9
    .line 10
    iget-object p1, p1, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/threeten/bp/r;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/r;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
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
    const-string v1, "SystemClock["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/threeten/bp/a$a;->zone:Lorg/threeten/bp/r;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "]"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
