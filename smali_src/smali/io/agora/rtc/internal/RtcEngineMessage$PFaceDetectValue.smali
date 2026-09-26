.class public Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PFaceDetectValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;
    }
.end annotation


# instance fields
.field disArr:[I

.field public imageHeight:I

.field public imageWidth:I

.field public num:I

.field rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->disArr:[I

    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->clear()V

    .line 4
    return-void
.end method

.method public bridge synthetic getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->getBuffer()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->marshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public marshall()[B
    .locals 1

    .line 2
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popAll()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popAll()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popBool()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBool()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popByte()B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popByte()B

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic popBytes()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popBytes32()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes32()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popInt()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic popInt64()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt64()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic popIntArray()[I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popIntArray()[I

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popShort()S
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic popShortArray()[S
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShortArray()[S

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popString16()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic popString16UTF8()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16UTF8()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic pushBool(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushByte(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushByte(B)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushBytes([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushBytes32([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes32([B)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushInt64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt64(J)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushIntArray([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([I)V

    return-void
.end method

.method public bridge synthetic pushIntArray([Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic pushShort(S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushShortArray([S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShortArray([S)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushString16(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public bridge synthetic pushStringArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    .line 4
    return-void
.end method

.method public bridge synthetic unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshall([B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->imageWidth:I

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->imageHeight:I

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popShort()S

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 6
    new-array v1, p1, [Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 7
    new-instance v3, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    invoke-direct {v3}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 8
    aget-object v2, v2, v1

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result v3

    iput v3, v2, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->x:I

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 9
    aget-object v2, v2, v1

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result v3

    iput v3, v2, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->y:I

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 10
    aget-object v2, v2, v1

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result v3

    iput v3, v2, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->width:I

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    .line 11
    aget-object v2, v2, v1

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result v3

    iput v3, v2, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->height:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popShort()S

    move-result p1

    if-lez p1, :cond_1

    .line 13
    new-array v1, p1, [I

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->disArr:[I

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->disArr:[I

    .line 14
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->popInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
