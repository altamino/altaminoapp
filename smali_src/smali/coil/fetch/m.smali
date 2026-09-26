.class public final Lcoil/fetch/m;
.super Lcoil/fetch/h;
.source "SourceFile"


# instance fields
.field private final dataSource:Lcoil/decode/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mimeType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final source:Lcoil/decode/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V
    .locals 1
    .param p1    # Lcoil/decode/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcoil/decode/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcoil/fetch/h;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput-object p1, p0, Lcoil/fetch/m;->source:Lcoil/decode/p;

    .line 7
    .line 8
    iput-object p2, p0, Lcoil/fetch/m;->mimeType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcoil/fetch/m;->dataSource:Lcoil/decode/f;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcoil/decode/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/fetch/m;->dataSource:Lcoil/decode/f;

    return-object v0
.end method

.method public final b()Lcoil/decode/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/fetch/m;->source:Lcoil/decode/p;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    instance-of v1, p1, Lcoil/fetch/m;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/fetch/m;->source:Lcoil/decode/p;

    .line 11
    .line 12
    check-cast p1, Lcoil/fetch/m;

    .line 13
    .line 14
    iget-object v2, p1, Lcoil/fetch/m;->source:Lcoil/decode/p;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcoil/fetch/m;->mimeType:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p1, Lcoil/fetch/m;->mimeType:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcoil/fetch/m;->dataSource:Lcoil/decode/f;

    .line 33
    .line 34
    iget-object p1, p1, Lcoil/fetch/m;->dataSource:Lcoil/decode/f;

    .line 35
    .line 36
    if-ne v1, p1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/fetch/m;->source:Lcoil/decode/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/fetch/m;->mimeType:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcoil/fetch/m;->dataSource:Lcoil/decode/f;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method
