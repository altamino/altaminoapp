.class final Lcom/google/android/gms/internal/play_billing/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzgc;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzek;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzek;->zzc(Lcom/google/android/gms/internal/play_billing/zzgc;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzb(Ljava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    return v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzi()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zzk()Lcom/google/android/gms/internal/play_billing/zzgb;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgb;->zze()Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzg(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zzb(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzp(Lcom/google/android/gms/internal/play_billing/zzhd;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 16
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzdj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 4
    .line 5
    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 9
    move-result-object p4

    .line 10
    .line 11
    if-eq p3, p4, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzf()Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 19
    .line 20
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
