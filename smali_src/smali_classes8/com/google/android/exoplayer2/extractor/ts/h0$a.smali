.class Lcom/google/android/exoplayer2/extractor/ts/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final patScratch:Lcom/google/android/exoplayer2/util/b0;

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/h0;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/b0;

    .line 8
    const/4 v0, 0x4

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/l0;Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 11
    move-result v0

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x4

    .line 26
    div-int/2addr v0, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    .line 30
    :goto_0
    if-ge v3, v0, :cond_4

    .line 31
    .line 32
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v4, v1}, Lcom/google/android/exoplayer2/util/c0;->i(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 36
    .line 37
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 38
    .line 39
    const/16 v5, 0x10

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 43
    move-result v4

    .line 44
    .line 45
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 46
    const/4 v6, 0x3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 50
    .line 51
    const/16 v5, 0xd

    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->patScratch:Lcom/google/android/exoplayer2/util/b0;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 65
    move-result v4

    .line 66
    .line 67
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/h0;->e(Lcom/google/android/exoplayer2/extractor/ts/h0;)Landroid/util/SparseArray;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    if-nez v5, :cond_3

    .line 78
    .line 79
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 80
    .line 81
    .line 82
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/h0;->e(Lcom/google/android/exoplayer2/extractor/ts/h0;)Landroid/util/SparseArray;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/c0;

    .line 86
    .line 87
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/h0$b;

    .line 88
    .line 89
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer2/extractor/ts/h0$b;-><init>(Lcom/google/android/exoplayer2/extractor/ts/h0;I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/extractor/ts/c0;-><init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 101
    .line 102
    .line 103
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/ts/h0;->j(Lcom/google/android/exoplayer2/extractor/ts/h0;)I

    .line 104
    .line 105
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/h0;->k(Lcom/google/android/exoplayer2/extractor/ts/h0;)I

    .line 112
    move-result p1

    .line 113
    const/4 v0, 0x2

    .line 114
    .line 115
    if-eq p1, v0, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h0$a;->this$0:Lcom/google/android/exoplayer2/extractor/ts/h0;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/h0;->e(Lcom/google/android/exoplayer2/extractor/ts/h0;)Landroid/util/SparseArray;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 125
    :cond_5
    return-void
.end method
