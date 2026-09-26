.class public final Lcom/google/android/exoplayer2/extractor/ts/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/q$a;
    }
.end annotation


# static fields
.field private static final AUD_NUT:I = 0x23

.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/e0;

.field private pesTimeUs:J

.field private final pps:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final prefixFlags:[Z

.field private final prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

.field private final seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

.field private final seiWrapper:Lcom/google/android/exoplayer2/util/c0;

.field private final sps:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private totalBytesWritten:J

.field private final vps:Lcom/google/android/exoplayer2/extractor/ts/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/d0;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    new-array p1, p1, [Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixFlags:[Z

    .line 11
    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 13
    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    const/16 v1, 0x80

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 22
    .line 23
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 24
    .line 25
    const/16 v0, 0x21

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 31
    .line 32
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 33
    .line 34
    const/16 v0, 0x22

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 42
    .line 43
    const/16 v0, 0x27

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 51
    .line 52
    const/16 v0, 0x28

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pesTimeUs:J

    .line 65
    .line 66
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 72
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private e(JIIJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/extractor/ts/q$a;->a(JIZ)V

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->formatId:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/q;->g(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ts/u;Lcom/google/android/exoplayer2/extractor/ts/u;Lcom/google/android/exoplayer2/extractor/ts/u;)Lcom/google/android/exoplayer2/a2;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 68
    const/4 p1, 0x1

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 71
    .line 72
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 76
    move-result p1

    .line 77
    const/4 p2, 0x5

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 82
    .line 83
    iget-object p3, p1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 84
    .line 85
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 86
    .line 87
    .line 88
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/y;->q([BI)I

    .line 89
    move-result p1

    .line 90
    .line 91
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/c0;->N([BI)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 106
    .line 107
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p5, p6, p3}, Lcom/google/android/exoplayer2/extractor/ts/d0;->a(JLcom/google/android/exoplayer2/util/c0;)V

    .line 111
    .line 112
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 121
    .line 122
    iget-object p3, p1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 123
    .line 124
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 125
    .line 126
    .line 127
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/y;->q([BI)I

    .line 128
    move-result p1

    .line 129
    .line 130
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 131
    .line 132
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 133
    .line 134
    iget-object p4, p4, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p4, p1}, Lcom/google/android/exoplayer2/util/c0;->N([BI)V

    .line 138
    .line 139
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 143
    .line 144
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 145
    .line 146
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiWrapper:Lcom/google/android/exoplayer2/util/c0;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p5, p6, p2}, Lcom/google/android/exoplayer2/extractor/ts/d0;->a(JLcom/google/android/exoplayer2/util/c0;)V

    .line 150
    :cond_2
    return-void
.end method

.method private f([BII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/q$a;->e([BII)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 35
    return-void
.end method

.method private static g(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ts/u;Lcom/google/android/exoplayer2/extractor/ts/u;Lcom/google/android/exoplayer2/extractor/ts/u;)Lcom/google/android/exoplayer2/a2;
    .locals 21
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 9
    .line 10
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 11
    add-int/2addr v4, v3

    .line 12
    .line 13
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 14
    add-int/2addr v4, v5

    .line 15
    .line 16
    new-array v4, v4, [B

    .line 17
    .line 18
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 19
    const/4 v6, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 25
    .line 26
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 27
    .line 28
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 34
    .line 35
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 36
    .line 37
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 38
    add-int/2addr v0, v5

    .line 39
    .line 40
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalData:[B

    .line 48
    .line 49
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->nalLength:I

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2, v6, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([BII)V

    .line 53
    .line 54
    const/16 v1, 0x2c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 58
    const/4 v1, 0x3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 66
    const/4 v3, 0x2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 70
    move-result v7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 74
    move-result v8

    .line 75
    const/4 v5, 0x5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 79
    move-result v9

    .line 80
    move v10, v6

    .line 81
    move v11, v10

    .line 82
    .line 83
    :goto_0
    const/16 v12, 0x20

    .line 84
    const/4 v13, 0x1

    .line 85
    .line 86
    if-ge v11, v12, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 90
    move-result v12

    .line 91
    .line 92
    if-eqz v12, :cond_0

    .line 93
    .line 94
    shl-int v12, v13, v11

    .line 95
    or-int/2addr v10, v12

    .line 96
    .line 97
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v11, 0x6

    .line 100
    .line 101
    new-array v12, v11, [I

    .line 102
    move v14, v6

    .line 103
    .line 104
    :goto_1
    const/16 v15, 0x8

    .line 105
    .line 106
    if-ge v14, v11, :cond_2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 110
    move-result v15

    .line 111
    .line 112
    aput v15, v12, v14

    .line 113
    .line 114
    add-int/lit8 v14, v14, 0x1

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 119
    move-result v14

    .line 120
    move v11, v6

    .line 121
    .line 122
    :goto_2
    if-ge v11, v2, :cond_5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 126
    move-result v16

    .line 127
    .line 128
    if-eqz v16, :cond_3

    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x59

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 134
    move-result v16

    .line 135
    .line 136
    if-eqz v16, :cond_4

    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x8

    .line 139
    .line 140
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 145
    .line 146
    if-lez v2, :cond_6

    .line 147
    .line 148
    rsub-int/lit8 v6, v2, 0x8

    .line 149
    mul-int/2addr v6, v3

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 153
    .line 154
    .line 155
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 159
    move-result v6

    .line 160
    .line 161
    if-ne v6, v1, :cond_7

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 165
    .line 166
    .line 167
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 168
    move-result v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 172
    move-result v11

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 176
    move-result v16

    .line 177
    .line 178
    if-eqz v16, :cond_b

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 182
    move-result v16

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 186
    move-result v17

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 190
    move-result v18

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 194
    move-result v19

    .line 195
    .line 196
    if-eq v6, v13, :cond_9

    .line 197
    .line 198
    if-ne v6, v3, :cond_8

    .line 199
    goto :goto_3

    .line 200
    .line 201
    :cond_8
    move/from16 v20, v13

    .line 202
    goto :goto_4

    .line 203
    .line 204
    :cond_9
    :goto_3
    move/from16 v20, v3

    .line 205
    .line 206
    :goto_4
    if-ne v6, v13, :cond_a

    .line 207
    move v13, v3

    .line 208
    .line 209
    :cond_a
    add-int v16, v16, v17

    .line 210
    .line 211
    mul-int v20, v20, v16

    .line 212
    .line 213
    sub-int v1, v1, v20

    .line 214
    .line 215
    add-int v18, v18, v19

    .line 216
    .line 217
    mul-int v13, v13, v18

    .line 218
    sub-int/2addr v11, v13

    .line 219
    .line 220
    .line 221
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 228
    move-result v6

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 232
    move-result v13

    .line 233
    .line 234
    if-eqz v13, :cond_c

    .line 235
    const/4 v13, 0x0

    .line 236
    goto :goto_5

    .line 237
    :cond_c
    move v13, v2

    .line 238
    .line 239
    :goto_5
    if-gt v13, v2, :cond_d

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 249
    .line 250
    add-int/lit8 v13, v13, 0x1

    .line 251
    goto :goto_5

    .line 252
    .line 253
    .line 254
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 273
    move-result v2

    .line 274
    .line 275
    if-eqz v2, :cond_e

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 279
    move-result v2

    .line 280
    .line 281
    if-eqz v2, :cond_e

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/q;->h(Lcom/google/android/exoplayer2/util/d0;)V

    .line 285
    .line 286
    .line 287
    :cond_e
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 291
    move-result v2

    .line 292
    .line 293
    if-eqz v2, :cond_f

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 306
    .line 307
    .line 308
    :cond_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/q;->i(Lcom/google/android/exoplayer2/util/d0;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 312
    move-result v2

    .line 313
    .line 314
    if-eqz v2, :cond_10

    .line 315
    const/4 v2, 0x0

    .line 316
    .line 317
    .line 318
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 319
    move-result v13

    .line 320
    .line 321
    if-ge v2, v13, :cond_10

    .line 322
    .line 323
    add-int/lit8 v13, v6, 0x5

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 327
    .line 328
    add-int/lit8 v2, v2, 0x1

    .line 329
    goto :goto_6

    .line 330
    .line 331
    .line 332
    :cond_10
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 336
    move-result v2

    .line 337
    .line 338
    const/high16 v3, 0x3f800000    # 1.0f

    .line 339
    .line 340
    if-eqz v2, :cond_17

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 344
    move-result v2

    .line 345
    .line 346
    if-eqz v2, :cond_13

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 350
    move-result v2

    .line 351
    .line 352
    const/16 v5, 0xff

    .line 353
    .line 354
    if-ne v2, v5, :cond_11

    .line 355
    .line 356
    const/16 v2, 0x10

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 360
    move-result v5

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->e(I)I

    .line 364
    move-result v2

    .line 365
    .line 366
    if-eqz v5, :cond_13

    .line 367
    .line 368
    if-eqz v2, :cond_13

    .line 369
    int-to-float v3, v5

    .line 370
    int-to-float v2, v2

    .line 371
    div-float/2addr v3, v2

    .line 372
    goto :goto_7

    .line 373
    .line 374
    :cond_11
    sget-object v5, Lcom/google/android/exoplayer2/util/y;->ASPECT_RATIO_IDC_VALUES:[F

    .line 375
    array-length v6, v5

    .line 376
    .line 377
    if-ge v2, v6, :cond_12

    .line 378
    .line 379
    aget v3, v5, v2

    .line 380
    goto :goto_7

    .line 381
    .line 382
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    const-string v6, "Unexpected aspect_ratio_idc value: "

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    move-result-object v2

    .line 398
    .line 399
    const-string v5, "H265Reader"

    .line 400
    .line 401
    .line 402
    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    :cond_13
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 406
    move-result v2

    .line 407
    .line 408
    if-eqz v2, :cond_14

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 412
    .line 413
    .line 414
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 415
    move-result v2

    .line 416
    .line 417
    if-eqz v2, :cond_15

    .line 418
    const/4 v2, 0x4

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 425
    move-result v2

    .line 426
    .line 427
    if-eqz v2, :cond_15

    .line 428
    .line 429
    const/16 v2, 0x18

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->l(I)V

    .line 433
    .line 434
    .line 435
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 436
    move-result v2

    .line 437
    .line 438
    if-eqz v2, :cond_16

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 445
    .line 446
    .line 447
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 451
    move-result v0

    .line 452
    .line 453
    if-eqz v0, :cond_17

    .line 454
    .line 455
    mul-int/lit8 v11, v11, 0x2

    .line 456
    :cond_17
    move v0, v11

    .line 457
    move-object v11, v12

    .line 458
    move v12, v14

    .line 459
    .line 460
    .line 461
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/e;->c(IZII[II)Ljava/lang/String;

    .line 462
    move-result-object v2

    .line 463
    .line 464
    new-instance v5, Lcom/google/android/exoplayer2/a2$b;

    .line 465
    .line 466
    .line 467
    invoke-direct {v5}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 468
    .line 469
    move-object/from16 v6, p0

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 473
    move-result-object v5

    .line 474
    .line 475
    const-string v6, "video/hevc"

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 479
    move-result-object v5

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 483
    move-result-object v2

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 487
    move-result-object v1

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    .line 495
    move-result-object v0

    .line 496
    .line 497
    .line 498
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 499
    move-result-object v1

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 503
    move-result-object v0

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 507
    move-result-object v0

    .line 508
    return-object v0
.end method

.method private static h(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    .line 5
    if-ge v1, v2, :cond_5

    .line 6
    move v3, v0

    .line 7
    :goto_1
    const/4 v4, 0x6

    .line 8
    .line 9
    if-ge v3, v4, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 20
    goto :goto_3

    .line 21
    .line 22
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    .line 23
    add-int/2addr v4, v2

    .line 24
    .line 25
    shl-int v4, v5, v4

    .line 26
    .line 27
    const/16 v6, 0x40

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v4

    .line 32
    .line 33
    if-le v1, v5, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 37
    :cond_1
    move v6, v0

    .line 38
    .line 39
    :goto_2
    if-ge v6, v4, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->g()I

    .line 43
    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    const/4 v4, 0x3

    .line 47
    .line 48
    if-ne v1, v4, :cond_3

    .line 49
    move v5, v4

    .line 50
    :cond_3
    add-int/2addr v3, v5

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return-void
.end method

.method private static i(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_6

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    :cond_0
    if-eqz v3, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 25
    move v5, v1

    .line 26
    .line 27
    :goto_1
    if-gt v5, v4, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()Z

    .line 31
    move-result v6

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 47
    move-result v5

    .line 48
    .line 49
    add-int v6, v4, v5

    .line 50
    move v7, v1

    .line 51
    .line 52
    :goto_2
    if-ge v7, v4, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 59
    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v1

    .line 63
    .line 64
    :goto_3
    if-ge v4, v5, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->k()V

    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move v4, v6

    .line 75
    .line 76
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    return-void
.end method

.method private j(JIIJ)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 3
    .line 4
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-wide v5, p5

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/ts/q$a;->g(JIIJZ)V

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->hasOutputFormat:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ts/q;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 19
    move-result v8

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 23
    move-result-object v9

    .line 24
    .line 25
    iget-wide v1, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->totalBytesWritten:J

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 29
    move-result v3

    .line 30
    int-to-long v3, v3

    .line 31
    add-long/2addr v1, v3

    .line 32
    .line 33
    iput-wide v1, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->totalBytesWritten:J

    .line 34
    .line 35
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 39
    move-result v2

    .line 40
    .line 41
    move-object/from16 v10, p1

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v10, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 45
    .line 46
    :goto_0
    if-ge v0, v8, :cond_0

    .line 47
    .line 48
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixFlags:[Z

    .line 49
    .line 50
    .line 51
    invoke-static {v9, v0, v8, v1}, Lcom/google/android/exoplayer2/util/y;->c([BII[Z)I

    .line 52
    move-result v11

    .line 53
    .line 54
    if-ne v11, v8, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v9, v0, v8}, Lcom/google/android/exoplayer2/extractor/ts/q;->f([BII)V

    .line 58
    return-void

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v9, v11}, Lcom/google/android/exoplayer2/util/y;->e([BI)I

    .line 62
    move-result v12

    .line 63
    .line 64
    sub-int v1, v11, v0

    .line 65
    .line 66
    if-lez v1, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, v9, v0, v11}, Lcom/google/android/exoplayer2/extractor/ts/q;->f([BII)V

    .line 70
    .line 71
    :cond_2
    sub-int v13, v8, v11

    .line 72
    .line 73
    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->totalBytesWritten:J

    .line 74
    int-to-long v4, v13

    .line 75
    .line 76
    sub-long v14, v2, v4

    .line 77
    .line 78
    if-gez v1, :cond_3

    .line 79
    neg-int v0, v1

    .line 80
    :goto_1
    move v4, v0

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :goto_2
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->pesTimeUs:J

    .line 86
    .line 87
    move-object/from16 v0, p0

    .line 88
    move-wide v1, v14

    .line 89
    move v3, v13

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/q;->e(JIIJ)V

    .line 93
    .line 94
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/ts/q;->pesTimeUs:J

    .line 95
    move v4, v12

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/q;->j(JIIJ)V

    .line 99
    .line 100
    add-int/lit8 v0, v11, 0x3

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->formatId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->c()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/q$a;-><init>(Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 26
    .line 27
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/d0;->b(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V

    .line 33
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->totalBytesWritten:J

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pesTimeUs:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixFlags:[Z

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/y;->a([Z)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->vps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->pps:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->prefixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->suffixSei:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/q;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/q$a;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/q$a;->f()V

    .line 49
    :cond_0
    return-void
.end method
