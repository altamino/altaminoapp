.class public final Lcom/android/billingclient/api/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/android/billingclient/api/l$c;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/android/billingclient/api/a1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "basePlanId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/billingclient/api/l$d;->zza:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "offerId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-ne v3, v1, :cond_0

    .line 27
    move-object v0, v2

    .line 28
    .line 29
    :cond_0
    iput-object v0, p0, Lcom/android/billingclient/api/l$d;->zzb:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "offerIdToken"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/billingclient/api/l$d;->zzc:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lcom/android/billingclient/api/l$c;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "pricingPhases"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/l$c;-><init>(Lorg/json/JSONArray;)V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/billingclient/api/l$d;->zzd:Lcom/android/billingclient/api/l$c;

    .line 53
    .line 54
    const-string v0, "installmentPlanDetails"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_1
    new-instance v2, Lcom/android/billingclient/api/a1;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v0}, Lcom/android/billingclient/api/a1;-><init>(Lorg/json/JSONObject;)V

    .line 67
    .line 68
    :goto_0
    iput-object v2, p0, Lcom/android/billingclient/api/l$d;->zzf:Lcom/android/billingclient/api/a1;

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "offerTags"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 87
    move-result v2

    .line 88
    .line 89
    if-ge v1, v2, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_2
    iput-object v0, p0, Lcom/android/billingclient/api/l$d;->zze:Ljava/util/List;

    .line 102
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l$d;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/android/billingclient/api/l$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l$d;->zzd:Lcom/android/billingclient/api/l$c;

    return-object v0
.end method
