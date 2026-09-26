.class public final Lcom/google/android/gms/internal/play_billing/zzax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzb:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzc:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzd:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zze:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzf:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzg:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzh:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzi:Lcom/google/android/gms/internal/play_billing/zzba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "cause"

    .line 3
    .line 4
    const-class v1, Ljava/lang/Throwable;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zza:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 11
    .line 12
    const-string v0, "ratelimit_count"

    .line 13
    .line 14
    const-class v1, Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 21
    .line 22
    const-string v0, "sampling_count"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 29
    .line 30
    const-string v0, "ratelimit_period"

    .line 31
    .line 32
    const-class v2, Lcom/google/android/gms/internal/play_billing/zzau;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzd:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 39
    .line 40
    const-string v0, "skipped"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zze:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzav;

    .line 49
    .line 50
    const-class v1, Ljava/lang/Object;

    .line 51
    const/4 v2, 0x1

    .line 52
    .line 53
    const-string v3, "group_by"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 57
    .line 58
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzf:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 59
    .line 60
    const-string v0, "forced"

    .line 61
    .line 62
    const-class v1, Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzg:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 69
    .line 70
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaw;

    .line 71
    .line 72
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcy;

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    const-string v3, "tags"

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzaw;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 79
    .line 80
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzh:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 81
    .line 82
    const-string v0, "stack_size"

    .line 83
    .line 84
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzbb;

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzi:Lcom/google/android/gms/internal/play_billing/zzba;

    .line 91
    return-void
.end method
