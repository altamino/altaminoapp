.class public final Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# instance fields
.field private final lengthAfterCursor:I

.field private final lengthBeforeCursor:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    if-ltz p2, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, " and "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p1, " respectively."

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p2
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 7
    .param p1    # Landroidx/compose/ui/text/input/EditingBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    add-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 18
    move-result v5

    .line 19
    .line 20
    if-le v5, v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 24
    move-result v5

    .line 25
    sub-int/2addr v5, v4

    .line 26
    .line 27
    add-int/lit8 v5, v5, -0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->c(I)C

    .line 31
    move-result v5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 35
    move-result v6

    .line 36
    sub-int/2addr v6, v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v6}, Landroidx/compose/ui/text/input/EditingBuffer;->c(I)C

    .line 40
    move-result v6

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v6}, Landroidx/compose/ui/text/input/EditCommandKt;->a(CC)Z

    .line 44
    move-result v5

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x2

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v3, v4

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 54
    move-result v4

    .line 55
    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 62
    move v2, v1

    .line 63
    .line 64
    :goto_2
    if-ge v1, v0, :cond_3

    .line 65
    .line 66
    add-int/lit8 v4, v2, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 70
    move-result v5

    .line 71
    add-int/2addr v5, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->h()I

    .line 75
    move-result v6

    .line 76
    .line 77
    if-ge v5, v6, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 81
    move-result v5

    .line 82
    add-int/2addr v5, v4

    .line 83
    .line 84
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->c(I)C

    .line 88
    move-result v5

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 92
    move-result v6

    .line 93
    add-int/2addr v6, v4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v6}, Landroidx/compose/ui/text/input/EditingBuffer;->c(I)C

    .line 97
    move-result v6

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v6}, Landroidx/compose/ui/text/input/EditCommandKt;->a(CC)Z

    .line 101
    move-result v5

    .line 102
    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    add-int/lit8 v2, v2, 0x2

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    move v2, v4

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 111
    move-result v4

    .line 112
    add-int/2addr v4, v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->h()I

    .line 116
    move-result v5

    .line 117
    .line 118
    if-eq v4, v5, :cond_3

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    goto :goto_2

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 125
    move-result v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 129
    move-result v1

    .line 130
    add-int/2addr v1, v2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->b(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 137
    move-result v0

    .line 138
    sub-int/2addr v0, v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->b(II)V

    .line 146
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 15
    .line 16
    iget v3, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 22
    .line 23
    iget p1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 24
    .line 25
    if-eq v1, p1, :cond_3

    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", lengthAfterCursor="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const/16 v1, 0x29

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
