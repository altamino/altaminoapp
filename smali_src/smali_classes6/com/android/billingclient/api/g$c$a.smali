.class public Lcom/android/billingclient/api/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:I

.field private zze:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/g$c$a;->zzd:I

    iput p1, p0, Lcom/android/billingclient/api/g$c$a;->zze:I

    return-void
.end method

.method static synthetic b(Lcom/android/billingclient/api/g$c$a;)Lcom/android/billingclient/api/g$c$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/g$c$a;->zzc:Z

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/g$c;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/g$c$a;->zza:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/android/billingclient/api/g$c$a;->zzb:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v3

    .line 26
    xor-int/2addr v2, v3

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    .line 41
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/android/billingclient/api/g$c$a;->zzc:Z

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    if-nez v0, :cond_5

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v1, "Old SKU purchase information(token/id) or original external transaction id must be provided."

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    .line 58
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/billingclient/api/g$c;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/g$c;-><init>(Lcom/android/billingclient/api/k0;)V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/billingclient/api/g$c$a;->zza:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/android/billingclient/api/g$c;->f(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V

    .line 67
    .line 68
    iget v1, p0, Lcom/android/billingclient/api/g$c$a;->zzd:I

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/android/billingclient/api/g$c;->h(Lcom/android/billingclient/api/g$c;I)V

    .line 72
    .line 73
    iget v1, p0, Lcom/android/billingclient/api/g$c$a;->zze:I

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/android/billingclient/api/g$c;->i(Lcom/android/billingclient/api/g$c;I)V

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/billingclient/api/g$c$a;->zzb:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/android/billingclient/api/g$c;->g(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V

    .line 82
    return-object v0
.end method
