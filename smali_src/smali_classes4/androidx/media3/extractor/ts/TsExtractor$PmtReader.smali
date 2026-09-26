.class Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_AIT:I = 0x6f

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_DVBSUBS:I = 0x59

.field private static final TS_PMT_DESC_DVB_EXT:I = 0x7f

.field private static final TS_PMT_DESC_DVB_EXT_AC4:I = 0x15

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media3/extractor/ts/TsExtractor;

.field private final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field private final trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 8
    const/4 v0, 0x5

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 16
    .line 17
    new-instance p1, Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 23
    .line 24
    new-instance p1, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 32
    return-void
.end method

.method private c(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr p2, v0

    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 12
    move-result v4

    .line 13
    .line 14
    if-ge v4, p2, :cond_d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 22
    move-result v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 26
    move-result v6

    .line 27
    add-int/2addr v6, v5

    .line 28
    .line 29
    if-le v6, p2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    :cond_0
    const/4 v5, 0x5

    .line 33
    .line 34
    const/16 v7, 0xac

    .line 35
    .line 36
    const/16 v8, 0x87

    .line 37
    .line 38
    const/16 v9, 0x81

    .line 39
    .line 40
    if-ne v4, v5, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->J()J

    .line 44
    move-result-wide v4

    .line 45
    .line 46
    .line 47
    const-wide/32 v10, 0x41432d33

    .line 48
    .line 49
    cmp-long v10, v4, v10

    .line 50
    .line 51
    if-nez v10, :cond_1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    const-wide/32 v9, 0x45414333

    .line 56
    .line 57
    cmp-long v9, v4, v9

    .line 58
    .line 59
    if-nez v9, :cond_2

    .line 60
    goto :goto_3

    .line 61
    .line 62
    .line 63
    :cond_2
    const-wide/32 v8, 0x41432d34

    .line 64
    .line 65
    cmp-long v8, v4, v8

    .line 66
    .line 67
    if-nez v8, :cond_3

    .line 68
    :goto_1
    move v1, v7

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    .line 73
    :cond_3
    const-wide/32 v7, 0x48455643

    .line 74
    .line 75
    cmp-long v4, v4, v7

    .line 76
    .line 77
    if-nez v4, :cond_c

    .line 78
    .line 79
    const/16 v1, 0x24

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_4
    const/16 v5, 0x6a

    .line 84
    .line 85
    if-ne v4, v5, :cond_5

    .line 86
    :goto_2
    move v1, v9

    .line 87
    goto :goto_5

    .line 88
    .line 89
    :cond_5
    const/16 v5, 0x7a

    .line 90
    .line 91
    if-ne v4, v5, :cond_6

    .line 92
    :goto_3
    move v1, v8

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_6
    const/16 v5, 0x7f

    .line 96
    .line 97
    if-ne v4, v5, :cond_7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 101
    move-result v4

    .line 102
    .line 103
    const/16 v5, 0x15

    .line 104
    .line 105
    if-ne v4, v5, :cond_c

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_7
    const/16 v5, 0x7b

    .line 109
    .line 110
    if-ne v4, v5, :cond_8

    .line 111
    .line 112
    const/16 v1, 0x8a

    .line 113
    goto :goto_5

    .line 114
    .line 115
    :cond_8
    const/16 v5, 0xa

    .line 116
    const/4 v7, 0x3

    .line 117
    .line 118
    if-ne v4, v5, :cond_9

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableByteArray;->E(I)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    goto :goto_5

    .line 128
    .line 129
    :cond_9
    const/16 v5, 0x59

    .line 130
    .line 131
    if-ne v4, v5, :cond_b

    .line 132
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    :goto_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 140
    move-result v3

    .line 141
    .line 142
    if-ge v3, v6, :cond_a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableByteArray;->E(I)Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 154
    move-result v4

    .line 155
    const/4 v8, 0x4

    .line 156
    .line 157
    new-array v9, v8, [B

    .line 158
    const/4 v10, 0x0

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v9, v10, v8}, Landroidx/media3/common/util/ParsableByteArray;->l([BII)V

    .line 162
    .line 163
    new-instance v8, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 164
    .line 165
    .line 166
    invoke-direct {v8, v3, v4, v9}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    goto :goto_4

    .line 171
    :cond_a
    move-object v3, v1

    .line 172
    move v1, v5

    .line 173
    goto :goto_5

    .line 174
    .line 175
    :cond_b
    const/16 v5, 0x6f

    .line 176
    .line 177
    if-ne v4, v5, :cond_c

    .line 178
    .line 179
    const/16 v1, 0x101

    .line 180
    .line 181
    .line 182
    :cond_c
    :goto_5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->f()I

    .line 183
    move-result v4

    .line 184
    sub-int/2addr v6, v4

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    .line 192
    :cond_d
    :goto_6
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 193
    .line 194
    new-instance v4, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 202
    move-result-object p1

    .line 203
    .line 204
    .line 205
    invoke-direct {v4, v1, v2, v3, p1}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 206
    return-object v4
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 18
    move-result v2

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    .line 22
    if-eq v2, v5, :cond_2

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eq v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroidx/media3/extractor/ts/TsExtractor;->f(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 36
    move-result v2

    .line 37
    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    new-instance v2, Landroidx/media3/common/util/TimestampAdjuster;

    .line 42
    .line 43
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 44
    .line 45
    .line 46
    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->l(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    .line 50
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    check-cast v6, Landroidx/media3/common/util/TimestampAdjuster;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Landroidx/media3/common/util/TimestampAdjuster;->c()J

    .line 57
    move-result-wide v6

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 61
    .line 62
    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 63
    .line 64
    .line 65
    invoke-static {v6}, Landroidx/media3/extractor/ts/TsExtractor;->l(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    .line 69
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Landroidx/media3/extractor/ts/TsExtractor;->l(Landroidx/media3/extractor/ts/TsExtractor;)Ljava/util/List;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    check-cast v2, Landroidx/media3/common/util/TimestampAdjuster;

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 86
    move-result v6

    .line 87
    .line 88
    and-int/lit16 v6, v6, 0x80

    .line 89
    .line 90
    if-nez v6, :cond_3

    .line 91
    return-void

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->N()I

    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 103
    .line 104
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 108
    .line 109
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 113
    .line 114
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 115
    .line 116
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 117
    .line 118
    const/16 v10, 0xd

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 122
    move-result v9

    .line 123
    .line 124
    .line 125
    invoke-static {v8, v9}, Landroidx/media3/extractor/ts/TsExtractor;->m(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 126
    .line 127
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 131
    .line 132
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 133
    const/4 v9, 0x4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 137
    .line 138
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 139
    .line 140
    const/16 v11, 0xc

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 144
    move-result v8

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 148
    .line 149
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 150
    .line 151
    .line 152
    invoke-static {v8}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 153
    move-result v8

    .line 154
    .line 155
    const/16 v12, 0x2000

    .line 156
    .line 157
    const/16 v13, 0x15

    .line 158
    .line 159
    if-ne v8, v3, :cond_4

    .line 160
    .line 161
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 162
    .line 163
    .line 164
    invoke-static {v8}, Landroidx/media3/extractor/ts/TsExtractor;->n(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 165
    move-result-object v8

    .line 166
    .line 167
    if-nez v8, :cond_4

    .line 168
    .line 169
    new-instance v8, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 170
    .line 171
    sget-object v14, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 172
    const/4 v15, 0x0

    .line 173
    .line 174
    .line 175
    invoke-direct {v8, v13, v15, v15, v14}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 176
    .line 177
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 178
    .line 179
    .line 180
    invoke-static {v14}, Landroidx/media3/extractor/ts/TsExtractor;->p(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    .line 181
    move-result-object v15

    .line 182
    .line 183
    .line 184
    invoke-interface {v15, v13, v8}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->a(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 185
    move-result-object v8

    .line 186
    .line 187
    .line 188
    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/TsExtractor;->o(Landroidx/media3/extractor/ts/TsExtractor;Landroidx/media3/extractor/ts/TsPayloadReader;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 189
    .line 190
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 191
    .line 192
    .line 193
    invoke-static {v8}, Landroidx/media3/extractor/ts/TsExtractor;->n(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 194
    move-result-object v8

    .line 195
    .line 196
    if-eqz v8, :cond_4

    .line 197
    .line 198
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 199
    .line 200
    .line 201
    invoke-static {v8}, Landroidx/media3/extractor/ts/TsExtractor;->n(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 202
    move-result-object v8

    .line 203
    .line 204
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 205
    .line 206
    .line 207
    invoke-static {v14}, Landroidx/media3/extractor/ts/TsExtractor;->q(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    .line 208
    move-result-object v14

    .line 209
    .line 210
    new-instance v15, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 211
    .line 212
    .line 213
    invoke-direct {v15, v6, v13, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v8, v2, v14, v15}, Landroidx/media3/extractor/ts/TsPayloadReader;->b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 217
    .line 218
    :cond_4
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 222
    .line 223
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 230
    move-result v8

    .line 231
    .line 232
    :goto_2
    if-lez v8, :cond_c

    .line 233
    .line 234
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 235
    const/4 v15, 0x5

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->k(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 239
    .line 240
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 241
    .line 242
    const/16 v4, 0x8

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v4}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 246
    move-result v4

    .line 247
    .line 248
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v7}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 252
    .line 253
    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v14, v10}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 257
    move-result v14

    .line 258
    .line 259
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 263
    .line 264
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 268
    move-result v7

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v1, v7}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->c(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 272
    move-result-object v9

    .line 273
    const/4 v10, 0x6

    .line 274
    .line 275
    if-eq v4, v10, :cond_5

    .line 276
    .line 277
    if-ne v4, v15, :cond_6

    .line 278
    .line 279
    :cond_5
    iget v4, v9, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 280
    .line 281
    :cond_6
    add-int/lit8 v7, v7, 0x5

    .line 282
    sub-int/2addr v8, v7

    .line 283
    .line 284
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 285
    .line 286
    .line 287
    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 288
    move-result v7

    .line 289
    .line 290
    if-ne v7, v3, :cond_7

    .line 291
    move v7, v4

    .line 292
    goto :goto_3

    .line 293
    :cond_7
    move v7, v14

    .line 294
    .line 295
    :goto_3
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 296
    .line 297
    .line 298
    invoke-static {v10}, Landroidx/media3/extractor/ts/TsExtractor;->r(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    .line 299
    move-result-object v10

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 303
    move-result v10

    .line 304
    .line 305
    if-eqz v10, :cond_8

    .line 306
    goto :goto_5

    .line 307
    .line 308
    :cond_8
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 309
    .line 310
    .line 311
    invoke-static {v10}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 312
    move-result v10

    .line 313
    .line 314
    if-ne v10, v3, :cond_9

    .line 315
    .line 316
    if-ne v4, v13, :cond_9

    .line 317
    .line 318
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 319
    .line 320
    .line 321
    invoke-static {v4}, Landroidx/media3/extractor/ts/TsExtractor;->n(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 322
    move-result-object v4

    .line 323
    goto :goto_4

    .line 324
    .line 325
    :cond_9
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 326
    .line 327
    .line 328
    invoke-static {v10}, Landroidx/media3/extractor/ts/TsExtractor;->p(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    .line 329
    move-result-object v10

    .line 330
    .line 331
    .line 332
    invoke-interface {v10, v4, v9}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->a(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 333
    move-result-object v4

    .line 334
    .line 335
    :goto_4
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 336
    .line 337
    .line 338
    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 339
    move-result v9

    .line 340
    .line 341
    if-ne v9, v3, :cond_a

    .line 342
    .line 343
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 347
    move-result v9

    .line 348
    .line 349
    if-ge v14, v9, :cond_b

    .line 350
    .line 351
    :cond_a
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v9, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    .line 356
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_b
    :goto_5
    const/4 v4, 0x0

    .line 361
    const/4 v7, 0x3

    .line 362
    const/4 v9, 0x4

    .line 363
    .line 364
    const/16 v10, 0xd

    .line 365
    .line 366
    goto/16 :goto_2

    .line 367
    .line 368
    :cond_c
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 372
    move-result v1

    .line 373
    const/4 v4, 0x0

    .line 374
    .line 375
    :goto_6
    if-ge v4, v1, :cond_f

    .line 376
    .line 377
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 381
    move-result v7

    .line 382
    .line 383
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 387
    move-result v8

    .line 388
    .line 389
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 390
    .line 391
    .line 392
    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->r(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    .line 393
    move-result-object v9

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 397
    .line 398
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 399
    .line 400
    .line 401
    invoke-static {v9}, Landroidx/media3/extractor/ts/TsExtractor;->s(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    .line 402
    move-result-object v9

    .line 403
    .line 404
    .line 405
    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 406
    .line 407
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 411
    move-result-object v9

    .line 412
    .line 413
    check-cast v9, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 414
    .line 415
    if-eqz v9, :cond_e

    .line 416
    .line 417
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 418
    .line 419
    .line 420
    invoke-static {v10}, Landroidx/media3/extractor/ts/TsExtractor;->n(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 421
    move-result-object v10

    .line 422
    .line 423
    if-eq v9, v10, :cond_d

    .line 424
    .line 425
    iget-object v10, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 426
    .line 427
    .line 428
    invoke-static {v10}, Landroidx/media3/extractor/ts/TsExtractor;->q(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    .line 429
    move-result-object v10

    .line 430
    .line 431
    new-instance v11, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 432
    .line 433
    .line 434
    invoke-direct {v11, v6, v7, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 435
    .line 436
    .line 437
    invoke-interface {v9, v2, v10, v11}, Landroidx/media3/extractor/ts/TsPayloadReader;->b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 438
    .line 439
    :cond_d
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 440
    .line 441
    .line 442
    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->e(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    .line 443
    move-result-object v7

    .line 444
    .line 445
    .line 446
    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    .line 448
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 449
    goto :goto_6

    .line 450
    .line 451
    :cond_f
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 452
    .line 453
    .line 454
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 455
    move-result v1

    .line 456
    .line 457
    if-ne v1, v3, :cond_10

    .line 458
    .line 459
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 460
    .line 461
    .line 462
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->g(Landroidx/media3/extractor/ts/TsExtractor;)Z

    .line 463
    move-result v1

    .line 464
    .line 465
    if-nez v1, :cond_12

    .line 466
    .line 467
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 468
    .line 469
    .line 470
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->q(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    .line 471
    move-result-object v1

    .line 472
    .line 473
    .line 474
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 475
    .line 476
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 477
    const/4 v2, 0x0

    .line 478
    .line 479
    .line 480
    invoke-static {v1, v2}, Landroidx/media3/extractor/ts/TsExtractor;->i(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 481
    .line 482
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 483
    .line 484
    .line 485
    invoke-static {v1, v5}, Landroidx/media3/extractor/ts/TsExtractor;->h(Landroidx/media3/extractor/ts/TsExtractor;Z)Z

    .line 486
    goto :goto_8

    .line 487
    :cond_10
    const/4 v2, 0x0

    .line 488
    .line 489
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 490
    .line 491
    .line 492
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->e(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    iget v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 499
    .line 500
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 501
    .line 502
    .line 503
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->k(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 504
    move-result v3

    .line 505
    .line 506
    if-ne v3, v5, :cond_11

    .line 507
    move v4, v2

    .line 508
    goto :goto_7

    .line 509
    .line 510
    :cond_11
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 511
    .line 512
    .line 513
    invoke-static {v2}, Landroidx/media3/extractor/ts/TsExtractor;->f(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 514
    move-result v2

    .line 515
    .line 516
    add-int/lit8 v4, v2, -0x1

    .line 517
    .line 518
    .line 519
    :goto_7
    invoke-static {v1, v4}, Landroidx/media3/extractor/ts/TsExtractor;->i(Landroidx/media3/extractor/ts/TsExtractor;I)I

    .line 520
    .line 521
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 522
    .line 523
    .line 524
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->f(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 525
    move-result v1

    .line 526
    .line 527
    if-nez v1, :cond_12

    .line 528
    .line 529
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 530
    .line 531
    .line 532
    invoke-static {v1}, Landroidx/media3/extractor/ts/TsExtractor;->q(Landroidx/media3/extractor/ts/TsExtractor;)Landroidx/media3/extractor/ExtractorOutput;

    .line 533
    move-result-object v1

    .line 534
    .line 535
    .line 536
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 537
    .line 538
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    .line 539
    .line 540
    .line 541
    invoke-static {v1, v5}, Landroidx/media3/extractor/ts/TsExtractor;->h(Landroidx/media3/extractor/ts/TsExtractor;Z)Z

    .line 542
    :cond_12
    :goto_8
    return-void
.end method

.method public b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 1
    return-void
.end method
