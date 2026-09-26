.class public Lcom/android/billingclient/api/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private zza:Lcom/android/billingclient/api/l;

.field private zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic d(Lcom/android/billingclient/api/g$b$a;)Lcom/android/billingclient/api/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/g$b$a;->zza:Lcom/android/billingclient/api/l;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/android/billingclient/api/g$b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/g$b$a;->zzb:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/g$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g$b$a;->zza:Lcom/android/billingclient/api/l;

    .line 3
    .line 4
    const-string v1, "ProductDetails is required for constructing ProductDetailsParams."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/g$b$a;->zzb:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "offerToken is required for constructing ProductDetailsParams."

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lcom/android/billingclient/api/g$b;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/g$b;-><init>(Lcom/android/billingclient/api/g$b$a;Lcom/android/billingclient/api/i0;)V

    .line 22
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/g$b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$b$a;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/android/billingclient/api/l;)Lcom/android/billingclient/api/g$b$a;
    .locals 1
    .param p1    # Lcom/android/billingclient/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/g$b$a;->zza:Lcom/android/billingclient/api/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/l;->a()Lcom/android/billingclient/api/l$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/billingclient/api/l;->a()Lcom/android/billingclient/api/l$a;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/billingclient/api/l;->a()Lcom/android/billingclient/api/l$a;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/l$a;->a()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/billingclient/api/g$b$a;->zzb:Ljava/lang/String;

    .line 26
    :cond_0
    return-object p0
.end method
