.class public abstract Lcom/google/android/gms/internal/measurement/zzix$zzd;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzix$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/zziq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziq;->zzb()Lcom/google/android/gms/internal/measurement/zziq;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 10
    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/measurement/zziq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziq;->zzf()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziq;->clone()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/gms/internal/measurement/zziq;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    .line 21
    return-object v0
.end method
