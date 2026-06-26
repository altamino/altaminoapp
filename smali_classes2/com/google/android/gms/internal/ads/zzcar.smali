.class final synthetic Lcom/google/android/gms/internal/ads/zzcar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfqz:Lcom/google/android/gms/internal/ads/zzcaq;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzfrb:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcaq;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfqz:Lcom/google/android/gms/internal/ads/zzcaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfrb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzfrb:Lorg/json/JSONObject;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbyt;-><init>()V

    const-string v4, "template_id"

    const/4 v5, -0x1

    .line 4
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbyt;->zzdn(I)V

    const-string v4, "custom_template_id"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbyt;->zzfl(Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyt;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgld:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyt;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmw;

    const-string v1, "Unexpected custom template id in the response."

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmw;

    const-string v1, "No custom template id for custom template ad response."

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string v0, "rating"

    .line 15
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbyt;->setStarRating(D)V

    const-string v0, "headline"

    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzdpc:Z

    if-eqz v1, :cond_3

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->zzwe()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    :cond_3
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    .line 23
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_to_action"

    .line 24
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "store"

    .line 25
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 26
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "advertiser"

    .line 27
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 8
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmw;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v1

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid template ID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
