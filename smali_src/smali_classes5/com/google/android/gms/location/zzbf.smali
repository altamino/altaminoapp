.class public final Lcom/google/android/gms/location/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/location/LocationRequest;",
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
    .locals 28

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
    .line 8
    const/16 v2, 0x66

    .line 9
    .line 10
    .line 11
    const-wide/32 v3, 0x36ee80

    .line 12
    .line 13
    .line 14
    const-wide/32 v5, 0x927c0

    .line 15
    const/4 v7, 0x0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v8, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    const v10, 0x7fffffff

    .line 24
    const/4 v11, 0x0

    .line 25
    .line 26
    const-wide/16 v12, 0x0

    .line 27
    move v15, v2

    .line 28
    .line 29
    move-wide/from16 v16, v3

    .line 30
    .line 31
    move-wide/from16 v18, v5

    .line 32
    .line 33
    move/from16 v20, v7

    .line 34
    .line 35
    move/from16 v27, v20

    .line 36
    .line 37
    move-wide/from16 v21, v8

    .line 38
    .line 39
    move/from16 v23, v10

    .line 40
    .line 41
    move/from16 v24, v11

    .line 42
    .line 43
    move-wide/from16 v25, v12

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    move-result v2

    .line 48
    .line 49
    if-ge v2, v1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    packed-switch v3, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :pswitch_0
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    move/from16 v27, v2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :pswitch_1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 75
    move-result-wide v2

    .line 76
    .line 77
    move-wide/from16 v25, v2

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :pswitch_2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    .line 82
    move-result v2

    .line 83
    .line 84
    move/from16 v24, v2

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :pswitch_3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 89
    move-result v2

    .line 90
    .line 91
    move/from16 v23, v2

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :pswitch_4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 96
    move-result-wide v2

    .line 97
    .line 98
    move-wide/from16 v21, v2

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :pswitch_5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    move/from16 v20, v2

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :pswitch_6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 110
    move-result-wide v2

    .line 111
    .line 112
    move-wide/from16 v18, v2

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :pswitch_7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 117
    move-result-wide v2

    .line 118
    .line 119
    move-wide/from16 v16, v2

    .line 120
    goto :goto_0

    .line 121
    .line 122
    .line 123
    :pswitch_8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 124
    move-result v2

    .line 125
    move v15, v2

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 130
    .line 131
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    .line 132
    move-object v14, v0

    .line 133
    .line 134
    .line 135
    invoke-direct/range {v14 .. v27}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJZJIFJZ)V

    .line 136
    return-object v0

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-array p1, p1, [Lcom/google/android/gms/location/LocationRequest;

    .line 3
    return-object p1
.end method
