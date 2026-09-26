.class final Lorg/threeten/bp/zone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final SZR:B = 0x1t

.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/threeten/bp/zone/a;->type:B

    iput-object p2, p0, Lorg/threeten/bp/zone/a;->object:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p0}, Lorg/threeten/bp/zone/a;->c(BLjava/io/DataInput;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method static b(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xff

    .line 7
    and-int/2addr v0, v1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 18
    move-result v2

    .line 19
    and-int/2addr v2, v1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 23
    move-result p0

    .line 24
    and-int/2addr p0, v1

    .line 25
    .line 26
    shl-int/lit8 v0, v0, 0x10

    .line 27
    .line 28
    shl-int/lit8 v1, v2, 0x8

    .line 29
    add-int/2addr v0, v1

    .line 30
    add-int/2addr v0, p0

    .line 31
    int-to-long v0, v0

    .line 32
    .line 33
    const-wide/16 v2, 0x384

    .line 34
    mul-long/2addr v0, v2

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v2, 0x110bc5000L

    .line 40
    sub-long/2addr v0, v2

    .line 41
    return-wide v0
.end method

.method private static c(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/threeten/bp/zone/e;->c(Ljava/io/DataInput;)Lorg/threeten/bp/zone/e;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 17
    .line 18
    const-string p1, "Unknown serialized type"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p1}, Lorg/threeten/bp/zone/d;->l(Ljava/io/DataInput;)Lorg/threeten/bp/zone/d;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-static {p1}, Lorg/threeten/bp/zone/b;->k(Ljava/io/DataInput;)Lorg/threeten/bp/zone/b;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method static d(Ljava/io/DataInput;)Lorg/threeten/bp/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x7f

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    mul-int/lit16 v0, v0, 0x384

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method

.method static e(JLjava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x110bc5000L

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    const/16 v1, 0xff

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x26cb5db00L

    .line 17
    .line 18
    cmp-long v0, p0, v2

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    const-wide/16 v2, 0x384

    .line 23
    .line 24
    rem-long v4, p0, v2

    .line 25
    .line 26
    const-wide/16 v6, 0x0

    .line 27
    .line 28
    cmp-long v0, v4, v6

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v4, 0x110bc5000L

    .line 36
    add-long/2addr p0, v4

    .line 37
    div-long/2addr p0, v2

    .line 38
    long-to-int p0, p0

    .line 39
    .line 40
    ushr-int/lit8 p1, p0, 0x10

    .line 41
    and-int/2addr p1, v1

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 45
    .line 46
    ushr-int/lit8 p1, p0, 0x8

    .line 47
    and-int/2addr p1, v1

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 51
    and-int/2addr p0, v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 62
    :goto_0
    return-void
.end method

.method private static f(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eq p0, v0, :cond_2

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lorg/threeten/bp/zone/e;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/e;->d(Ljava/io/DataOutput;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance p0, Ljava/io/InvalidClassException;

    .line 21
    .line 22
    const-string p1, "Unknown serialized type"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    .line 28
    :cond_1
    check-cast p1, Lorg/threeten/bp/zone/d;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/d;->o(Ljava/io/DataOutput;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    check-cast p1, Lorg/threeten/bp/zone/b;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/b;->l(Ljava/io/DataOutput;)V

    .line 38
    :goto_0
    return-void
.end method

.method static g(Lorg/threeten/bp/s;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/s;->v()I

    .line 4
    move-result p0

    .line 5
    .line 6
    rem-int/lit16 v0, p0, 0x384

    .line 7
    .line 8
    const/16 v1, 0x7f

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    div-int/lit16 v0, p0, 0x384

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 23
    :cond_1
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/zone/a;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-byte v0, p0, Lorg/threeten/bp/zone/a;->type:B

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/threeten/bp/zone/a;->c(BLjava/io/DataInput;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lorg/threeten/bp/zone/a;->object:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-byte v0, p0, Lorg/threeten/bp/zone/a;->type:B

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/zone/a;->object:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/a;->f(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 8
    return-void
.end method
