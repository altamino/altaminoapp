.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;
    }
.end annotation


# instance fields
.field private atime:J

.field private ctime:J

.field private generation:I

.field private gid:I

.field private final header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

.field private ino:I

.field private isDeleted:Z

.field private mode:I

.field private mtime:J

.field private name:Ljava/lang/String;

.field private nlink:I

.field private offset:J

.field private originalName:Ljava/lang/String;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation
.end field

.field private simpleName:Ljava/lang/String;

.field private size:J

.field private final summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

.field private type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private uid:I

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 4
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 8
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->simpleName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 13
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 14
    invoke-virtual {p0, p4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->simpleName:Ljava/lang/String;

    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-void
.end method

.method static parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;-><init>()V

    .line 6
    .line 7
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 12
    move-result v3

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$002(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    .line 20
    .line 21
    const/16 v3, 0xc

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 25
    move-result v3

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$102(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 29
    .line 30
    const/16 v3, 0x14

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$202(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 38
    move-result v3

    .line 39
    .line 40
    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    .line 41
    .line 42
    const/16 v3, 0x20

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert16([BI)I

    .line 46
    move-result v3

    .line 47
    .line 48
    shr-int/lit8 v4, v3, 0xc

    .line 49
    .line 50
    and-int/lit8 v4, v4, 0xf

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setMode(I)V

    .line 61
    .line 62
    const/16 v3, 0x22

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert16([BI)I

    .line 66
    move-result v3

    .line 67
    .line 68
    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nlink:I

    .line 69
    .line 70
    const/16 v3, 0x28

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert64([BI)J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSize(J)V

    .line 78
    .line 79
    const/16 v3, 0x30

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 83
    move-result v3

    .line 84
    int-to-long v3, v3

    .line 85
    .line 86
    const-wide/16 v5, 0x3e8

    .line 87
    mul-long/2addr v3, v5

    .line 88
    .line 89
    const/16 v7, 0x34

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 93
    move-result v7

    .line 94
    .line 95
    div-int/lit16 v7, v7, 0x3e8

    .line 96
    int-to-long v7, v7

    .line 97
    add-long/2addr v3, v7

    .line 98
    .line 99
    new-instance v7, Ljava/util/Date;

    .line 100
    .line 101
    .line 102
    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setAccessTime(Ljava/util/Date;)V

    .line 106
    .line 107
    const/16 v3, 0x38

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 111
    move-result v3

    .line 112
    int-to-long v3, v3

    .line 113
    mul-long/2addr v3, v5

    .line 114
    .line 115
    const/16 v7, 0x3c

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 119
    move-result v7

    .line 120
    .line 121
    div-int/lit16 v7, v7, 0x3e8

    .line 122
    int-to-long v7, v7

    .line 123
    add-long/2addr v3, v7

    .line 124
    .line 125
    new-instance v7, Ljava/util/Date;

    .line 126
    .line 127
    .line 128
    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setLastModifiedDate(Ljava/util/Date;)V

    .line 132
    .line 133
    const/16 v3, 0x40

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 137
    move-result v3

    .line 138
    int-to-long v3, v3

    .line 139
    mul-long/2addr v3, v5

    .line 140
    .line 141
    const/16 v5, 0x44

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 145
    move-result v5

    .line 146
    .line 147
    div-int/lit16 v5, v5, 0x3e8

    .line 148
    int-to-long v5, v5

    .line 149
    add-long/2addr v3, v5

    .line 150
    .line 151
    iput-wide v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ctime:J

    .line 152
    .line 153
    const/16 v3, 0x8c

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 157
    move-result v3

    .line 158
    .line 159
    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->generation:I

    .line 160
    .line 161
    const/16 v3, 0x90

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 165
    move-result v3

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setUserId(I)V

    .line 169
    .line 170
    const/16 v3, 0x94

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 174
    move-result v3

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setGroupId(I)V

    .line 178
    .line 179
    const/16 v3, 0xa0

    .line 180
    .line 181
    .line 182
    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 183
    move-result v3

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$302(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$402(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 190
    move v3, v2

    .line 191
    .line 192
    :goto_0
    const/16 v4, 0x200

    .line 193
    .line 194
    if-ge v3, v4, :cond_1

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$300(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    .line 198
    move-result v5

    .line 199
    .line 200
    if-ge v3, v5, :cond_1

    .line 201
    .line 202
    add-int/lit16 v4, v3, 0xa4

    .line 203
    .line 204
    aget-byte v4, p0, v4

    .line 205
    .line 206
    if-nez v4, :cond_0

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$408(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    .line 210
    .line 211
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 212
    goto :goto_0

    .line 213
    .line 214
    .line 215
    :cond_1
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$500(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)[B

    .line 216
    move-result-object v3

    .line 217
    .line 218
    const/16 v5, 0xa4

    .line 219
    .line 220
    .line 221
    invoke-static {p0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getVolume()I

    .line 225
    move-result p0

    .line 226
    .line 227
    iput p0, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    .line 228
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    .line 25
    .line 26
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    return v1

    .line 30
    .line 31
    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    .line 32
    .line 33
    iget v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_3

    .line 36
    return v1

    .line 37
    .line 38
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 39
    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    iget-object v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 43
    .line 44
    if-nez v3, :cond_5

    .line 45
    .line 46
    :cond_4
    if-eqz v2, :cond_6

    .line 47
    .line 48
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_6

    .line 55
    :cond_5
    return v1

    .line 56
    :cond_6
    return v0

    .line 57
    :cond_7
    :goto_0
    return v1
.end method

.method public getAccessTime()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->atime:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    return-object v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ctime:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    return-object v0
.end method

.method getEntrySize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-wide v0
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->generation:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->gid:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderHoles()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getHoles()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIno()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getIno()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mtime:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNlink()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nlink:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-wide v0
.end method

.method getOriginalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    .line 12
    :goto_0
    return-wide v0
.end method

.method public getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->uid:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    return v0
.end method

.method public isBlkDev()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->BLKDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isChrDev()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->CHRDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDeleted:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->DIRECTORY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isFifo()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FIFO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FILE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSocket()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->SOCKET:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSparseRecord(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getCdata(I)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    and-int/2addr p1, v0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public setAccessTime(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->atime:J

    .line 7
    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ctime:J

    .line 7
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDeleted:Z

    return-void
.end method

.method public setGeneration(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->generation:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->gid:I

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mtime:J

    .line 7
    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 1
    .line 2
    and-int/lit16 v0, p1, 0xfff

    .line 3
    .line 4
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mode:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->find(I)Ljava/util/Set;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    .line 11
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->originalName:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "/"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :cond_0
    const-string v0, "./"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setNlink(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nlink:I

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-void
.end method

.method protected setSimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->simpleName:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-void
.end method

.method public setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->uid:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method update([B)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$102(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 14
    .line 15
    const/16 v1, 0xa0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$302(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$402(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    .line 29
    move v0, v1

    .line 30
    .line 31
    :goto_0
    const/16 v2, 0x200

    .line 32
    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$300(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-ge v0, v3, :cond_1

    .line 42
    .line 43
    add-int/lit16 v2, v0, 0xa4

    .line 44
    .line 45
    aget-byte v2, p1, v2

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$408(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    .line 53
    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$500(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)[B

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const/16 v3, 0xa4

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-void
.end method
