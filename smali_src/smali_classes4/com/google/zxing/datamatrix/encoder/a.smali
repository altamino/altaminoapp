.class final Lcom/google/zxing/datamatrix/encoder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static b(CC)C
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/j;->f(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/j;->f(C)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    add-int/lit8 p0, p0, -0x30

    .line 15
    .line 16
    mul-int/lit8 p0, p0, 0xa

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x30

    .line 19
    add-int/2addr p0, p1

    .line 20
    .line 21
    add-int/lit16 p0, p0, 0x82

    .line 22
    int-to-char p0, p0

    .line 23
    return p0

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "not digits: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/encoder/h;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/j;->a(Ljava/lang/CharSequence;I)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 31
    add-int/2addr v4, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/a;->b(CC)C

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 43
    .line 44
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 45
    add-int/2addr v0, v2

    .line 46
    .line 47
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->c()C

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/h;->d()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    .line 62
    move-result v5

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v4, v5}, Lcom/google/zxing/datamatrix/encoder/j;->n(Ljava/lang/CharSequence;II)I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    .line 70
    move-result v4

    .line 71
    .line 72
    if-eq v3, v4, :cond_6

    .line 73
    .line 74
    if-eq v3, v1, :cond_5

    .line 75
    .line 76
    if-eq v3, v2, :cond_4

    .line 77
    const/4 v0, 0x3

    .line 78
    .line 79
    if-eq v3, v0, :cond_3

    .line 80
    const/4 v0, 0x4

    .line 81
    .line 82
    if-eq v3, v0, :cond_2

    .line 83
    const/4 v0, 0x5

    .line 84
    .line 85
    if-ne v3, v0, :cond_1

    .line 86
    .line 87
    const/16 v1, 0xe7

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    .line 94
    return-void

    .line 95
    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v0, "Illegal mode: "

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1

    .line 111
    .line 112
    :cond_2
    const/16 v1, 0xf0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    .line 119
    return-void

    .line 120
    .line 121
    :cond_3
    const/16 v1, 0xee

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    .line 128
    return-void

    .line 129
    .line 130
    :cond_4
    const/16 v0, 0xef

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    .line 137
    return-void

    .line 138
    .line 139
    :cond_5
    const/16 v0, 0xe6

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/h;->o(I)V

    .line 146
    return-void

    .line 147
    .line 148
    .line 149
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 150
    move-result v2

    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    const/16 v2, 0xeb

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 158
    .line 159
    add-int/lit8 v0, v0, -0x7f

    .line 160
    int-to-char v0, v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 164
    .line 165
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 166
    add-int/2addr v0, v1

    .line 167
    .line 168
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 169
    return-void

    .line 170
    :cond_7
    add-int/2addr v0, v1

    .line 171
    int-to-char v0, v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 175
    .line 176
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 177
    add-int/2addr v0, v1

    .line 178
    .line 179
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 180
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
