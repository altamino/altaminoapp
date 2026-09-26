.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/firebase/analytics/connector/a$b;

.field private zzb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field private zzc:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/a$b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->zza:Lcom/google/firebase/analytics/connector/a$b;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->zzb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 8
    .line 9
    new-instance p1, Lcom/google/firebase/analytics/connector/internal/e;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->zzc:Lcom/google/firebase/analytics/connector/internal/e;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->zzb:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener;)V

    .line 20
    return-void
.end method

.method static bridge synthetic a(Lcom/google/firebase/analytics/connector/internal/f;)Lcom/google/firebase/analytics/connector/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/analytics/connector/internal/f;->zza:Lcom/google/firebase/analytics/connector/a$b;

    return-object p0
.end method
