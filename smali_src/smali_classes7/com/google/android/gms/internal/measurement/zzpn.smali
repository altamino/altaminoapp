.class public final Lcom/google/android/gms/internal/measurement/zzpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzm:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzn:Lcom/google/android/gms/internal/measurement/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzgn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgv;

    .line 3
    .line 4
    const-string v1, "com.google.android.gms.measurement"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgv;-><init>(Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgv;->zzb()Lcom/google/android/gms/internal/measurement/zzgv;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgv;->zza()Lcom/google/android/gms/internal/measurement/zzgv;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "measurement.redaction.app_instance_id"

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 29
    .line 30
    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzb:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 37
    .line 38
    const-string v1, "measurement.redaction.config_redacted_fields"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzc:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 45
    .line 46
    const-string v1, "measurement.redaction.device_info"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzd:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 53
    .line 54
    const-string v1, "measurement.redaction.e_tag"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zze:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 61
    .line 62
    const-string v1, "measurement.redaction.enhanced_uid"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzf:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 69
    .line 70
    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzg:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 77
    .line 78
    const-string v1, "measurement.redaction.google_signals"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzh:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 85
    .line 86
    const-string v1, "measurement.redaction.no_aiid_in_config_request"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzi:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 93
    .line 94
    const-string v1, "measurement.redaction.retain_major_os_version"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzj:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 101
    .line 102
    const-string v1, "measurement.redaction.scion_payload_generator"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzk:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 109
    .line 110
    const-string v1, "measurement.redaction.upload_redacted_fields"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzl:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 117
    .line 118
    const-string v1, "measurement.redaction.upload_subdomain_override"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpn;->zzm:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 125
    .line 126
    const-string v1, "measurement.redaction.user_id"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgv;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzgn;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zzn:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zzj:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zzk:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method
