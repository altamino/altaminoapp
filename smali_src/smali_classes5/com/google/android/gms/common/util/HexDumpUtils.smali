.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .locals 10
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_e

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    if-ltz p1, :cond_e

    .line 8
    .line 9
    if-lez p2, :cond_e

    .line 10
    .line 11
    add-int v1, p1, p2

    .line 12
    .line 13
    if-le v1, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x4b

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const/16 v0, 0x39

    .line 23
    .line 24
    :goto_0
    add-int/lit8 v1, p2, 0xf

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const/16 v3, 0x10

    .line 29
    div-int/2addr v1, v3

    .line 30
    mul-int/2addr v0, v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    const/4 v0, 0x0

    .line 35
    move v1, p2

    .line 36
    move v4, v0

    .line 37
    move v5, v4

    .line 38
    .line 39
    :goto_1
    if-lez v1, :cond_d

    .line 40
    .line 41
    const/16 v6, 0x8

    .line 42
    const/4 v7, 0x1

    .line 43
    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    const/high16 v5, 0x10000

    .line 47
    .line 48
    if-ge p2, v5, :cond_2

    .line 49
    .line 50
    new-array v5, v7, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v8

    .line 55
    .line 56
    aput-object v8, v5, v0

    .line 57
    .line 58
    const-string v8, "%04X:"

    .line 59
    .line 60
    .line 61
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_2
    new-array v5, v7, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v8

    .line 73
    .line 74
    aput-object v8, v5, v0

    .line 75
    .line 76
    const-string v8, "%08X:"

    .line 77
    .line 78
    .line 79
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_2
    move v5, p1

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_3
    if-ne v4, v6, :cond_4

    .line 88
    .line 89
    const-string v8, " -"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    :cond_4
    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    .line 95
    .line 96
    aget-byte v8, p0, p1

    .line 97
    .line 98
    and-int/lit16 v8, v8, 0xff

    .line 99
    .line 100
    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v8

    .line 103
    .line 104
    aput-object v8, v7, v0

    .line 105
    .line 106
    const-string v8, " %02X"

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    if-eqz p3, :cond_a

    .line 120
    .line 121
    if-eq v4, v3, :cond_5

    .line 122
    .line 123
    if-nez v1, :cond_a

    .line 124
    .line 125
    :cond_5
    rsub-int/lit8 v7, v4, 0x10

    .line 126
    .line 127
    if-lez v7, :cond_6

    .line 128
    move v8, v0

    .line 129
    .line 130
    :goto_4
    if-ge v8, v7, :cond_6

    .line 131
    .line 132
    const-string v9, "   "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    add-int/lit8 v8, v8, 0x1

    .line 138
    goto :goto_4

    .line 139
    .line 140
    :cond_6
    const-string v8, "  "

    .line 141
    .line 142
    if-lt v7, v6, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move v6, v0

    .line 150
    .line 151
    :goto_5
    if-ge v6, v4, :cond_a

    .line 152
    .line 153
    add-int v7, v5, v6

    .line 154
    .line 155
    aget-byte v7, p0, v7

    .line 156
    int-to-char v7, v7

    .line 157
    .line 158
    const/16 v8, 0x20

    .line 159
    .line 160
    const/16 v9, 0x2e

    .line 161
    .line 162
    if-lt v7, v8, :cond_8

    .line 163
    .line 164
    const/16 v8, 0x7e

    .line 165
    .line 166
    if-le v7, v8, :cond_9

    .line 167
    :cond_8
    move v7, v9

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    goto :goto_5

    .line 174
    .line 175
    :cond_a
    if-eq v4, v3, :cond_b

    .line 176
    .line 177
    if-nez v1, :cond_c

    .line 178
    .line 179
    :cond_b
    const/16 v4, 0xa

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    move v4, v0

    .line 184
    .line 185
    :cond_c
    add-int/lit8 p1, p1, 0x1

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :cond_e
    :goto_6
    const/4 p0, 0x0

    .line 194
    return-object p0
.end method
