.class final Lcom/google/android/gms/measurement/internal/zzkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkh;Lcom/google/android/gms/measurement/internal/zzki;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Lcom/google/android/gms/measurement/internal/zzkh;Lcom/google/android/gms/measurement/internal/zzki;ZJ)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkh;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 23
    return-void
.end method
