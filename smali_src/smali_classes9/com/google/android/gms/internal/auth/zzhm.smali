.class final Lcom/google/android/gms/internal/auth/zzhm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzhk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->zzu()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->zzv()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/google/android/gms/internal/auth/zzdr;->zza:I

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhl;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhl;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    .line 22
    return-void
.end method

.method static bridge synthetic zza([BII)I
    .locals 6

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    sub-int/2addr p2, p1

    .line 6
    .line 7
    const/16 v1, -0xc

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    if-eqz p2, :cond_5

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    const/16 v4, -0x41

    .line 14
    .line 15
    if-eq p2, v3, :cond_3

    .line 16
    const/4 v5, 0x2

    .line 17
    .line 18
    if-ne p2, v5, :cond_2

    .line 19
    .line 20
    aget-byte p2, p0, p1

    .line 21
    add-int/2addr p1, v3

    .line 22
    .line 23
    aget-byte p0, p0, p1

    .line 24
    .line 25
    if-gt v0, v1, :cond_0

    .line 26
    .line 27
    if-gt p2, v4, :cond_0

    .line 28
    .line 29
    if-le p0, v4, :cond_1

    .line 30
    :cond_0
    :goto_0
    move v0, v2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    shl-int/lit8 p1, p2, 0x8

    .line 34
    xor-int/2addr p1, v0

    .line 35
    .line 36
    shl-int/lit8 p0, p0, 0x10

    .line 37
    .line 38
    xor-int v0, p1, p0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 45
    throw p0

    .line 46
    .line 47
    :cond_3
    aget-byte p0, p0, p1

    .line 48
    .line 49
    if-gt v0, v1, :cond_0

    .line 50
    .line 51
    if-le p0, v4, :cond_4

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_4
    shl-int/lit8 p0, p0, 0x8

    .line 55
    xor-int/2addr v0, p0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_5
    if-le v0, v1, :cond_6

    .line 59
    goto :goto_0

    .line 60
    :cond_6
    :goto_1
    return v0
.end method

.method static zzb([BII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzfa;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    or-int v1, p1, p2

    .line 4
    .line 5
    sub-int v2, v0, p1

    .line 6
    sub-int/2addr v2, p2

    .line 7
    or-int/2addr v1, v2

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-ltz v1, :cond_a

    .line 11
    .line 12
    add-int v0, p1, p2

    .line 13
    .line 14
    new-array p2, p2, [C

    .line 15
    move v1, v2

    .line 16
    .line 17
    :goto_0
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    aget-byte v3, p0, p1

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    add-int/lit8 v4, v1, 0x1

    .line 31
    int-to-char v3, v3

    .line 32
    .line 33
    aput-char v3, p2, v1

    .line 34
    move v1, v4

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    :goto_1
    if-ge p1, v0, :cond_9

    .line 38
    .line 39
    add-int/lit8 v3, p1, 0x1

    .line 40
    .line 41
    aget-byte v4, p0, p1

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    .line 45
    move-result v5

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    add-int/lit8 p1, v1, 0x1

    .line 50
    int-to-char v4, v4

    .line 51
    .line 52
    aput-char v4, p2, v1

    .line 53
    move v1, p1

    .line 54
    move p1, v3

    .line 55
    .line 56
    :goto_2
    if-ge p1, v0, :cond_1

    .line 57
    .line 58
    aget-byte v3, p0, p1

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(B)Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-nez v4, :cond_2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    add-int/lit8 v4, v1, 0x1

    .line 70
    int-to-char v3, v3

    .line 71
    .line 72
    aput-char v3, p2, v1

    .line 73
    move v1, v4

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    const/16 v5, -0x20

    .line 77
    .line 78
    if-ge v4, v5, :cond_5

    .line 79
    .line 80
    if-ge v3, v0, :cond_4

    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x2

    .line 83
    .line 84
    add-int/lit8 v5, v1, 0x1

    .line 85
    .line 86
    aget-byte v3, p0, v3

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v3, p2, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(BB[CI)V

    .line 90
    move v1, v5

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    .line 98
    :cond_5
    const/16 v5, -0x10

    .line 99
    .line 100
    if-ge v4, v5, :cond_7

    .line 101
    .line 102
    add-int/lit8 v5, v0, -0x1

    .line 103
    .line 104
    if-ge v3, v5, :cond_6

    .line 105
    .line 106
    add-int/lit8 v5, p1, 0x2

    .line 107
    .line 108
    add-int/lit8 p1, p1, 0x3

    .line 109
    .line 110
    add-int/lit8 v6, v1, 0x1

    .line 111
    .line 112
    aget-byte v3, p0, v3

    .line 113
    .line 114
    aget-byte v5, p0, v5

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v3, v5, p2, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(BBB[CI)V

    .line 118
    move v1, v6

    .line 119
    goto :goto_1

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    .line 123
    move-result-object p0

    .line 124
    throw p0

    .line 125
    .line 126
    :cond_7
    add-int/lit8 v5, v0, -0x2

    .line 127
    .line 128
    if-ge v3, v5, :cond_8

    .line 129
    .line 130
    add-int/lit8 v5, p1, 0x2

    .line 131
    .line 132
    add-int/lit8 v6, p1, 0x3

    .line 133
    .line 134
    add-int/lit8 p1, p1, 0x4

    .line 135
    .line 136
    aget-byte v7, p0, v3

    .line 137
    .line 138
    aget-byte v5, p0, v5

    .line 139
    .line 140
    aget-byte v6, p0, v6

    .line 141
    move v3, v4

    .line 142
    move v4, v7

    .line 143
    move-object v7, p2

    .line 144
    move v8, v1

    .line 145
    .line 146
    .line 147
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/auth/zzhj;->zza(BBBB[CI)V

    .line 148
    .line 149
    add-int/lit8 v1, v1, 0x2

    .line 150
    goto :goto_1

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfa;->zzb()Lcom/google/android/gms/internal/auth/zzfa;

    .line 154
    move-result-object p0

    .line 155
    throw p0

    .line 156
    .line 157
    :cond_9
    new-instance p0, Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p2, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 161
    return-object p0

    .line 162
    .line 163
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 164
    const/4 v1, 0x3

    .line 165
    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    aput-object v0, v1, v2

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object p1

    .line 177
    const/4 v0, 0x1

    .line 178
    .line 179
    aput-object p1, v1, v0

    .line 180
    .line 181
    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object p1

    .line 184
    const/4 p2, 0x2

    .line 185
    .line 186
    aput-object p1, v1, p2

    .line 187
    .line 188
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 196
    throw p0
.end method

.method static zzc([B)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/auth/zzhk;->zzb([BII)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static zzd([BII)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzhk;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhk;->zzb([BII)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
