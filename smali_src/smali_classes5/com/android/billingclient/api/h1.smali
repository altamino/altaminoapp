.class final Lcom/android/billingclient/api/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/android/billingclient/api/h;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/h1;->zza:Lcom/android/billingclient/api/h;

    iput p2, p0, Lcom/android/billingclient/api/h1;->zzb:I

    return-void
.end method


# virtual methods
.method final a()Lcom/android/billingclient/api/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/h1;->zza:Lcom/android/billingclient/api/h;

    return-object v0
.end method

.method final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/h1;->zzb:I

    return v0
.end method
