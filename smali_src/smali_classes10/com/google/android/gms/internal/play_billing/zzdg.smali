.class public abstract Lcom/google/android/gms/internal/play_billing/zzdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzdg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzdf<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzgc;"
    }
.end annotation


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzdg;->zza:I

    return-void
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/play_billing/zzgm;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/play_billing/zzdw;
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zze()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzdw;->zzb:Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzz([BII)Lcom/google/android/gms/internal/play_billing/zzee;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zzr(Lcom/google/android/gms/internal/play_billing/zzee;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzA()V

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdt;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    new-instance v2, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v4, "Serializing "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, " to a ByteString threw an IOException (should never happen)."

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw v2
.end method

.method public final zzc()[B
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zze()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzz([BII)Lcom/google/android/gms/internal/play_billing/zzee;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zzr(Lcom/google/android/gms/internal/play_billing/zzee;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v4, "Serializing "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, " to a byte array threw an IOException (should never happen)."

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    throw v2
.end method
