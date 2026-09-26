.class public final Lcom/google/android/gms/internal/location/zzbe;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/Geofence;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ParcelableGeofenceCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzbe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRequestId"
        id = 0x1
    .end annotation
.end field

.field private final zzb:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getExpirationTime"
        id = 0x2
    .end annotation
.end field

.field private final zzc:S
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getType"
        id = 0x3
    .end annotation
.end field

.field private final zzd:D
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLatitude"
        id = 0x4
    .end annotation
.end field

.field private final zze:D
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getLongitude"
        id = 0x5
    .end annotation
.end field

.field private final zzf:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRadius"
        id = 0x6
    .end annotation
.end field

.field private final zzg:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTransitionTypes"
        id = 0x7
    .end annotation
.end field

.field private final zzh:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "0"
        getter = "getNotificationResponsiveness"
        id = 0x8
    .end annotation
.end field

.field private final zzi:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "-1"
        getter = "getLoiteringDelay"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p3    # S
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p8    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p11    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    cmpg-float v0, p8, v0

    .line 19
    .line 20
    if-lez v0, :cond_4

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 26
    .line 27
    cmpl-double v0, p4, v0

    .line 28
    .line 29
    if-gtz v0, :cond_3

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 35
    .line 36
    cmpg-double v0, p4, v0

    .line 37
    .line 38
    if-ltz v0, :cond_3

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 44
    .line 45
    cmpl-double v0, p6, v0

    .line 46
    .line 47
    if-gtz v0, :cond_2

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v0, -0x3f99800000000000L    # -180.0

    .line 53
    .line 54
    cmpg-double v0, p6, v0

    .line 55
    .line 56
    if-ltz v0, :cond_2

    .line 57
    .line 58
    and-int/lit8 v0, p2, 0x7

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iput-short p3, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 63
    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    .line 65
    .line 66
    iput-wide p4, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 67
    .line 68
    iput-wide p6, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 69
    .line 70
    iput p8, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 71
    .line 72
    iput-wide p9, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    .line 73
    .line 74
    iput v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 75
    .line 76
    iput p11, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    .line 77
    .line 78
    iput p12, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    .line 79
    return-void

    .line 80
    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const/16 p4, 0x2e

    .line 86
    .line 87
    .line 88
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .line 90
    const-string p4, "No supported transition specified: "

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1

    .line 105
    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const/16 p3, 0x2b

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .line 115
    const-string p3, "invalid longitude: "

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1

    .line 130
    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const/16 p3, 0x2a

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .line 140
    const-string p3, "invalid latitude: "

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p1

    .line 155
    .line 156
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const/16 p3, 0x1f

    .line 161
    .line 162
    .line 163
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .line 165
    const-string p3, "invalid radius: "

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p1

    .line 180
    .line 181
    :cond_5
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 189
    move-result p3

    .line 190
    .line 191
    const-string p4, "requestId is null or too long: "

    .line 192
    .line 193
    if-eqz p3, :cond_6

    .line 194
    .line 195
    .line 196
    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    goto :goto_1

    .line 199
    .line 200
    :cond_6
    new-instance p1, Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-direct {p1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/location/zzbe;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/location/zzbe;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 14
    .line 15
    iget v3, p1, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 16
    .line 17
    cmpl-float v1, v1, v3

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 22
    .line 23
    iget-wide v5, p1, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 24
    .line 25
    cmpl-double v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 32
    .line 33
    cmpl-double v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 38
    .line 39
    iget-short p1, p1, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 40
    .line 41
    if-ne v1, p1, :cond_1

    .line 42
    return v0

    .line 43
    :cond_1
    return v2
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    const/16 v4, 0x20

    .line 15
    .line 16
    ushr-long v5, v0, v4

    .line 17
    xor-long/2addr v0, v5

    .line 18
    long-to-int v0, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    ushr-long v4, v2, v4

    .line 25
    .line 26
    xor-long v1, v2, v4

    .line 27
    long-to-int v1, v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 47
    add-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-short v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    if-eq v2, v4, :cond_0

    .line 15
    .line 16
    const-string v2, "UNKNOWN"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v2, "CIRCLE"

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string v2, "INVALID"

    .line 23
    :goto_0
    const/4 v3, 0x0

    .line 24
    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "\\p{C}"

    .line 30
    .line 31
    const-string v5, "?"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    aput-object v2, v1, v4

    .line 38
    .line 39
    iget v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x2

    .line 45
    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    iget-wide v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x3

    .line 54
    .line 55
    aput-object v2, v1, v3

    .line 56
    .line 57
    iget-wide v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x4

    .line 63
    .line 64
    aput-object v2, v1, v3

    .line 65
    .line 66
    iget v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x5

    .line 72
    .line 73
    aput-object v2, v1, v3

    .line 74
    .line 75
    iget v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    .line 76
    .line 77
    div-int/lit16 v2, v2, 0x3e8

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x6

    .line 83
    .line 84
    aput-object v2, v1, v3

    .line 85
    .line 86
    iget v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x7

    .line 92
    .line 93
    aput-object v2, v1, v3

    .line 94
    .line 95
    iget-wide v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    const/16 v3, 0x8

    .line 102
    .line 103
    aput-object v2, v1, v3

    .line 104
    .line 105
    const-string v2, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    move-result p2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeShort(Landroid/os/Parcel;IS)V

    .line 24
    const/4 v0, 0x4

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 30
    const/4 v0, 0x5

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 36
    const/4 v0, 0x6

    .line 37
    .line 38
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 42
    const/4 v0, 0x7

    .line 43
    .line 44
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 48
    .line 49
    const/16 v0, 0x8

    .line 50
    .line 51
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 55
    .line 56
    const/16 v0, 0x9

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 65
    return-void
.end method
