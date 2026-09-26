.class final Lorg/threeten/bp/format/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Lorg/threeten/bp/format/c$g;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/c$g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/threeten/bp/format/c$g;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/threeten/bp/format/c$g;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/c$f;-><init>([Lorg/threeten/bp/format/c$g;Z)V

    return-void
.end method

.method constructor <init>([Lorg/threeten/bp/format/c$g;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/format/c$f;->printerParsers:[Lorg/threeten/bp/format/c$g;

    iput-boolean p2, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->h()V

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/c$f;->printerParsers:[Lorg/threeten/bp/format/c$g;

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    .line 18
    if-ge v3, v2, :cond_3

    .line 19
    .line 20
    aget-object v5, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v5, p1, p2}, Lorg/threeten/bp/format/c$g;->a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z

    .line 24
    move-result v5

    .line 25
    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    iget-boolean p2, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->b()V

    .line 37
    :cond_1
    return v4

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    iget-boolean p2, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->b()V

    .line 50
    :cond_4
    return v4

    .line 51
    .line 52
    :goto_1
    iget-boolean v0, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->b()V

    .line 58
    :cond_5
    throw p2
.end method

.method public b(Z)Lorg/threeten/bp/format/c$f;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/c$f;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/threeten/bp/format/c$f;->printerParsers:[Lorg/threeten/bp/format/c$g;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/format/c$f;-><init>([Lorg/threeten/bp/format/c$g;Z)V

    .line 13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lorg/threeten/bp/format/c$f;->printerParsers:[Lorg/threeten/bp/format/c$g;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "["

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-string v1, "("

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/format/c$f;->printerParsers:[Lorg/threeten/bp/format/c$g;

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    :goto_1
    if-ge v3, v2, :cond_1

    .line 28
    .line 29
    aget-object v4, v1, v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-boolean v1, p0, Lorg/threeten/bp/format/c$f;->optional:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string v1, "]"

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_2
    const-string v1, ")"

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
