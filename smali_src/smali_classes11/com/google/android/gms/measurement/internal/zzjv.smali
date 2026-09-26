.class final Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zzb:J

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JJZLcom/google/android/gms/measurement/internal/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    .line 9
    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Z

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Lcom/google/android/gms/measurement/internal/zzih;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:J

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zza(JZ)V

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    .line 22
    const/4 v8, 0x1

    .line 23
    .line 24
    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Z

    .line 25
    .line 26
    .line 27
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZZ)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzps;->zza()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbs:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Lcom/google/android/gms/measurement/internal/zzih;

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 57
    :cond_0
    return-void
.end method
