.class Lio/agora/rtc/internal/Marshallable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROTO_PACKET_SIZE:I = 0x2000


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x2000

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public marshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public marshall()[B
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-short v0, v0

    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 4
    new-array v0, v0, [B

    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public popAll()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 14
    return-object v0
.end method

.method public popBool()Ljava/lang/Boolean;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public popByte()B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public popBytes()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    :cond_0
    return-object v1
.end method

.method public popBytes32()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0
.end method

.method public popInt()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public popInt64()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public popIntArray()[I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    .line 13
    move-result v3

    .line 14
    .line 15
    aput v3, v1, v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method public popShort()S
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public popShortArray()[S
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v1, v0, [S

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    .line 13
    move-result v3

    .line 14
    .line 15
    aput-short v3, v1, v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method

.method public popString16()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "ISO-8859-1"

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    :cond_0
    const-string v0, ""

    .line 30
    return-object v0
.end method

.method public popString16UTF8()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "utf-8"

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    :cond_0
    const-string v0, ""

    .line 31
    return-object v0
.end method

.method public pushBool(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    return-void
.end method

.method public pushByte(B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method public pushBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    array-length v1, p1

    .line 4
    int-to-short v1, v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    return-void
.end method

.method public pushBytes32([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    array-length v1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    return-void
.end method

.method public pushDouble(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method public pushInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method public pushInt64(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method public pushIntArray([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vals"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 2
    :cond_0
    array-length v1, p1

    .line 3
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushIntArray([Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vals"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 6
    :cond_0
    array-length v1, p1

    .line 7
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 8
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushShort(S)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method public pushShortArray([S)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    return-void

    .line 8
    :cond_0
    array-length v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 12
    .line 13
    :goto_0
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    aget-short v2, p1, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public pushString16(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 15
    move-result-object v1

    .line 16
    array-length v1, v1

    .line 17
    int-to-short v1, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 24
    move-result-object v0

    .line 25
    array-length v0, v0

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    :cond_1
    return-void
.end method

.method public pushStringArray(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    int-to-short v2, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    .line 16
    .line 17
    :goto_0
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public unmarshall([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    return-void
.end method
