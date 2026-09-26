.class public final Lkotlinx/serialization/json/internal/v0;
.super Lkotlinx/serialization/json/internal/a;
.source "SourceFile"


# instance fields
.field private final source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/json/internal/v0;->source:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic C()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public G(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method public I()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v1

    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x9

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 46
    return v0
.end method

.method public L()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->I()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v1, -0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v0

    .line 28
    .line 29
    const/16 v1, 0x2c

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 34
    const/4 v1, 0x1

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 38
    return v1

    .line 39
    :cond_1
    :goto_0
    return v2
.end method

.method protected P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/v0;->source:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return v2

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ge v0, v1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v1

    .line 26
    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    if-eq v1, v3, :cond_2

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0xd

    .line 36
    .line 37
    if-eq v1, v3, :cond_2

    .line 38
    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->D(C)Z

    .line 48
    move-result v0

    .line 49
    return v0

    .line 50
    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 55
    return v2
.end method

.method public k()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/v0;->o(C)V

    .line 6
    .line 7
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    move v3, v0

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    move v2, v0

    .line 26
    .line 27
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v3

    .line 36
    .line 37
    const/16 v4, 0x5c

    .line 38
    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/a;->r(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 56
    .line 57
    iput v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-object v0

    .line 72
    :cond_2
    const/4 v0, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    .line 76
    .line 77
    new-instance v0, Lw7/i;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 81
    throw v0
.end method

.method public l(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "keyToMatch"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->m()B

    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v2, 0x6

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 18
    return-object v3

    .line 19
    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->k()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->m()B

    .line 41
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    const/4 v1, 0x5

    .line 43
    .line 44
    if-eq p1, v1, :cond_2

    .line 45
    .line 46
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 47
    return-object v3

    .line 48
    .line 49
    :cond_2
    if-eqz p2, :cond_3

    .line 50
    .line 51
    .line 52
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    .line 58
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 61
    return-object p1

    .line 62
    .line 63
    :cond_4
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 64
    return-object v3

    .line 65
    .line 66
    :goto_2
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 67
    throw p1
.end method

.method public m()B
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x3

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    const/16 v0, 0xa

    .line 36
    return v0
.end method

.method public o(C)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/v0;->P()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge v1, v2, :cond_4

    .line 21
    .line 22
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    iput v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v1

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0x9

    .line 45
    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    if-ne v1, p1, :cond_3

    .line 50
    return-void

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 58
    return-void
.end method
