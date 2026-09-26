.class public final Lcom/google/android/exoplayer2/extractor/ts/d0;
.super Ljava/lang/Object;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->closedCaptionFormats:Ljava/util/List;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 14
    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/util/c0;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/c;->a(JLcom/google/android/exoplayer2/util/c0;[Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 6
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
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 5
    array-length v2, v2

    .line 6
    .line 7
    if-ge v1, v2, :cond_3

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->closedCaptionFormats:Ljava/util/List;

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
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    goto :goto_3

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/a2$b;

    .line 81
    .line 82
    .line 83
    invoke-direct {v6}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->F(I)Lcom/google/android/exoplayer2/a2$b;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    iget-object v3, v3, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 123
    .line 124
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/d0;->outputs:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 125
    .line 126
    aput-object v2, v3, v1

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    return-void
.end method
