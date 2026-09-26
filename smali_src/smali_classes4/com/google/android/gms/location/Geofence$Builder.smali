.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I
    .annotation build Lcom/google/android/gms/location/Geofence$TransitionTypes;
    .end annotation
.end field

.field private zzc:J

.field private zzd:S

.field private zze:D

.field private zzf:D

.field private zzg:F

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzb:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzc:J

    const/4 v1, -0x1

    iput-short v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzd:S

    iput v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzh:I

    iput v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzi:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/Geofence;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zza:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_6

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzb:I

    .line 7
    .line 8
    if-eqz v2, :cond_5

    .line 9
    .line 10
    and-int/lit8 v0, v2, 0x4

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzi:I

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-wide v9, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzc:J

    .line 28
    .line 29
    const-wide/high16 v3, -0x8000000000000000L

    .line 30
    .line 31
    cmp-long v0, v9, v3

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzd:S

    .line 36
    const/4 v3, -0x1

    .line 37
    .line 38
    if-eq v0, v3, :cond_3

    .line 39
    .line 40
    iget v11, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzh:I

    .line 41
    .line 42
    if-ltz v11, :cond_2

    .line 43
    .line 44
    new-instance v13, Lcom/google/android/gms/internal/location/zzbe;

    .line 45
    const/4 v3, 0x1

    .line 46
    .line 47
    iget-wide v4, p0, Lcom/google/android/gms/location/Geofence$Builder;->zze:D

    .line 48
    .line 49
    iget-wide v6, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzf:D

    .line 50
    .line 51
    iget v8, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzg:F

    .line 52
    .line 53
    iget v12, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzi:I

    .line 54
    move-object v0, v13

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/location/zzbe;-><init>(Ljava/lang/String;ISDDFJII)V

    .line 58
    return-object v13

    .line 59
    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v1, "Notification responsiveness should be nonnegative."

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    .line 68
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "Geofence region not set."

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw v0

    .line 75
    .line 76
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v1, "Expiration not set."

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0

    .line 83
    .line 84
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Transitions types not set."

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    .line 92
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string v1, "Request ID not set."

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0
.end method

.method public setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 5
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .param p3    # D
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .param p5    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 6
    .line 7
    cmpg-double v0, p1, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v3, 0x4056800000000000L    # 90.0

    .line 17
    .line 18
    cmpg-double v0, p1, v3

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    .line 25
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const/16 v4, 0x2a

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .line 32
    const-string v4, "Invalid latitude: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v3, -0x3f99800000000000L    # -180.0

    .line 51
    .line 52
    cmpg-double v0, p3, v3

    .line 53
    .line 54
    if-ltz v0, :cond_1

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 60
    .line 61
    cmpg-double v0, p3, v3

    .line 62
    .line 63
    if-gtz v0, :cond_1

    .line 64
    move v0, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v0, v2

    .line 67
    .line 68
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const/16 v4, 0x2b

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .line 75
    const-string v4, "Invalid longitude: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    .line 91
    cmpl-float v0, p5, v0

    .line 92
    .line 93
    if-lez v0, :cond_2

    .line 94
    move v2, v1

    .line 95
    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const/16 v3, 0x1f

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .line 103
    const-string v3, "Invalid radius: "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    .line 118
    iput-short v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzd:S

    .line 119
    .line 120
    iput-wide p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zze:D

    .line 121
    .line 122
    iput-wide p3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzf:D

    .line 123
    .line 124
    iput p5, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzg:F

    .line 125
    return-object p0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzc:J

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 19
    move-result-wide v0

    .line 20
    add-long/2addr v0, p1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzc:J

    .line 23
    :goto_0
    return-object p0
.end method

.method public setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzi:I

    return-object p0
.end method

.method public setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzh:I

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "Request ID can\'t be set to null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zza:Ljava/lang/String;

    .line 11
    return-object p0
.end method

.method public setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/location/Geofence$TransitionTypes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzb:I

    return-object p0
.end method
