.class public Lcom/squareup/picasso/StatsSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final averageDownloadSize:J

.field public final averageOriginalBitmapSize:J

.field public final averageTransformedBitmapSize:J

.field public final cacheHits:J

.field public final cacheMisses:J

.field public final downloadCount:I

.field public final maxSize:I

.field public final originalBitmapCount:I

.field public final size:I

.field public final timeStamp:J

.field public final totalDownloadSize:J

.field public final totalOriginalBitmapSize:J

.field public final totalTransformedBitmapSize:J

.field public final transformedBitmapCount:I


# direct methods
.method public constructor <init>(IIJJJJJJJJIIIJ)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    move v1, p2

    iput v1, v0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    move-wide v1, p3

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    move/from16 v1, p19

    iput v1, v0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    move/from16 v1, p20

    iput v1, v0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    move/from16 v1, p21

    iput v1, v0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/squareup/picasso/StatsSnapshot;->timeStamp:J

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "Picasso"

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "===============BEGIN PICASSO STATS ==============="

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Memory Cache Stats"

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Max Cache Size: "

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Cache Size: "

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Cache % Full: "

    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    int-to-float v0, v0

    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Cache Hits: "

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  Cache Misses: "

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "Network Stats"

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Download Count: "

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Total Download Size: "

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  Average Download Size: "

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "Bitmap Stats"

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Total Bitmaps Decoded: "

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Total Bitmap Size: "

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  Total Transformed Bitmaps: "

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  Total Transformed Bitmap Size: "

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  Average Bitmap Size: "

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  Average Transformed Bitmap Size: "

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "===============END PICASSO STATS ==============="

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "StatsSnapshot{maxSize="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->maxSize:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", size="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->size:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", cacheHits="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheHits:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", cacheMisses="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->cacheMisses:J

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", downloadCount="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->downloadCount:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, ", totalDownloadSize="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->totalDownloadSize:J

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, ", averageDownloadSize="

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->averageDownloadSize:J

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, ", totalOriginalBitmapSize="

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->totalOriginalBitmapSize:J

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, ", totalTransformedBitmapSize="

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->totalTransformedBitmapSize:J

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, ", averageOriginalBitmapSize="

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->averageOriginalBitmapSize:J

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, ", averageTransformedBitmapSize="

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->averageTransformedBitmapSize:J

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, ", originalBitmapCount="

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->originalBitmapCount:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, ", transformedBitmapCount="

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget v1, p0, Lcom/squareup/picasso/StatsSnapshot;->transformedBitmapCount:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, ", timeStamp="

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget-wide v1, p0, Lcom/squareup/picasso/StatsSnapshot;->timeStamp:J

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const/16 v1, 0x7d

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    return-object v0
.end method
