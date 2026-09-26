.class public final Lcom/google/android/gms/location/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/location/LocationAvailability;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move v7, v1

    .line 12
    move v8, v2

    .line 13
    move v9, v8

    .line 14
    move-wide v10, v3

    .line 15
    move-object v12, v5

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ge v1, v0, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eq v3, v2, :cond_4

    .line 32
    const/4 v4, 0x2

    .line 33
    .line 34
    if-eq v3, v4, :cond_3

    .line 35
    const/4 v4, 0x3

    .line 36
    .line 37
    if-eq v3, v4, :cond_2

    .line 38
    const/4 v4, 0x4

    .line 39
    .line 40
    if-eq v3, v4, :cond_1

    .line 41
    const/4 v4, 0x5

    .line 42
    .line 43
    if-eq v3, v4, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    sget-object v3, Lcom/google/android/gms/location/zzbo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, [Lcom/google/android/gms/location/zzbo;

    .line 56
    move-object v12, v1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 61
    move-result v1

    .line 62
    move v7, v1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 67
    move-result-wide v3

    .line 68
    move-wide v10, v3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 73
    move-result v9

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 78
    move-result v8

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 83
    .line 84
    new-instance p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 85
    move-object v6, p1

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/location/LocationAvailability;-><init>(IIIJ[Lcom/google/android/gms/location/zzbo;)V

    .line 89
    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-array p1, p1, [Lcom/google/android/gms/location/LocationAvailability;

    .line 3
    return-object p1
.end method
