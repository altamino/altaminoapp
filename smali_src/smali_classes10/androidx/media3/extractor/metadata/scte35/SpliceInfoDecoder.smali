.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field private final sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 18
    return-void
.end method


# virtual methods
.method protected b(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->e()J

    .line 10
    move-result-wide v3

    .line 11
    .line 12
    cmp-long v0, v1, v3

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    .line 17
    .line 18
    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 24
    .line 25
    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 26
    .line 27
    iget-wide v3, p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 28
    sub-long/2addr v1, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->a(J)J

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 39
    move-result p2

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->S([BI)V

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->o([BI)V

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 52
    .line 53
    const/16 p2, 0x27

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 59
    const/4 p2, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 63
    move-result p1

    .line 64
    int-to-long v0, p1

    .line 65
    .line 66
    const/16 p1, 0x20

    .line 67
    shl-long/2addr v0, p1

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 73
    move-result p1

    .line 74
    int-to-long v2, p1

    .line 75
    or-long/2addr v0, v2

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 78
    .line 79
    const/16 v2, 0x14

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 85
    .line 86
    const/16 v2, 0xc

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 90
    move-result p1

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/util/ParsableBitArray;

    .line 93
    .line 94
    const/16 v3, 0x8

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 98
    move-result v2

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 101
    .line 102
    const/16 v4, 0xe

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 106
    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    const/16 v3, 0xff

    .line 110
    .line 111
    if-eq v2, v3, :cond_5

    .line 112
    const/4 p1, 0x4

    .line 113
    .line 114
    if-eq v2, p1, :cond_4

    .line 115
    const/4 p1, 0x5

    .line 116
    .line 117
    if-eq v2, p1, :cond_3

    .line 118
    const/4 p1, 0x6

    .line 119
    .line 120
    if-eq v2, p1, :cond_2

    .line 121
    const/4 p1, 0x0

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->a(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    .line 130
    move-result-object p1

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 134
    .line 135
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->a(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 139
    move-result-object p1

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :cond_4
    iget-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    .line 146
    move-result-object p1

    .line 147
    goto :goto_0

    .line 148
    .line 149
    :cond_5
    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 150
    .line 151
    .line 152
    invoke-static {v2, p1, v0, v1}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->a(Landroidx/media3/common/util/ParsableByteArray;IJ)Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    .line 153
    move-result-object p1

    .line 154
    goto :goto_0

    .line 155
    .line 156
    :cond_6
    new-instance p1, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    .line 157
    .line 158
    .line 159
    invoke-direct {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 160
    :goto_0
    const/4 v0, 0x0

    .line 161
    .line 162
    if-nez p1, :cond_7

    .line 163
    .line 164
    new-instance p1, Landroidx/media3/common/Metadata;

    .line 165
    .line 166
    new-array p2, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, p2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_7
    new-instance v1, Landroidx/media3/common/Metadata;

    .line 173
    .line 174
    new-array p2, p2, [Landroidx/media3/common/Metadata$Entry;

    .line 175
    .line 176
    aput-object p1, p2, v0

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, p2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 180
    move-object p1, v1

    .line 181
    :goto_1
    return-object p1
.end method
