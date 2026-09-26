.class public final Lcom/google/android/exoplayer2/upstream/i;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "SourceFile"


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private bytesRemaining:I

.field private data:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private readPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    .line 5
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->f(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "data"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v4, "Unsupported scheme: "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, ","

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->H0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    array-length v2, v1

    .line 49
    const/4 v3, 0x2

    .line 50
    const/4 v4, 0x0

    .line 51
    .line 52
    if-ne v2, v3, :cond_4

    .line 53
    const/4 v0, 0x1

    .line 54
    .line 55
    aget-object v0, v1, v0

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    aget-object v1, v1, v2

    .line 59
    .line 60
    const-string v3, ";base64"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    const-string v2, "Error while parsing Base64 encoded string: "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/v2;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 95
    move-result-object p1

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_0
    sget-object v1, Lcom/google/common/base/e;->US_ASCII:Ljava/nio/charset/Charset;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->h0(Ljava/lang/String;)[B

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 113
    .line 114
    :goto_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 117
    array-length v3, v2

    .line 118
    int-to-long v5, v3

    .line 119
    .line 120
    cmp-long v3, v0, v5

    .line 121
    .line 122
    if-gtz v3, :cond_3

    .line 123
    long-to-int v0, v0

    .line 124
    .line 125
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/i;->readPosition:I

    .line 126
    array-length v1, v2

    .line 127
    sub-int/2addr v1, v0

    .line 128
    .line 129
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 130
    .line 131
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 132
    .line 133
    const-wide/16 v4, -0x1

    .line 134
    .line 135
    cmp-long v0, v2, v4

    .line 136
    .line 137
    if-eqz v0, :cond_1

    .line 138
    int-to-long v0, v1

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 142
    move-result-wide v0

    .line 143
    long-to-int v0, v0

    .line 144
    .line 145
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 146
    .line 147
    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->g(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 149
    .line 150
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 151
    .line 152
    cmp-long p1, v0, v4

    .line 153
    .line 154
    if-eqz p1, :cond_2

    .line 155
    goto :goto_1

    .line 156
    .line 157
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 158
    int-to-long v0, p1

    .line 159
    :goto_1
    return-wide v0

    .line 160
    .line 161
    :cond_3
    iput-object v4, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 162
    .line 163
    new-instance p1, Lcom/google/android/exoplayer2/upstream/l;

    .line 164
    .line 165
    const/16 v0, 0x7d8

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/l;-><init>(I)V

    .line 169
    throw p1

    .line 170
    .line 171
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    const-string v1, "Unexpected URI format: "

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/v2;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 190
    move-result-object p1

    .line 191
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/i;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 13
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 2

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    move-result p3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->data:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/i;->readPosition:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/i;->readPosition:I

    .line 28
    add-int/2addr p1, p3

    .line 29
    .line 30
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/i;->readPosition:I

    .line 31
    .line 32
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 33
    sub-int/2addr p1, p3

    .line 34
    .line 35
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/i;->bytesRemaining:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/f;->d(I)V

    .line 39
    return p3
.end method
