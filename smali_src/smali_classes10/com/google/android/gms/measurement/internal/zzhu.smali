.class final Lcom/google/android/gms/measurement/internal/zzhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/measurement/internal/zzam;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhj;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzr()V

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzam;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhu;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method
