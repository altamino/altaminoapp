.class public final Landroidx/media3/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PsshAtomUtil"


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

.method public static a(Ljava/util/UUID;[B)[B
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 5
    .param p1    # [Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    array-length v1, p2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    .line 8
    :goto_0
    add-int/lit8 v1, v1, 0x20

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    array-length v2, p1

    .line 12
    .line 13
    mul-int/lit8 v2, v2, 0x10

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x4

    .line 16
    add-int/2addr v1, v2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    const v1, 0x70737368    # 3.013775E29f

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/high16 v1, 0x1000000

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, v0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 49
    move-result-wide v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    array-length p0, p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    array-length p0, p1

    .line 60
    .line 61
    :goto_2
    if-ge v0, p0, :cond_3

    .line 62
    .line 63
    aget-object v1, p1, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 67
    move-result-wide v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_3
    if-eqz p2, :cond_4

    .line 83
    array-length p0, p2

    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    array-length p0, p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public static c([B)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->d([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private static d([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->g()I

    .line 9
    move-result p0

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-ge p0, v1, :cond_0

    .line 15
    return-object v2

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 27
    move-result v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x4

    .line 30
    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    return-object v2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    const v3, 0x70737368    # 3.013775E29f

    .line 40
    .line 41
    if-eq v1, v3, :cond_2

    .line 42
    return-object v2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->q()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->c(I)I

    .line 50
    move-result v1

    .line 51
    const/4 v3, 0x1

    .line 52
    .line 53
    if-le v1, v3, :cond_3

    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v0, "Unsupported pssh version: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    const-string v0, "PsshAtomUtil"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v2

    .line 77
    .line 78
    :cond_3
    new-instance v4, Ljava/util/UUID;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()J

    .line 82
    move-result-wide v5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()J

    .line 86
    move-result-wide v7

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 90
    .line 91
    if-ne v1, v3, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->L()I

    .line 95
    move-result v3

    .line 96
    .line 97
    mul-int/lit8 v3, v3, 0x10

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->V(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->L()I

    .line 104
    move-result v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 108
    move-result v5

    .line 109
    .line 110
    if-eq v3, v5, :cond_5

    .line 111
    return-object v2

    .line 112
    .line 113
    :cond_5
    new-array v2, v3, [B

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2, p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->l([BII)V

    .line 117
    .line 118
    new-instance p0, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v4, v1, v2}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    .line 122
    return-object p0
.end method

.method public static e([BLjava/util/UUID;)[B
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->d([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "UUID mismatch. Expected: "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, ", got: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p0, "."

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    const-string p1, "PsshAtomUtil"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object v0

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->c(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)[B

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static f([B)Ljava/util/UUID;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->d([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static g([B)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->d([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->b(Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method
