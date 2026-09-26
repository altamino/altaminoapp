.class final Lcom/google/android/exoplayer2/text/cea/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/a$a$a;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/cea/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/a$a;->j(I)V

    .line 28
    .line 29
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionRowCount:I

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/text/cea/a$a;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->tabOffset:I

    .line 3
    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/text/cea/a$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->row:I

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/text/cea/a$a;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->row:I

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/text/cea/a$a;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->indent:I

    .line 3
    return p1
.end method

.method private h()Landroid/text/SpannableString;
    .locals 15

    .line 1
    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v5, v2

    .line 15
    move v6, v5

    .line 16
    move v8, v6

    .line 17
    move v9, v8

    .line 18
    move v4, v3

    .line 19
    move v7, v4

    .line 20
    move v10, v7

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 26
    move-result v11

    .line 27
    .line 28
    if-ge v4, v11, :cond_a

    .line 29
    .line 30
    iget-object v11, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v11

    .line 35
    .line 36
    check-cast v11, Lcom/google/android/exoplayer2/text/cea/a$a$a;

    .line 37
    .line 38
    iget-boolean v12, v11, Lcom/google/android/exoplayer2/text/cea/a$a$a;->underline:Z

    .line 39
    .line 40
    iget v13, v11, Lcom/google/android/exoplayer2/text/cea/a$a$a;->style:I

    .line 41
    .line 42
    const/16 v14, 0x8

    .line 43
    .line 44
    if-eq v13, v14, :cond_3

    .line 45
    const/4 v10, 0x7

    .line 46
    .line 47
    if-ne v13, v10, :cond_1

    .line 48
    const/4 v14, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v14, v3

    .line 51
    .line 52
    :goto_1
    if-ne v13, v10, :cond_2

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/text/cea/a;->k()[I

    .line 57
    move-result-object v9

    .line 58
    .line 59
    aget v9, v9, v13

    .line 60
    :goto_2
    move v10, v14

    .line 61
    .line 62
    :cond_3
    iget v11, v11, Lcom/google/android/exoplayer2/text/cea/a$a$a;->start:I

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    iget-object v13, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 70
    move-result v13

    .line 71
    .line 72
    if-ge v4, v13, :cond_4

    .line 73
    .line 74
    iget-object v13, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v13

    .line 79
    .line 80
    check-cast v13, Lcom/google/android/exoplayer2/text/cea/a$a$a;

    .line 81
    .line 82
    iget v13, v13, Lcom/google/android/exoplayer2/text/cea/a$a$a;->start:I

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v13, v1

    .line 85
    .line 86
    :goto_3
    if-ne v11, v13, :cond_5

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_5
    if-eq v5, v2, :cond_6

    .line 90
    .line 91
    if-nez v12, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v5, v11}, Lcom/google/android/exoplayer2/text/cea/a$a;->q(Landroid/text/SpannableStringBuilder;II)V

    .line 95
    move v5, v2

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    if-ne v5, v2, :cond_7

    .line 99
    .line 100
    if-eqz v12, :cond_7

    .line 101
    move v5, v11

    .line 102
    .line 103
    :cond_7
    :goto_4
    if-eq v6, v2, :cond_8

    .line 104
    .line 105
    if-nez v10, :cond_8

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v6, v11}, Lcom/google/android/exoplayer2/text/cea/a$a;->o(Landroid/text/SpannableStringBuilder;II)V

    .line 109
    move v6, v2

    .line 110
    goto :goto_5

    .line 111
    .line 112
    :cond_8
    if-ne v6, v2, :cond_9

    .line 113
    .line 114
    if-eqz v10, :cond_9

    .line 115
    move v6, v11

    .line 116
    .line 117
    :cond_9
    :goto_5
    if-eq v9, v8, :cond_0

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v7, v11, v8}, Lcom/google/android/exoplayer2/text/cea/a$a;->n(Landroid/text/SpannableStringBuilder;III)V

    .line 121
    move v8, v9

    .line 122
    move v7, v11

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_a
    if-eq v5, v2, :cond_b

    .line 126
    .line 127
    if-eq v5, v1, :cond_b

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v5, v1}, Lcom/google/android/exoplayer2/text/cea/a$a;->q(Landroid/text/SpannableStringBuilder;II)V

    .line 131
    .line 132
    :cond_b
    if-eq v6, v2, :cond_c

    .line 133
    .line 134
    if-eq v6, v1, :cond_c

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v6, v1}, Lcom/google/android/exoplayer2/text/cea/a$a;->o(Landroid/text/SpannableStringBuilder;II)V

    .line 138
    .line 139
    :cond_c
    if-eq v7, v1, :cond_d

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v7, v1, v8}, Lcom/google/android/exoplayer2/text/cea/a$a;->n(Landroid/text/SpannableStringBuilder;III)V

    .line 143
    .line 144
    :cond_d
    new-instance v1, Landroid/text/SpannableString;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    return-object v1
.end method

.method private static n(Landroid/text/SpannableStringBuilder;III)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 10
    .line 11
    const/16 p3, 0x21

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    return-void
.end method

.method private static o(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 7
    .line 8
    const/16 v1, 0x21

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    return-void
.end method

.method private static q(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/text/style/UnderlineSpan;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x21

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    return-void
.end method


# virtual methods
.method public e(C)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    add-int/lit8 v2, v0, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v1, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/google/android/exoplayer2/text/cea/a$a$a;

    .line 34
    .line 35
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/a$a$a;->start:I

    .line 36
    .line 37
    if-ne v3, v0, :cond_0

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    iput v3, v2, Lcom/google/android/exoplayer2/text/cea/a$a$a;->start:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public g(I)Lcom/google/android/exoplayer2/text/b;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->indent:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->tabOffset:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    rsub-int/lit8 v1, v0, 0x20

    .line 8
    .line 9
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    .line 16
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 20
    move-result v5

    .line 21
    .line 22
    if-ge v4, v5, :cond_0

    .line 23
    .line 24
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    check-cast v5, Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/o0;->O0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 38
    .line 39
    const/16 v5, 0xa

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/a$a;->h()Landroid/text/SpannableString;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/o0;->O0(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-nez v4, :cond_1

    .line 63
    const/4 p1, 0x0

    .line 64
    return-object p1

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 68
    move-result v4

    .line 69
    sub-int/2addr v1, v4

    .line 70
    .line 71
    sub-int v4, v0, v1

    .line 72
    .line 73
    const/high16 v5, -0x80000000

    .line 74
    const/4 v6, 0x2

    .line 75
    const/4 v7, 0x1

    .line 76
    .line 77
    if-eq p1, v5, :cond_2

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionMode:I

    .line 81
    .line 82
    if-ne p1, v6, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 86
    move-result p1

    .line 87
    const/4 v5, 0x3

    .line 88
    .line 89
    if-lt p1, v5, :cond_3

    .line 90
    .line 91
    if-gez v1, :cond_4

    .line 92
    :cond_3
    move p1, v7

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionMode:I

    .line 96
    .line 97
    if-ne p1, v6, :cond_5

    .line 98
    .line 99
    if-lez v4, :cond_5

    .line 100
    move p1, v6

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move p1, v3

    .line 103
    .line 104
    :goto_1
    if-eq p1, v7, :cond_7

    .line 105
    .line 106
    .line 107
    const v3, 0x3dcccccd    # 0.1f

    .line 108
    .line 109
    .line 110
    const v4, 0x3f4ccccd    # 0.8f

    .line 111
    .line 112
    const/high16 v5, 0x42000000    # 32.0f

    .line 113
    .line 114
    if-eq p1, v6, :cond_6

    .line 115
    :goto_2
    int-to-float v0, v0

    .line 116
    div-float/2addr v0, v5

    .line 117
    mul-float/2addr v0, v4

    .line 118
    add-float/2addr v0, v3

    .line 119
    goto :goto_3

    .line 120
    .line 121
    :cond_6
    rsub-int/lit8 v0, v1, 0x20

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 125
    .line 126
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->row:I

    .line 127
    const/4 v3, 0x7

    .line 128
    .line 129
    if-le v1, v3, :cond_8

    .line 130
    .line 131
    add-int/lit8 v1, v1, -0x11

    .line 132
    goto :goto_4

    .line 133
    .line 134
    :cond_8
    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionMode:I

    .line 135
    .line 136
    if-ne v3, v7, :cond_9

    .line 137
    .line 138
    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionRowCount:I

    .line 139
    sub-int/2addr v3, v7

    .line 140
    sub-int/2addr v1, v3

    .line 141
    .line 142
    :cond_9
    :goto_4
    new-instance v3, Lcom/google/android/exoplayer2/text/b$b;

    .line 143
    .line 144
    .line 145
    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/b$b;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/text/b$b;->o(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b$b;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/b$b;->p(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/b$b;

    .line 155
    move-result-object v2

    .line 156
    int-to-float v1, v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v1, v7}, Lcom/google/android/exoplayer2/text/b$b;->h(FI)Lcom/google/android/exoplayer2/text/b$b;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/b$b;->k(F)Lcom/google/android/exoplayer2/text/b$b;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/b$b;->l(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$b;->a()Lcom/google/android/exoplayer2/text/b;

    .line 172
    move-result-object p1

    .line 173
    return-object p1
.end method

.method public i()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionMode:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    const/16 p1, 0xf

    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->row:I

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->indent:I

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->tabOffset:I

    .line 27
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/a$a;->h()Landroid/text/SpannableString;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionRowCount:I

    .line 23
    .line 24
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->row:I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    move-result v2

    .line 35
    .line 36
    if-lt v2, v0, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->rolledUpCaptions:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionMode:I

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionRowCount:I

    return-void
.end method

.method public p(IZ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->cueStyles:Ljava/util/List;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/a$a$a;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/a$a;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/text/cea/a$a$a;-><init>(IZI)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
