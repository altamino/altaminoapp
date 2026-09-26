.class final Lcom/google/android/gms/measurement/internal/zzjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zzb:J

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZLcom/google/android/gms/measurement/internal/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zze:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzd:Lcom/google/android/gms/measurement/internal/zzih;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zze:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zze:Lcom/google/android/gms/measurement/internal/zziq;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 12
    .line 13
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:J

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:Z

    .line 17
    .line 18
    .line 19
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZZ)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzps;->zza()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zze:Lcom/google/android/gms/measurement/internal/zziq;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbs:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zze:Lcom/google/android/gms/measurement/internal/zziq;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzd:Lcom/google/android/gms/measurement/internal/zzih;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 49
    :cond_0
    return-void
.end method
