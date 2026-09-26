.class public final Lcom/google/android/gms/location/zzu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 3
    .line 4
    const-string v1, "name_ulr_private"

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/location/zzu;->zza:Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 14
    .line 15
    const-string v4, "name_sleep_segment_request"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 19
    .line 20
    sput-object v1, Lcom/google/android/gms/location/zzu;->zzb:Lcom/google/android/gms/common/Feature;

    .line 21
    .line 22
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 23
    .line 24
    const-string v5, "support_context_feature_id"

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    sput-object v4, Lcom/google/android/gms/location/zzu;->zzc:Lcom/google/android/gms/common/Feature;

    .line 30
    .line 31
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    const-string v6, "get_current_location"

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 37
    .line 38
    sput-object v5, Lcom/google/android/gms/location/zzu;->zzd:Lcom/google/android/gms/common/Feature;

    .line 39
    .line 40
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 41
    .line 42
    const-string v7, "get_last_activity_feature_id"

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 46
    .line 47
    sput-object v6, Lcom/google/android/gms/location/zzu;->zze:Lcom/google/android/gms/common/Feature;

    .line 48
    const/4 v2, 0x5

    .line 49
    .line 50
    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    aput-object v0, v2, v3

    .line 54
    const/4 v0, 0x1

    .line 55
    .line 56
    aput-object v1, v2, v0

    .line 57
    const/4 v0, 0x2

    .line 58
    .line 59
    aput-object v4, v2, v0

    .line 60
    const/4 v0, 0x3

    .line 61
    .line 62
    aput-object v5, v2, v0

    .line 63
    const/4 v0, 0x4

    .line 64
    .line 65
    aput-object v6, v2, v0

    .line 66
    .line 67
    sput-object v2, Lcom/google/android/gms/location/zzu;->zzf:[Lcom/google/android/gms/common/Feature;

    .line 68
    return-void
.end method
