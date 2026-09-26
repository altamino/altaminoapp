.class final Lcom/google/zxing/datamatrix/encoder/m;
.super Lcom/google/zxing/datamatrix/encoder/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method c(CLjava/lang/StringBuilder;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    const/16 v2, 0x30

    .line 13
    .line 14
    if-lt p1, v2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x39

    .line 17
    .line 18
    if-gt p1, v2, :cond_1

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x2c

    .line 21
    int-to-char p1, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    return v0

    .line 26
    .line 27
    :cond_1
    const/16 v2, 0x61

    .line 28
    .line 29
    if-lt p1, v2, :cond_2

    .line 30
    .line 31
    const/16 v2, 0x7a

    .line 32
    .line 33
    if-gt p1, v2, :cond_2

    .line 34
    .line 35
    add-int/lit8 p1, p1, -0x53

    .line 36
    int-to-char p1, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    return v0

    .line 41
    :cond_2
    const/4 v2, 0x2

    .line 42
    .line 43
    if-ge p1, v1, :cond_3

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    return v2

    .line 52
    .line 53
    :cond_3
    const/16 v1, 0x21

    .line 54
    .line 55
    if-lt p1, v1, :cond_4

    .line 56
    .line 57
    const/16 v3, 0x2f

    .line 58
    .line 59
    if-gt p1, v3, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    sub-int/2addr p1, v1

    .line 64
    int-to-char p1, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    return v2

    .line 69
    .line 70
    :cond_4
    const/16 v1, 0x3a

    .line 71
    .line 72
    const/16 v3, 0x40

    .line 73
    .line 74
    if-lt p1, v1, :cond_5

    .line 75
    .line 76
    if-gt p1, v3, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x2b

    .line 82
    int-to-char p1, p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    return v2

    .line 87
    .line 88
    :cond_5
    const/16 v1, 0x5b

    .line 89
    .line 90
    if-lt p1, v1, :cond_6

    .line 91
    .line 92
    const/16 v1, 0x5f

    .line 93
    .line 94
    if-gt p1, v1, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    add-int/lit8 p1, p1, -0x45

    .line 100
    int-to-char p1, p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    return v2

    .line 105
    .line 106
    :cond_6
    const/16 v0, 0x60

    .line 107
    .line 108
    if-ne p1, v0, :cond_7

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    sub-int/2addr p1, v0

    .line 113
    int-to-char p1, p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    return v2

    .line 118
    .line 119
    :cond_7
    const/16 v1, 0x41

    .line 120
    .line 121
    if-lt p1, v1, :cond_8

    .line 122
    .line 123
    const/16 v1, 0x5a

    .line 124
    .line 125
    if-gt p1, v1, :cond_8

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    sub-int/2addr p1, v3

    .line 130
    int-to-char p1, p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    return v2

    .line 135
    .line 136
    :cond_8
    const/16 v1, 0x7b

    .line 137
    .line 138
    if-lt p1, v1, :cond_9

    .line 139
    .line 140
    const/16 v1, 0x7f

    .line 141
    .line 142
    if-gt p1, v1, :cond_9

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    sub-int/2addr p1, v0

    .line 147
    int-to-char p1, p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    return v2

    .line 152
    .line 153
    :cond_9
    const-string v0, "\u0001\u001e"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    add-int/lit8 p1, p1, -0x80

    .line 159
    int-to-char p1, p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/m;->c(CLjava/lang/StringBuilder;)I

    .line 163
    move-result p1

    .line 164
    add-int/2addr p1, v2

    .line 165
    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method
