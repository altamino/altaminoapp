.class public Lorg/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/d;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/a/a/a;->a:I

    .line 16
    iput p2, p0, Lorg/a/a/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/a/a/a;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/a/a/a;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    .line 46
    iget v0, p0, Lorg/a/a/a;->b:I

    iget v1, p0, Lorg/a/a/a;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 82
    instance-of v0, p1, Lorg/a/a/d;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 85
    :cond_0
    check-cast p1, Lorg/a/a/d;

    .line 86
    iget v0, p0, Lorg/a/a/a;->a:I

    invoke-interface {p1}, Lorg/a/a/d;->a()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 87
    :cond_1
    iget v0, p0, Lorg/a/a/a;->b:I

    invoke-interface {p1}, Lorg/a/a/d;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p1, Lorg/a/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    check-cast p1, Lorg/a/a/d;

    .line 71
    iget v0, p0, Lorg/a/a/a;->a:I

    invoke-interface {p1}, Lorg/a/a/d;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/a/a/a;->b:I

    .line 72
    invoke-interface {p1}, Lorg/a/a/d;->b()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 77
    iget v0, p0, Lorg/a/a/a;->a:I

    rem-int/lit8 v0, v0, 0x64

    iget v1, p0, Lorg/a/a/a;->b:I

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/a/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
