.class final Lh5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final coefficients:[I

.field private final field:Lh5/a;


# direct methods
.method constructor <init>(Lh5/a;[I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v0, p2

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iput-object p1, p0, Lh5/b;->field:Lh5/a;

    .line 9
    array-length p1, p2

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-le p1, v0, :cond_2

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    aget v2, p2, v1

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    :goto_0
    if-ge v0, p1, :cond_0

    .line 20
    .line 21
    aget v2, p2, v0

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    if-ne v0, p1, :cond_1

    .line 29
    .line 30
    .line 31
    filled-new-array {v1}, [I

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lh5/b;->coefficients:[I

    .line 35
    return-void

    .line 36
    :cond_1
    sub-int/2addr p1, v0

    .line 37
    .line 38
    new-array p1, p1, [I

    .line 39
    .line 40
    iput-object p1, p0, Lh5/b;->coefficients:[I

    .line 41
    array-length v2, p1

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_2
    iput-object p2, p0, Lh5/b;->coefficients:[I

    .line 48
    return-void

    .line 49
    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 54
    throw p1
.end method


# virtual methods
.method a(Lh5/b;)Lh5/b;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 3
    .line 4
    iget-object v1, p1, Lh5/b;->field:Lh5/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lh5/b;->f()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lh5/b;->f()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 27
    .line 28
    iget-object p1, p1, Lh5/b;->coefficients:[I

    .line 29
    array-length v1, v0

    .line 30
    array-length v2, p1

    .line 31
    .line 32
    if-le v1, v2, :cond_2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v6, v0

    .line 35
    move-object v0, p1

    .line 36
    move-object p1, v6

    .line 37
    :goto_0
    array-length v1, v0

    .line 38
    .line 39
    new-array v1, v1, [I

    .line 40
    array-length v2, v0

    .line 41
    array-length v3, p1

    .line 42
    sub-int/2addr v2, v3

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move v3, v2

    .line 48
    :goto_1
    array-length v4, v0

    .line 49
    .line 50
    if-ge v3, v4, :cond_3

    .line 51
    .line 52
    sub-int v4, v3, v2

    .line 53
    .line 54
    aget v4, p1, v4

    .line 55
    .line 56
    aget v5, v0, v3

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v5}, Lh5/a;->a(II)I

    .line 60
    move-result v4

    .line 61
    .line 62
    aput v4, v1, v3

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    new-instance p1, Lh5/b;

    .line 68
    .line 69
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0, v1}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 73
    return-object p1

    .line 74
    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1
.end method

.method b(Lh5/b;)[Lh5/b;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 3
    .line 4
    iget-object v1, p1, Lh5/b;->field:Lh5/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lh5/b;->f()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lh5/a;->e()Lh5/b;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lh5/b;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lh5/b;->c(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iget-object v2, p0, Lh5/b;->field:Lh5/a;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lh5/a;->f(I)I

    .line 36
    move-result v1

    .line 37
    move-object v2, p0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v2}, Lh5/b;->e()I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lh5/b;->e()I

    .line 45
    move-result v4

    .line 46
    .line 47
    if-lt v3, v4, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lh5/b;->f()Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lh5/b;->e()I

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lh5/b;->e()I

    .line 61
    move-result v4

    .line 62
    sub-int/2addr v3, v4

    .line 63
    .line 64
    iget-object v4, p0, Lh5/b;->field:Lh5/a;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lh5/b;->e()I

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5}, Lh5/b;->c(I)I

    .line 72
    move-result v5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5, v1}, Lh5/a;->h(II)I

    .line 76
    move-result v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3, v4}, Lh5/b;->h(II)Lh5/b;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    iget-object v6, p0, Lh5/b;->field:Lh5/a;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v3, v4}, Lh5/a;->b(II)Lh5/b;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Lh5/b;->a(Lh5/b;)Lh5/b;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v5}, Lh5/b;->a(Lh5/b;)Lh5/b;

    .line 94
    move-result-object v2

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 p1, 0x2

    .line 97
    .line 98
    new-array p1, p1, [Lh5/b;

    .line 99
    const/4 v1, 0x0

    .line 100
    .line 101
    aput-object v0, p1, v1

    .line 102
    const/4 v0, 0x1

    .line 103
    .line 104
    aput-object v2, p1, v0

    .line 105
    return-object p1

    .line 106
    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v0, "Divide by 0"

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p1

    .line 114
    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1
.end method

.method c(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    sub-int/2addr v1, p1

    .line 7
    .line 8
    aget p1, v0, v1

    .line 9
    return p1
.end method

.method d()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/b;->coefficients:[I

    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    return v0
.end method

.method f()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    return v1
.end method

.method g(Lh5/b;)Lh5/b;
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 3
    .line 4
    iget-object v1, p1, Lh5/b;->field:Lh5/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lh5/b;->f()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lh5/b;->f()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 26
    array-length v1, v0

    .line 27
    .line 28
    iget-object p1, p1, Lh5/b;->coefficients:[I

    .line 29
    array-length v2, p1

    .line 30
    .line 31
    add-int v3, v1, v2

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    new-array v3, v3, [I

    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    .line 39
    :goto_0
    if-ge v5, v1, :cond_2

    .line 40
    .line 41
    aget v6, v0, v5

    .line 42
    move v7, v4

    .line 43
    .line 44
    :goto_1
    if-ge v7, v2, :cond_1

    .line 45
    .line 46
    add-int v8, v5, v7

    .line 47
    .line 48
    aget v9, v3, v8

    .line 49
    .line 50
    iget-object v10, p0, Lh5/b;->field:Lh5/a;

    .line 51
    .line 52
    aget v11, p1, v7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v6, v11}, Lh5/a;->h(II)I

    .line 56
    move-result v10

    .line 57
    .line 58
    .line 59
    invoke-static {v9, v10}, Lh5/a;->a(II)I

    .line 60
    move-result v9

    .line 61
    .line 62
    aput v9, v3, v8

    .line 63
    .line 64
    add-int/lit8 v7, v7, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    new-instance p1, Lh5/b;

    .line 71
    .line 72
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0, v3}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_3
    :goto_2
    iget-object p1, p0, Lh5/b;->field:Lh5/a;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lh5/a;->e()Lh5/b;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method h(II)Lh5/b;
    .locals 4

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lh5/b;->field:Lh5/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lh5/a;->e()Lh5/b;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lh5/b;->coefficients:[I

    .line 14
    array-length v0, v0

    .line 15
    add-int/2addr p1, v0

    .line 16
    .line 17
    new-array p1, p1, [I

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lh5/b;->field:Lh5/a;

    .line 23
    .line 24
    iget-object v3, p0, Lh5/b;->coefficients:[I

    .line 25
    .line 26
    aget v3, v3, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, p2}, Lh5/a;->h(II)I

    .line 30
    move-result v2

    .line 31
    .line 32
    aput v2, p1, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    new-instance p2, Lh5/b;

    .line 38
    .line 39
    iget-object v0, p0, Lh5/b;->field:Lh5/a;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0, p1}, Lh5/b;-><init>(Lh5/a;[I)V

    .line 43
    return-object p2

    .line 44
    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 49
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lh5/b;->e()I

    .line 6
    move-result v1

    .line 7
    .line 8
    mul-int/lit8 v1, v1, 0x8

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lh5/b;->e()I

    .line 15
    move-result v1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lh5/b;->c(I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    .line 27
    const-string v3, " - "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    neg-int v2, v2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 36
    move-result v3

    .line 37
    .line 38
    if-lez v3, :cond_1

    .line 39
    .line 40
    const-string v3, " + "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    if-eq v2, v3, :cond_5

    .line 49
    .line 50
    :cond_2
    iget-object v4, p0, Lh5/b;->field:Lh5/a;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Lh5/a;->g(I)I

    .line 54
    move-result v2

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    const/16 v2, 0x31

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_3
    if-ne v2, v3, :cond_4

    .line 65
    .line 66
    const/16 v2, 0x61

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_4
    const-string v4, "a^"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 81
    .line 82
    if-ne v1, v3, :cond_6

    .line 83
    .line 84
    const/16 v2, 0x78

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_3

    .line 89
    .line 90
    :cond_6
    const-string v2, "x^"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method
