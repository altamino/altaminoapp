.class Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;,
        Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    }
.end annotation


# static fields
.field private static final EMJI_TAG:I = 0x456d6a69

.field private static final EMJI_TAG_DEPRECATED:I = 0x656d6a69

.field private static final META_TABLE_NAME:I = 0x6d657461


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedShort()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    const-string v3, "Cannot read metadata."

    .line 13
    .line 14
    if-gt v1, v2, :cond_5

    .line 15
    const/4 v2, 0x6

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v2}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 19
    const/4 v2, 0x0

    .line 20
    move v4, v2

    .line 21
    .line 22
    :goto_0
    const-wide/16 v5, -0x1

    .line 23
    .line 24
    if-ge v4, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->a()I

    .line 28
    move-result v7

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->b()J

    .line 35
    move-result-wide v8

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 39
    .line 40
    .line 41
    const v10, 0x6d657461

    .line 42
    .line 43
    if-ne v10, v7, :cond_0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-wide v8, v5

    .line 49
    .line 50
    :goto_1
    cmp-long v0, v8, v5

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    sub-long v0, v8, v0

    .line 59
    long-to-int v0, v0

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 63
    .line 64
    const/16 v0, 0xc

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->b()J

    .line 71
    move-result-wide v0

    .line 72
    :goto_2
    int-to-long v4, v2

    .line 73
    .line 74
    cmp-long v4, v4, v0

    .line 75
    .line 76
    if-gez v4, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->a()I

    .line 80
    move-result v4

    .line 81
    .line 82
    .line 83
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->b()J

    .line 84
    move-result-wide v5

    .line 85
    .line 86
    .line 87
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->b()J

    .line 88
    move-result-wide v10

    .line 89
    .line 90
    .line 91
    const v7, 0x456d6a69

    .line 92
    .line 93
    if-eq v7, v4, :cond_3

    .line 94
    .line 95
    .line 96
    const v7, 0x656d6a69

    .line 97
    .line 98
    if-ne v7, v4, :cond_2

    .line 99
    goto :goto_3

    .line 100
    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_3
    :goto_3
    new-instance p0, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    .line 105
    add-long/2addr v5, v8

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v5, v6, v10, v11}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    .line 109
    return-object p0

    .line 110
    .line 111
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0

    .line 116
    .line 117
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0
.end method

.method static b(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->a(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->a()J

    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->i(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method static c(I)J
    .locals 4

    .line 1
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static d(S)I
    .locals 1

    .line 1
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
