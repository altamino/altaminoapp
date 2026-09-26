.class final Lcom/android/billingclient/api/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/s1;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n0;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/s1;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/s1;-><init>(Lcom/android/billingclient/api/t1;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/q1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/v0;Lcom/android/billingclient/api/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/s1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3, p2}, Lcom/android/billingclient/api/s1;-><init>(Lcom/android/billingclient/api/t1;Lcom/android/billingclient/api/v0;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/q1;)V

    iput-object p1, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/t1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/t1;)Lcom/android/billingclient/api/s1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    return-object p0
.end method


# virtual methods
.method final c()Lcom/android/billingclient/api/v0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/billingclient/api/s1;->a(Lcom/android/billingclient/api/s1;)Lcom/android/billingclient/api/v0;

    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method final d()Lcom/android/billingclient/api/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/billingclient/api/s1;->b(Lcom/android/billingclient/api/s1;)Lcom/android/billingclient/api/p;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final e()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/s1;->d(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method final f(Z)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    .line 3
    .line 4
    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/t1;->zzb:Lcom/android/billingclient/api/s1;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/billingclient/api/t1;->zza:Landroid/content/Context;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/billingclient/api/s1;->c(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 30
    return-void
.end method
