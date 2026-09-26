.class final Lcom/google/android/gms/internal/measurement/zzig$zza;
.super Lcom/google/android/gms/internal/measurement/zzig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I

.field private zze:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Lcom/google/android/gms/internal/measurement/zzih;)V

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    array-length p2, p1

    .line 8
    sub-int/2addr p2, p3

    .line 9
    or-int/2addr p2, p3

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-ltz p2, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 19
    .line 20
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    const/4 v1, 0x3

    .line 25
    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    array-length p1, p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    aput-object p1, v1, v0

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    aput-object v0, v1, p1

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    aput-object p3, v1, p1

    .line 48
    .line 49
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p2

    .line 58
    .line 59
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string p2, "buffer"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method private final zzc([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 1
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 2
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    .line 13
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 14
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 16
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzkj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    const/4 v2, 0x2

    .line 38
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(II)V

    .line 39
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzkj;)V

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzlb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 33
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Lcom/google/android/gms/internal/measurement/zzlb;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zza:Lcom/google/android/gms/internal/measurement/zzij;

    .line 34
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    int-to-byte p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(B)V

    return-void
.end method

.method public final zza(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    .line 21
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 22
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 23
    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 24
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 25
    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 26
    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 27
    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 28
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzhm;->zza(Lcom/google/android/gms/internal/measurement/zzhn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzkj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkj;->zzbw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 36
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 48
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzmk;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc([BII)V

    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(I)V

    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(II)V

    .line 9
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(ILcom/google/android/gms/internal/measurement/zzhm;)V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    return-void
.end method

.method public final zzb(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzc()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 14
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zza([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 15
    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzmg;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 16
    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    .line 18
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzc([BII)V

    return-void
.end method

.method public final zzc(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 6
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 7
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zze:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzig$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzig$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    .line 8
    return-void
.end method
