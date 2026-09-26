.class final Lcom/google/android/exoplayer2/extractor/mp4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/m$a;
    }
.end annotation


# static fields
.field private static final ASTERISK_SPLITTER:Lcom/google/common/base/s;

.field private static final COLON_SPLITTER:Lcom/google/common/base/s;

.field private static final LENGTH_OF_ONE_SDR:I = 0xc

.field private static final SAMSUNG_TAIL_SIGNATURE:I = 0x53454654

.field private static final STATE_CHECKING_FOR_SEF:I = 0x1

.field private static final STATE_READING_SDRS:I = 0x2

.field private static final STATE_READING_SEF_DATA:I = 0x3

.field private static final STATE_SHOULD_CHECK_FOR_SEF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SefReader"

.field private static final TAIL_FOOTER_LENGTH:I = 0x8

.field private static final TAIL_HEADER_LENGTH:I = 0xc

.field private static final TYPE_SLOW_MOTION_DATA:I = 0x890

.field private static final TYPE_SUPER_SLOW_DEFLICKERING_ON:I = 0xb04

.field private static final TYPE_SUPER_SLOW_MOTION_BGM:I = 0xb01

.field private static final TYPE_SUPER_SLOW_MOTION_DATA:I = 0xb00

.field private static final TYPE_SUPER_SLOW_MOTION_EDIT_DATA:I = 0xb03


# instance fields
.field private final dataReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private readerState:I

.field private tailLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x3a

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/base/s;->d(C)Lcom/google/common/base/s;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->COLON_SPLITTER:Lcom/google/common/base/s;

    .line 9
    .line 10
    const/16 v0, 0x2a

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/common/base/s;->d(C)Lcom/google/common/base/s;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/m;->ASTERISK_SPLITTER:Lcom/google/common/base/s;

    .line 17
    return-void
.end method

.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 14
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    .line 22
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->tailLength:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    const v1, 0x53454654

    .line 30
    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->tailLength:I

    .line 43
    .line 44
    add-int/lit8 p1, p1, -0xc

    .line 45
    int-to-long v2, p1

    .line 46
    sub-long/2addr v0, v2

    .line 47
    .line 48
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 49
    const/4 p1, 0x2

    .line 50
    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 52
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v0, "Super_SlowMotion_BGM"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :sswitch_1
    const-string v0, "Super_SlowMotion_Deflickering_On"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x3

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :sswitch_2
    const-string v0, "Super_SlowMotion_Data"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-nez p0, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :sswitch_3
    const-string v0, "Super_SlowMotion_Edit_Data"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :sswitch_4
    const-string v0, "SlowMotion_Data"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p0

    .line 63
    .line 64
    if-nez p0, :cond_4

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const/4 v1, 0x0

    .line 67
    .line 68
    .line 69
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 70
    .line 71
    const-string p0, "Invalid SEF name"

    .line 72
    const/4 v0, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    .line 79
    :pswitch_0
    const/16 p0, 0xb01

    .line 80
    return p0

    .line 81
    .line 82
    :pswitch_1
    const/16 p0, 0xb04

    .line 83
    return p0

    .line 84
    .line 85
    :pswitch_2
    const/16 p0, 0xb00

    .line 86
    return p0

    .line 87
    .line 88
    :pswitch_3
    const/16 p0, 0xb03

    .line 89
    return p0

    .line 90
    .line 91
    :pswitch_4
    const/16 p0, 0x890

    .line 92
    return p0

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->tailLength:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x14

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/exoplayer2/util/c0;

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 22
    move p1, v5

    .line 23
    .line 24
    :goto_0
    div-int/lit8 v4, v2, 0xc

    .line 25
    .line 26
    if-ge p1, v4, :cond_1

    .line 27
    const/4 v4, 0x2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->s()S

    .line 34
    move-result v4

    .line 35
    .line 36
    const/16 v6, 0x890

    .line 37
    .line 38
    if-eq v4, v6, :cond_0

    .line 39
    .line 40
    const/16 v6, 0xb00

    .line 41
    .line 42
    if-eq v4, v6, :cond_0

    .line 43
    .line 44
    const/16 v6, 0xb01

    .line 45
    .line 46
    if-eq v4, v6, :cond_0

    .line 47
    .line 48
    const/16 v6, 0xb03

    .line 49
    .line 50
    if-eq v4, v6, :cond_0

    .line 51
    .line 52
    const/16 v6, 0xb04

    .line 53
    .line 54
    if-eq v4, v6, :cond_0

    .line 55
    .line 56
    const/16 v4, 0x8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_0
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->tailLength:I

    .line 63
    int-to-long v6, v6

    .line 64
    .line 65
    sub-long v6, v0, v6

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 69
    move-result v8

    .line 70
    int-to-long v8, v8

    .line 71
    sub-long/2addr v6, v8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 75
    move-result v8

    .line 76
    .line 77
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 78
    .line 79
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/m$a;

    .line 80
    .line 81
    .line 82
    invoke-direct {v10, v4, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/m$a;-><init>(IJI)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    const-wide/16 v0, 0x0

    .line 99
    .line 100
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 101
    return-void

    .line 102
    :cond_2
    const/4 p1, 0x3

    .line 103
    .line 104
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 105
    .line 106
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/m$a;

    .line 113
    .line 114
    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/m$a;->startOffset:J

    .line 115
    .line 116
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 117
    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/m;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/m;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 12
    move-result-wide v4

    .line 13
    sub-long/2addr v2, v4

    .line 14
    .line 15
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->tailLength:I

    .line 16
    int-to-long v4, v4

    .line 17
    sub-long/2addr v2, v4

    .line 18
    long-to-int v2, v2

    .line 19
    .line 20
    new-instance v3, Lcom/google/android/exoplayer2/util/c0;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-ge v5, p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/m$a;

    .line 48
    .line 49
    iget-wide v6, p1, Lcom/google/android/exoplayer2/extractor/mp4/m$a;->startOffset:J

    .line 50
    sub-long/2addr v6, v0

    .line 51
    long-to-int v2, v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 55
    const/4 v2, 0x4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/c0;->A(I)Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/m;->b(Ljava/lang/String;)I

    .line 70
    move-result v4

    .line 71
    .line 72
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/m$a;->size:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x8

    .line 75
    sub-int/2addr p1, v2

    .line 76
    .line 77
    const/16 v2, 0x890

    .line 78
    .line 79
    if-eq v4, v2, :cond_1

    .line 80
    .line 81
    const/16 p1, 0xb00

    .line 82
    .line 83
    if-eq v4, p1, :cond_2

    .line 84
    .line 85
    const/16 p1, 0xb01

    .line 86
    .line 87
    if-eq v4, p1, :cond_2

    .line 88
    .line 89
    const/16 p1, 0xb03

    .line 90
    .line 91
    if-eq v4, p1, :cond_2

    .line 92
    .line 93
    const/16 p1, 0xb04

    .line 94
    .line 95
    if-ne v4, p1, :cond_0

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 102
    throw p1

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/m;->f(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-void
.end method

.method private static f(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->A(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    sget-object p1, Lcom/google/android/exoplayer2/extractor/mp4/m;->ASTERISK_SPLITTER:Lcom/google/common/base/s;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/google/common/base/s;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    move v1, p1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mp4/m;->COLON_SPLITTER:Lcom/google/common/base/s;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/google/common/base/s;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x3

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    move-result-wide v7

    .line 54
    const/4 v3, 0x1

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    move-result-wide v9

    .line 65
    const/4 v4, 0x2

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    move-result v2

    .line 76
    sub-int/2addr v2, v3

    .line 77
    .line 78
    shl-int v11, v3, v2

    .line 79
    .line 80
    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    .line 81
    move-object v6, v2

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    .line 93
    .line 94
    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 95
    move-result-object p0

    .line 96
    throw p0

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-static {v5, v5}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    .line 103
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    .line 107
    return-object p0
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/m;",
            "Lcom/google/android/exoplayer2/extractor/a0;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-eq v0, v3, :cond_2

    .line 10
    const/4 v4, 0x2

    .line 11
    .line 12
    if-eq v0, v4, :cond_1

    .line 13
    const/4 v4, 0x3

    .line 14
    .line 15
    if-ne v0, v4, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/m;->e(Lcom/google/android/exoplayer2/extractor/m;Ljava/util/List;)V

    .line 19
    .line 20
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    throw p1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/m;->d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/m;->a(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 39
    move-result-wide v4

    .line 40
    .line 41
    const-wide/16 v6, -0x1

    .line 42
    .line 43
    cmp-long p1, v4, v6

    .line 44
    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    const-wide/16 v6, 0x8

    .line 48
    .line 49
    cmp-long p1, v4, v6

    .line 50
    .line 51
    if-gez p1, :cond_4

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_4
    sub-long v1, v4, v6

    .line 55
    .line 56
    :cond_5
    :goto_0
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 57
    .line 58
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 59
    :goto_1
    return v3
.end method

.method public g()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->dataReferences:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/m;->readerState:I

    .line 9
    return-void
.end method
