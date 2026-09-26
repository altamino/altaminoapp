.class public final Lcom/google/android/exoplayer2/source/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/l0;


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/r;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/r;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/r;

    .line 6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->extractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, -0x1

    .line 12
    :goto_0
    return-wide v0
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/f;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp3/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->i()V

    .line 12
    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/extractor/l;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/extractor/m;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/l;->c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/n;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/extractor/f;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p4

    .line 6
    move-wide v4, p6

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/f;-><init>(Lcom/google/android/exoplayer2/upstream/h;JJ)V

    .line 10
    .line 11
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/c;->extractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/r;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/r;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/l;

    .line 22
    move-result-object p1

    .line 23
    array-length p3, p1

    .line 24
    const/4 p6, 0x0

    .line 25
    const/4 p7, 0x1

    .line 26
    .line 27
    if-ne p3, p7, :cond_1

    .line 28
    .line 29
    aget-object p1, p1, p6

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 32
    goto :goto_6

    .line 33
    :cond_1
    array-length p3, p1

    .line 34
    move v0, p6

    .line 35
    .line 36
    :goto_0
    if-ge v0, p3, :cond_7

    .line 37
    .line 38
    aget-object v1, p1, v0

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/l;->b(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 53
    goto :goto_5

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 63
    move-result-wide v1

    .line 64
    .line 65
    cmp-long v1, v1, p4

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v1, p6

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    move v1, p7

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 78
    goto :goto_4

    .line 79
    .line 80
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 81
    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 86
    move-result-wide p2

    .line 87
    .line 88
    cmp-long p2, p2, p4

    .line 89
    .line 90
    if-nez p2, :cond_6

    .line 91
    :cond_5
    move p6, p7

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 98
    throw p1

    .line 99
    .line 100
    :catch_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 106
    move-result-wide v1

    .line 107
    .line 108
    cmp-long v1, v1, p4

    .line 109
    .line 110
    if-nez v1, :cond_3

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_7
    :goto_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 117
    .line 118
    if-eqz p3, :cond_8

    .line 119
    .line 120
    :goto_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, p8}, Lcom/google/android/exoplayer2/extractor/l;->d(Lcom/google/android/exoplayer2/extractor/n;)V

    .line 124
    return-void

    .line 125
    .line 126
    :cond_8
    new-instance p3, Lcom/google/android/exoplayer2/source/i1;

    .line 127
    .line 128
    new-instance p4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string p5, "None of the available extractors ("

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->G([Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string p1, ") could read the stream."

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    check-cast p2, Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/source/i1;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    throw p3
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/l;->release()V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/c;->extractorInput:Lcom/google/android/exoplayer2/extractor/m;

    .line 13
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->extractor:Lcom/google/android/exoplayer2/extractor/l;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/extractor/l;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/l;->seek(JJ)V

    .line 12
    return-void
.end method
