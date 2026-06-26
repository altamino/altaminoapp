.class Lio/agora/rtc/internal/Marshallable;
.super Ljava/lang/Object;
.source "Marshallable.java"


# static fields
.field public static final PROTO_PACKET_SIZE:I = 0x2000


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 13
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 247
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public marshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public marshall()[B
    .locals 3

    .line 18
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-short v0, v0

    .line 19
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 20
    new-array v0, v0, [B

    .line 21
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public popAll()[B
    .locals 2

    .line 98
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 99
    new-array v0, v0, [B

    .line 100
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public popBool()Ljava/lang/Boolean;
    .locals 2

    .line 53
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public popByte()B
    .locals 1

    .line 62
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public popBytes()[B
    .locals 2

    .line 71
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    if-lez v0, :cond_0

    .line 74
    new-array v1, v0, [B

    .line 75
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-object v1
.end method

.method public popBytes32()[B
    .locals 2

    .line 87
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    new-array v0, v0, [B

    .line 91
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public popInt()I
    .locals 1

    .line 120
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public popInt64()J
    .locals 2

    .line 128
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public popIntArray()[I
    .locals 4

    .line 214
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v0

    .line 215
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public popShort()S
    .locals 1

    .line 109
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public popShortArray()[S
    .locals 4

    .line 237
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v0

    .line 238
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public popString16()Ljava/lang/String;
    .locals 3

    .line 144
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-lez v0, :cond_0

    .line 147
    new-array v0, v0, [B

    .line 148
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 150
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public popString16UTF8()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-lez v0, :cond_0

    .line 163
    new-array v0, v0, [B

    .line 164
    iget-object v1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public pushBool(Ljava/lang/Boolean;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 49
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushByte(B)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushBytes([B)V
    .locals 2

    .line 66
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 67
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushBytes32([B)V
    .locals 2

    .line 82
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushDouble(D)V
    .locals 1

    .line 116
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushInt(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushInt64(J)V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushIntArray([I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 193
    :cond_0
    array-length v1, p1

    .line 194
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 196
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushIntArray([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 206
    :cond_0
    array-length v1, p1

    .line 207
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 209
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

    .line 105
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public pushShortArray([S)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 229
    :cond_0
    array-length v1, p1

    .line 230
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 232
    aget-short v2, p1, v0

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushString16(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method public pushStringArray(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-short v2, v1

    .line 182
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public unmarshall([B)V
    .locals 1

    .line 31
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    .line 32
    iget-object p1, p0, Lio/agora/rtc/internal/Marshallable;->mBuffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    return-void
.end method
