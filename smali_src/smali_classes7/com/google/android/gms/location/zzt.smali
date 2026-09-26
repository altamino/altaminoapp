.class public final Lcom/google/android/gms/location/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/location/zzs;",
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
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    const-wide/16 v3, 0x32

    .line 10
    const/4 v5, 0x0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v6, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    const v8, 0x7fffffff

    .line 19
    move v10, v2

    .line 20
    move-wide v11, v3

    .line 21
    move v13, v5

    .line 22
    move-wide v14, v6

    .line 23
    .line 24
    move/from16 v16, v8

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-ge v3, v1, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eq v4, v2, :cond_4

    .line 41
    const/4 v5, 0x2

    .line 42
    .line 43
    if-eq v4, v5, :cond_3

    .line 44
    const/4 v5, 0x3

    .line 45
    .line 46
    if-eq v4, v5, :cond_2

    .line 47
    const/4 v5, 0x4

    .line 48
    .line 49
    if-eq v4, v5, :cond_1

    .line 50
    const/4 v5, 0x5

    .line 51
    .line 52
    if-eq v4, v5, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 60
    move-result v3

    .line 61
    .line 62
    move/from16 v16, v3

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 67
    move-result-wide v3

    .line 68
    move-wide v14, v3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    .line 73
    move-result v3

    .line 74
    move v13, v3

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 79
    move-result-wide v3

    .line 80
    move-wide v11, v3

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 85
    move-result v10

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 90
    .line 91
    new-instance v0, Lcom/google/android/gms/location/zzs;

    .line 92
    move-object v9, v0

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/location/zzs;-><init>(ZJFJI)V

    .line 96
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-array p1, p1, [Lcom/google/android/gms/location/zzs;

    .line 3
    return-object p1
.end method
