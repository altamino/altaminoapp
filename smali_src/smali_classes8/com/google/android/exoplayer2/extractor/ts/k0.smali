.class final Lcom/google/android/exoplayer2/extractor/ts/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final USER_DATA_START_CODE:I = 0x1b2


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:[Lcom/google/android/exoplayer2/extractor/e0;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->closedCaptionFormats:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 10
    .line 11
    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/e0;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 14
    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/util/c0;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 21
    move-result v2

    .line 22
    .line 23
    const/16 v3, 0x1b2

    .line 24
    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    .line 28
    const v0, 0x47413934

    .line 29
    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    const/4 v0, 0x3

    .line 32
    .line 33
    if-ne v2, v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/c;->b(JLcom/google/android/exoplayer2/util/c0;[Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 39
    :cond_1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 5
    array-length v2, v2

    .line 6
    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->c()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->closedCaptionFormats:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lcom/google/android/exoplayer2/a2;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 30
    .line 31
    const-string v5, "application/cea-608"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    const-string v5, "application/cea-708"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 50
    .line 51
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v7, "Invalid closed caption mime type provided: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 70
    .line 71
    new-instance v5, Lcom/google/android/exoplayer2/a2$b;

    .line 72
    .line 73
    .line 74
    invoke-direct {v5}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->F(I)Lcom/google/android/exoplayer2/a2$b;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    iget-object v3, v3, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/k0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 120
    .line 121
    aput-object v2, v3, v1

    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method
