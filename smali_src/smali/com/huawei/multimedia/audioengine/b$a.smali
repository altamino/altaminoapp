.class public abstract Lcom/huawei/multimedia/audioengine/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/multimedia/audioengine/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audioengine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audioengine/b$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

.field static final TRANSACTION_enableKaraokeFeature:I = 0x2

.field static final TRANSACTION_getKaraokeLatency:I = 0x3

.field static final TRANSACTION_init:I = 0x5

.field static final TRANSACTION_isKaraokeFeatureSupport:I = 0x1

.field static final TRANSACTION_setParameter:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static x1(Landroid/os/IBinder;)Lcom/huawei/multimedia/audioengine/b;
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Lcom/huawei/multimedia/audioengine/b;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/huawei/multimedia/audioengine/b;

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lcom/huawei/multimedia/audioengine/b$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audioengine/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq p1, v1, :cond_6

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq p1, v2, :cond_4

    .line 9
    const/4 v2, 0x3

    .line 10
    .line 11
    if-eq p1, v2, :cond_3

    .line 12
    const/4 v2, 0x4

    .line 13
    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    const/4 v2, 0x5

    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    const v2, 0x5f4e5446

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return v1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, p1}, Lcom/huawei/multimedia/audioengine/b;->S(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    return v1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 56
    move-result p2

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, p1, p2}, Lcom/huawei/multimedia/audioengine/b;->G0(Ljava/lang/String;I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v1

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Lcom/huawei/multimedia/audioengine/b;->X0()I

    .line 74
    move-result p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v1

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    move p1, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 p1, 0x0

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-interface {p0, p1}, Lcom/huawei/multimedia/audioengine/b;->x0(Z)I

    .line 97
    move-result p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v1

    .line 105
    .line 106
    .line 107
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0}, Lcom/huawei/multimedia/audioengine/b;->Y0()Z

    .line 111
    move-result p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v1
.end method
