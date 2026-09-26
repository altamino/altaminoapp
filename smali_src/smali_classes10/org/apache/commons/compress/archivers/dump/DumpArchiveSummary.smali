.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private devname:Ljava/lang/String;

.field private dumpDate:J

.field private filesys:Ljava/lang/String;

.field private firstrec:I

.field private flags:I

.field private hostname:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private level:I

.field private ntrec:I

.field private previousDumpDate:J

.field private volume:I


# direct methods
.method constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    mul-long/2addr v0, v2

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 20
    move-result v0

    .line 21
    int-to-long v0, v0

    .line 22
    mul-long/2addr v0, v2

    .line 23
    .line 24
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    .line 25
    .line 26
    const/16 v0, 0xc

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    .line 33
    .line 34
    const/16 v0, 0x2a4

    .line 35
    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    .line 47
    .line 48
    const/16 v0, 0x2b4

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 52
    move-result v0

    .line 53
    .line 54
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    .line 55
    .line 56
    const/16 v0, 0x2b8

    .line 57
    .line 58
    const/16 v1, 0x40

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    .line 69
    .line 70
    const/16 v0, 0x2f8

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    .line 81
    .line 82
    const/16 v0, 0x338

    .line 83
    .line 84
    .line 85
    invoke-static {p2, p1, v0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    .line 93
    .line 94
    const/16 p2, 0x378

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 98
    move-result p2

    .line 99
    .line 100
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    .line 101
    .line 102
    const/16 p2, 0x37c

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 106
    move-result p2

    .line 107
    .line 108
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    .line 109
    .line 110
    const/16 p2, 0x380

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 114
    move-result p1

    .line 115
    .line 116
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    .line 117
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_5

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
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    .line 25
    .line 26
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 27
    .line 28
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 29
    .line 30
    cmp-long v2, v2, v4

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    return v1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getHostname()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getDevname()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    return v0

    .line 77
    :cond_5
    :goto_0
    return v1
.end method

.method public getDevname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    return-object v0
.end method

.method public getDumpDate()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    return-object v0
.end method

.method public getFilesystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstRecord()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    return v0
.end method

.method public getNTRec()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    return v0
.end method

.method public getPreviousDumpDate()Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    return-object v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    .line 3
    .line 4
    const/16 v1, 0x11

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    int-to-long v2, v0

    .line 14
    .line 15
    const-wide/16 v4, 0x1f

    .line 16
    .line 17
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 18
    mul-long/2addr v6, v4

    .line 19
    add-long/2addr v2, v6

    .line 20
    long-to-int v0, v2

    .line 21
    .line 22
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v0

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    add-int/2addr v0, v1

    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v0

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    add-int/2addr v0, v1

    .line 43
    :cond_2
    return v0
.end method

.method public isCompressed()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExtendedAttributes()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMetaDataOnly()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewHeader()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNewInode()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDevname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->devname:Ljava/lang/String;

    return-void
.end method

.method public setDumpDate(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->dumpDate:J

    .line 7
    return-void
.end method

.method public setFilesystem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->filesys:Ljava/lang/String;

    return-void
.end method

.method public setFirstRecord(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->firstrec:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->flags:I

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->label:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->level:I

    return-void
.end method

.method public setNTRec(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->ntrec:I

    return-void
.end method

.method public setPreviousDumpDate(Ljava/util/Date;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->previousDumpDate:J

    .line 7
    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->volume:I

    return-void
.end method
