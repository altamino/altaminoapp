.class final Lcom/google/android/gms/measurement/internal/zzhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzio;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhg;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/internal/measurement/zzdd;)V

    .line 17
    return-void
.end method
