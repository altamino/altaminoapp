.class final Lcom/google/android/gms/measurement/internal/zzhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzs()V

    .line 28
    .line 29
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    const/16 v2, 0x64

    .line 56
    .line 57
    :goto_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzih;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzmp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzih;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    const-string v5, "Setting consent, package, consent"

    .line 78
    .line 79
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzih;->zzc(Lcom/google/android/gms/measurement/internal/zzih;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzmp;->zzd(Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzcm:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzay;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzay;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzay;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v3

    .line 127
    .line 128
    if-nez v3, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    const-string v4, "Setting DMA consent. package, consent"

    .line 139
    .line 140
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;)V

    .line 149
    :cond_2
    return-void
.end method
