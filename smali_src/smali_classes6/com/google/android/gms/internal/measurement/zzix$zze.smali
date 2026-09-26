.class public final Lcom/google/android/gms/internal/measurement/zzix$zze;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation


# static fields
.field public static final enum zza:I = 0x1

.field public static final enum zzb:I = 0x2

.field public static final enum zzc:I = 0x3

.field public static final enum zzd:I = 0x4

.field public static final enum zze:I = 0x5

.field public static final enum zzf:I = 0x6

.field public static final enum zzg:I = 0x7

.field private static final synthetic zzh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v3

    aput v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzh:[I

    return-void
.end method

.method public static zza()[I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzh:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    return-object v0
.end method
