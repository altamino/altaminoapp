.class Lcom/android/billingclient/api/e;
.super Lcom/android/billingclient/api/BillingClient;
.source "SourceFile"


# instance fields
.field private zzA:Ljava/util/concurrent/ExecutorService;

.field private volatile zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Handler;

.field private volatile zzd:Lcom/android/billingclient/api/t1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Landroid/content/Context;

.field private zzf:Lcom/android/billingclient/api/n0;

.field private volatile zzg:Lcom/google/android/gms/internal/play_billing/zzm;

.field private volatile zzh:Lcom/android/billingclient/api/e0;

.field private zzi:Z

.field private zzj:Z

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Lcom/android/billingclient/api/z0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzz:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/billingclient/api/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->zza:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->zzk:I

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/e;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzio;

    new-instance p3, Lcom/android/billingclient/api/s0;

    .line 8
    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/s0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    iput-object p3, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/z0;Landroid/content/Context;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 21
    invoke-static {}, Lcom/android/billingclient/api/e;->I()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->zza:I

    new-instance p6, Landroid/os/Handler;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->zzk:I

    iput-object v5, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/e;->k(Landroid/content/Context;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/z0;Lcom/android/billingclient/api/d;Ljava/lang/String;Lcom/android/billingclient/api/n0;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/z0;Landroid/content/Context;Lcom/android/billingclient/api/v0;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/e;->zza:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/e;->zzk:I

    .line 11
    invoke-static {}, Lcom/android/billingclient/api/e;->I()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 12
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/android/billingclient/api/e;->I()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    iget-object p3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzio;

    new-instance p4, Lcom/android/billingclient/api/s0;

    .line 17
    invoke-direct {p4, p3, p1}, Lcom/android/billingclient/api/s0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    iput-object p4, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 18
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/t1;

    iget-object p3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 19
    invoke-direct {p1, p3, p4, p5}, Lcom/android/billingclient/api/t1;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/v0;Lcom/android/billingclient/api/n0;)V

    iput-object p1, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    iput-object p2, p0, Lcom/android/billingclient/api/e;->zzy:Lcom/android/billingclient/api/z0;

    iget-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method static synthetic D(Lcom/android/billingclient/api/e;Ljava/lang/String;I)Lcom/android/billingclient/api/g1;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v2, "Querying owned items, item type: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v2, "BillingClient"

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iget-boolean v3, v1, Lcom/android/billingclient/api/e;->zzn:Z

    .line 25
    .line 26
    iget-boolean v4, v1, Lcom/android/billingclient/api/e;->zzv:Z

    .line 27
    .line 28
    iget-object v5, v1, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzd(ZZZZLjava/lang/String;)Landroid/os/Bundle;

    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v12, v4

    .line 37
    .line 38
    :goto_0
    const/16 v5, 0x9

    .line 39
    .line 40
    :try_start_0
    iget-boolean v8, v1, Lcom/android/billingclient/api/e;->zzn:Z

    .line 41
    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    iget-object v8, v1, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 45
    .line 46
    iget-boolean v9, v1, Lcom/android/billingclient/api/e;->zzv:Z

    .line 47
    .line 48
    if-eq v6, v9, :cond_0

    .line 49
    move v9, v5

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    const/16 v9, 0x13

    .line 53
    .line 54
    :goto_1
    iget-object v10, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v10

    .line 59
    .line 60
    move-object/from16 v11, p1

    .line 61
    move-object v13, v3

    .line 62
    .line 63
    .line 64
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/zzm;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    move-object/from16 v11, p1

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_1
    iget-object v8, v1, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 74
    .line 75
    iget-object v9, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    const/4 v10, 0x3

    .line 81
    .line 82
    move-object/from16 v11, p1

    .line 83
    .line 84
    .line 85
    invoke-interface {v8, v10, v9, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzm;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 86
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    :goto_2
    const-string v9, "getPurchase()"

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v2, v9}, Lcom/android/billingclient/api/i1;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/h1;

    .line 92
    move-result-object v9

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Lcom/android/billingclient/api/h1;->a()Lcom/android/billingclient/api/h;

    .line 96
    move-result-object v10

    .line 97
    .line 98
    sget-object v12, Lcom/android/billingclient/api/p0;->zzl:Lcom/android/billingclient/api/h;

    .line 99
    .line 100
    if-eq v10, v12, :cond_2

    .line 101
    .line 102
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Lcom/android/billingclient/api/h1;->b()I

    .line 106
    move-result v1

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v5, v10}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 114
    .line 115
    new-instance v0, Lcom/android/billingclient/api/g1;

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v10, v4}, Lcom/android/billingclient/api/g1;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_2
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 126
    move-result-object v9

    .line 127
    .line 128
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 132
    move-result-object v10

    .line 133
    .line 134
    const-string v12, "INAPP_DATA_SIGNATURE_LIST"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 138
    move-result-object v12

    .line 139
    move v13, v7

    .line 140
    move v14, v13

    .line 141
    .line 142
    .line 143
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v15

    .line 145
    .line 146
    if-ge v13, v15, :cond_4

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v15

    .line 151
    .line 152
    check-cast v15, Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v16

    .line 157
    .line 158
    move-object/from16 v6, v16

    .line 159
    .line 160
    check-cast v6, Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v16

    .line 165
    .line 166
    check-cast v16, Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 171
    .line 172
    const-string v4, "Sku is owned: "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v4

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    :try_start_1
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    .line 182
    .line 183
    .line 184
    invoke-direct {v4, v15, v6}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->h()Ljava/lang/String;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    .line 191
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    move-result v6

    .line 193
    .line 194
    if-eqz v6, :cond_3

    .line 195
    .line 196
    const-string v6, "BUG: empty/null token!"

    .line 197
    .line 198
    .line 199
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v14, 0x1

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    add-int/lit8 v13, v13, 0x1

    .line 206
    const/4 v4, 0x0

    .line 207
    const/4 v6, 0x1

    .line 208
    const/4 v7, 0x0

    .line 209
    goto :goto_3

    .line 210
    :catch_1
    move-exception v0

    .line 211
    .line 212
    const-string v3, "Got an exception trying to decode the purchase!"

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .line 217
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 218
    .line 219
    sget-object v1, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 220
    .line 221
    const/16 v2, 0x33

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v5, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 229
    .line 230
    new-instance v0, Lcom/android/billingclient/api/g1;

    .line 231
    const/4 v2, 0x0

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/g1;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 235
    goto :goto_5

    .line 236
    .line 237
    :cond_4
    if-eqz v14, :cond_5

    .line 238
    .line 239
    iget-object v4, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 240
    .line 241
    const/16 v6, 0x1a

    .line 242
    .line 243
    sget-object v7, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 244
    .line 245
    .line 246
    invoke-static {v6, v5, v7}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 247
    move-result-object v5

    .line 248
    .line 249
    .line 250
    invoke-interface {v4, v5}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 251
    .line 252
    :cond_5
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object v12

    .line 257
    .line 258
    .line 259
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    .line 262
    const-string v5, "Continuation token: "

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    move-result-object v4

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 273
    move-result v4

    .line 274
    .line 275
    if-eqz v4, :cond_6

    .line 276
    .line 277
    new-instance v1, Lcom/android/billingclient/api/g1;

    .line 278
    .line 279
    sget-object v2, Lcom/android/billingclient/api/p0;->zzl:Lcom/android/billingclient/api/h;

    .line 280
    .line 281
    .line 282
    invoke-direct {v1, v2, v0}, Lcom/android/billingclient/api/g1;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 283
    move-object v0, v1

    .line 284
    goto :goto_5

    .line 285
    :cond_6
    const/4 v4, 0x0

    .line 286
    const/4 v6, 0x1

    .line 287
    const/4 v7, 0x0

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :goto_4
    iget-object v1, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 292
    .line 293
    sget-object v3, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 294
    .line 295
    const/16 v4, 0x34

    .line 296
    .line 297
    .line 298
    invoke-static {v4, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 299
    move-result-object v4

    .line 300
    .line 301
    .line 302
    invoke-interface {v1, v4}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 303
    .line 304
    const-string v1, "Got exception trying to get purchasesm try to reconnect"

    .line 305
    .line 306
    .line 307
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .line 309
    new-instance v0, Lcom/android/billingclient/api/g1;

    .line 310
    const/4 v1, 0x0

    .line 311
    .line 312
    .line 313
    invoke-direct {v0, v3, v1}, Lcom/android/billingclient/api/g1;-><init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 314
    :goto_5
    return-object v0
.end method

.method private final E()Landroid/os/Handler;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    :goto_0
    return-object v0
.end method

.method private final F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/android/billingclient/api/v1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/v1;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/h;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-object p1
.end method

.method static bridge synthetic G(Lcom/android/billingclient/api/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/e;->zzk:I

    return p0
.end method

.method private final H()Lcom/android/billingclient/api/h;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 16
    :goto_1
    return-object v0
.end method

.method private static I()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "VERSION_NAME"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    .line 22
    :catch_0
    const-string v0, "6.1.0"

    .line 23
    return-object v0
.end method

.method private final J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 3
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzA:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/play_billing/zzb;->zza:I

    .line 7
    .line 8
    new-instance v1, Lcom/android/billingclient/api/z;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/e;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/billingclient/api/e;->zzA:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzA:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    long-to-double p2, p2

    .line 25
    .line 26
    new-instance v0, Lcom/android/billingclient/api/x1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, p4}, Lcom/android/billingclient/api/x1;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v1, 0x3fee666666666666L    # 0.95

    .line 35
    mul-double/2addr p2, v1

    .line 36
    double-to-long p2, p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-object p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    .line 43
    const-string p2, "BillingClient"

    .line 44
    .line 45
    const-string p3, "Async task throws exception!"

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method private final K(Ljava/lang/String;Lcom/android/billingclient/api/o;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 11
    .line 12
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string p1, "BillingClient"

    .line 37
    .line 38
    const-string v0, "Please provide a valid product type."

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 44
    .line 45
    sget-object v0, Lcom/android/billingclient/api/p0;->zzg:Lcom/android/billingclient/api/h;

    .line 46
    .line 47
    const/16 v2, 0x32

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 62
    return-void

    .line 63
    .line 64
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/a0;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/a0;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Lcom/android/billingclient/api/o;)V

    .line 68
    .line 69
    const-wide/16 v4, 0x7530

    .line 70
    .line 71
    new-instance v6, Lcom/android/billingclient/api/a2;

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/a2;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/o;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    .line 78
    move-result-object v7

    .line 79
    move-object v2, p0

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 92
    .line 93
    const/16 v2, 0x19

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 108
    :cond_2
    return-void
.end method

.method static bridge synthetic L(Lcom/android/billingclient/api/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic O(Lcom/android/billingclient/api/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic P(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    return-object p0
.end method

.method static bridge synthetic Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    return-object p0
.end method

.method static bridge synthetic R(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic S(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/zzm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    return-object p0
.end method

.method static bridge synthetic X(Lcom/android/billingclient/api/e;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    const-wide/16 v2, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic Y(Lcom/android/billingclient/api/e;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/e;->zza:I

    return-void
.end method

.method static bridge synthetic Z(Lcom/android/billingclient/api/e;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/e;->zzk:I

    return-void
.end method

.method static bridge synthetic a0(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzo:Z

    return-void
.end method

.method static bridge synthetic b0(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzp:Z

    return-void
.end method

.method static bridge synthetic c0(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzq:Z

    return-void
.end method

.method static bridge synthetic d0(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzr:Z

    return-void
.end method

.method private k(Landroid/content/Context;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/z0;Lcom/android/billingclient/api/d;Ljava/lang/String;Lcom/android/billingclient/api/n0;)V
    .locals 0
    .param p4    # Lcom/android/billingclient/api/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/n0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzv()Lcom/google/android/gms/internal/play_billing/zzin;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzin;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    .line 14
    .line 15
    iget-object p5, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object p5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzin;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;

    .line 23
    .line 24
    if-eqz p6, :cond_0

    .line 25
    .line 26
    iput-object p6, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzio;

    .line 36
    .line 37
    new-instance p6, Lcom/android/billingclient/api/s0;

    .line 38
    .line 39
    .line 40
    invoke-direct {p6, p5, p1}, Lcom/android/billingclient/api/s0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V

    .line 41
    .line 42
    iput-object p6, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 43
    .line 44
    :goto_0
    if-nez p2, :cond_1

    .line 45
    .line 46
    const-string p1, "BillingClient"

    .line 47
    .line 48
    const-string p5, "Billing client should have a valid listener but the provided is null."

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    :cond_1
    new-instance p1, Lcom/android/billingclient/api/t1;

    .line 54
    .line 55
    iget-object p5, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 56
    .line 57
    iget-object p6, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p5, p2, p4, p6}, Lcom/android/billingclient/api/t1;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n0;)V

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/android/billingclient/api/e;->zzy:Lcom/android/billingclient/api/z0;

    .line 65
    .line 66
    if-eqz p4, :cond_2

    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    .line 71
    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzz:Z

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    return-void
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzs:Z

    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzt:Z

    return-void
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzu:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzv:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzw:Z

    return-void
.end method

.method static bridge synthetic q(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzx:Z

    return-void
.end method

.method static bridge synthetic r(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzl:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzm:Z

    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.billingclient"

    invoke-static {p1, v0}, Lcom/safedk/android/analytics/brandsafety/BrandSafetyUtils;->detectAdClick(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzn:Z

    return-void
.end method

.method static bridge synthetic u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    return-void
.end method

.method static bridge synthetic v(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzj:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/android/billingclient/api/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/e;->zzi:Z

    return-void
.end method


# virtual methods
.method final synthetic A(Lcom/android/billingclient/api/m;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 3
    .line 4
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    const/4 v3, 0x7

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 23
    return-void
.end method

.method final synthetic B(Lcom/android/billingclient/api/o;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 3
    .line 4
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    const/16 v3, 0x9

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 23
    return-void
.end method

.method final synthetic C(Lcom/android/billingclient/api/t;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 3
    .line 4
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1, v0}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 20
    return-void
.end method

.method final synthetic M(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 3
    .line 4
    iget-object p4, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    const/4 v5, 0x0

    .line 10
    move v1, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v6, p5

    .line 14
    .line 15
    .line 16
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzm;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method final synthetic N(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    .line 14
    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzm;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method final synthetic T(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "BillingClient"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/b;->a()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "playBillingLibraryVersion"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    const/16 v4, 0x9

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v4, v3, p1, v5}, Lcom/google/android/gms/internal/play_billing/zzm;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p1}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 50
    return-object v1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    .line 53
    const-string v2, "Error acknowledge purchase!"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 59
    .line 60
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 61
    .line 62
    const/16 v2, 0x1c

    .line 63
    const/4 v3, 0x3

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 74
    return-object v1
.end method

.method final synthetic U(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "BillingClient"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v3, "Consuming purchase with token: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/android/billingclient/api/e;->zzn:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    iget-boolean v4, p0, Lcom/android/billingclient/api/e;->zzn:Z

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v6, Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    .line 53
    const-string/jumbo v4, "playBillingLibraryVersion"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_0
    :goto_0
    const/16 v4, 0x9

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v4, v3, p1, v6}, Lcom/google/android/gms/internal/play_billing/zzm;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    const-string v3, "RESPONSE_CODE"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 71
    move-result v3

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x3

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v4, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzm;->zza(ILjava/lang/String;Ljava/lang/String;)I

    .line 89
    move-result v3

    .line 90
    .line 91
    const-string v2, ""

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {v3, v2}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    const-string v3, "Successfully consumed purchase."

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, v2, p1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v5, "Error consuming purchase with token. Response code: "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    iget-object v3, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 129
    .line 130
    const/16 v4, 0x17

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    .line 137
    invoke-interface {v3, v4}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p2, v2, p1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_3

    .line 142
    .line 143
    :goto_2
    const-string v3, "Error consuming purchase!"

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 149
    .line 150
    sget-object v2, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 151
    .line 152
    const/16 v3, 0x1d

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p2, v2, p1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 163
    :goto_3
    const/4 p1, 0x0

    .line 164
    return-object p1
.end method

.method final synthetic V(Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    const-string v2, "BillingClient"

    .line 5
    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/q;->c()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/q;->b()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 17
    move-result-object v10

    .line 18
    .line 19
    .line 20
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 21
    move-result v11

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    const/4 v13, 0x0

    .line 24
    .line 25
    if-ge v4, v11, :cond_e

    .line 26
    .line 27
    add-int/lit8 v14, v4, 0x14

    .line 28
    .line 29
    if-le v14, v11, :cond_0

    .line 30
    move v5, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v5, v14

    .line 33
    .line 34
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-interface {v10, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 50
    move-result v5

    .line 51
    const/4 v7, 0x0

    .line 52
    .line 53
    :goto_2
    if-ge v7, v5, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v8

    .line 58
    .line 59
    check-cast v8, Lcom/android/billingclient/api/q$b;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/android/billingclient/api/q$b;->b()Ljava/lang/String;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    const-string v5, "ITEM_ID_LIST"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    .line 81
    iget-object v4, v1, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    const-string/jumbo v5, "playBillingLibraryVersion"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    :try_start_0
    iget-object v4, v1, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 90
    .line 91
    iget-boolean v7, v1, Lcom/android/billingclient/api/e;->zzw:Z

    .line 92
    const/4 v9, 0x1

    .line 93
    .line 94
    if-eq v9, v7, :cond_2

    .line 95
    .line 96
    const/16 v7, 0x11

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_2
    const/16 v7, 0x14

    .line 100
    .line 101
    :goto_3
    iget-object v12, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 105
    move-result-object v12

    .line 106
    .line 107
    iget-object v15, v1, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v16

    .line 112
    .line 113
    if-eqz v16, :cond_3

    .line 114
    .line 115
    iget-object v13, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/4 v4, 0x6

    .line 122
    const/4 v10, 0x7

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_3
    :goto_4
    new-instance v13, Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    const-string v5, "enablePendingPurchases"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13, v5, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    .line 139
    const-string v5, "SKU_DETAILS_RESPONSE_FORMAT"

    .line 140
    .line 141
    const-string v15, "PRODUCT_DETAILS"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    new-instance v5, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    new-instance v15, Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 158
    move-result v9

    .line 159
    .line 160
    move-object/from16 v18, v10

    .line 161
    const/4 v10, 0x0

    .line 162
    .line 163
    const/16 v19, 0x0

    .line 164
    .line 165
    const/16 v20, 0x0

    .line 166
    .line 167
    :goto_5
    if-ge v10, v9, :cond_5

    .line 168
    .line 169
    .line 170
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v21

    .line 172
    .line 173
    check-cast v21, Lcom/android/billingclient/api/q$b;

    .line 174
    .line 175
    move-object/from16 v22, v6

    .line 176
    const/4 v6, 0x0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    move-result v23

    .line 184
    const/4 v6, 0x1

    .line 185
    .line 186
    xor-int/lit8 v17, v23, 0x1

    .line 187
    .line 188
    or-int v19, v19, v17

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/q$b;->c()Ljava/lang/String;

    .line 192
    move-result-object v6

    .line 193
    .line 194
    move/from16 v21, v9

    .line 195
    .line 196
    const-string v9, "first_party"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v6

    .line 201
    .line 202
    if-eqz v6, :cond_4

    .line 203
    .line 204
    const-string v6, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 205
    const/4 v9, 0x0

    .line 206
    .line 207
    .line 208
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/play_billing/zzx;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    const/16 v20, 0x1

    .line 214
    .line 215
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 216
    .line 217
    move/from16 v9, v21

    .line 218
    .line 219
    move-object/from16 v6, v22

    .line 220
    goto :goto_5

    .line 221
    .line 222
    :cond_5
    if-eqz v19, :cond_6

    .line 223
    .line 224
    const-string v6, "SKU_OFFER_ID_TOKEN_LIST"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    move-result v5

    .line 232
    .line 233
    if-nez v5, :cond_7

    .line 234
    .line 235
    const-string v5, "SKU_SERIALIZED_DOCID_LIST"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13, v5, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    .line 240
    :cond_7
    if-eqz v20, :cond_8

    .line 241
    const/4 v5, 0x0

    .line 242
    .line 243
    .line 244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    move-result v6

    .line 246
    .line 247
    if-nez v6, :cond_8

    .line 248
    .line 249
    const-string v6, "accountName"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_8
    move v5, v7

    .line 254
    move-object v6, v12

    .line 255
    move-object v7, v0

    .line 256
    const/4 v10, 0x7

    .line 257
    move-object v9, v13

    .line 258
    .line 259
    .line 260
    :try_start_1
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/play_billing/zzm;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 261
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    const/4 v5, 0x4

    .line 263
    .line 264
    const-string v6, "Item is unavailable for purchase."

    .line 265
    .line 266
    if-nez v4, :cond_9

    .line 267
    .line 268
    .line 269
    const-string/jumbo v0, "queryProductDetailsAsync got empty product details response."

    .line 270
    .line 271
    .line 272
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 275
    .line 276
    const/16 v2, 0x2c

    .line 277
    .line 278
    sget-object v4, Lcom/android/billingclient/api/p0;->zzB:Lcom/android/billingclient/api/h;

    .line 279
    .line 280
    .line 281
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 282
    move-result-object v2

    .line 283
    .line 284
    .line 285
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 286
    :goto_6
    move v12, v5

    .line 287
    .line 288
    goto/16 :goto_a

    .line 289
    .line 290
    :cond_9
    const-string v7, "DETAILS_LIST"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 294
    move-result v8

    .line 295
    .line 296
    if-nez v8, :cond_b

    .line 297
    .line 298
    .line 299
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 300
    move-result v12

    .line 301
    .line 302
    .line 303
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    move-result-object v6

    .line 305
    .line 306
    if-eqz v12, :cond_a

    .line 307
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    .line 326
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 329
    .line 330
    const/16 v2, 0x17

    .line 331
    .line 332
    .line 333
    invoke-static {v12, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 334
    move-result-object v4

    .line 335
    .line 336
    .line 337
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 338
    move-result-object v2

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 342
    .line 343
    goto/16 :goto_a

    .line 344
    .line 345
    :cond_a
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 346
    .line 347
    .line 348
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 351
    .line 352
    const/16 v2, 0x2d

    .line 353
    const/4 v4, 0x6

    .line 354
    .line 355
    .line 356
    invoke-static {v4, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 357
    move-result-object v5

    .line 358
    .line 359
    .line 360
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 361
    move-result-object v2

    .line 362
    .line 363
    .line 364
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 365
    const/4 v12, 0x6

    .line 366
    .line 367
    goto/16 :goto_a

    .line 368
    .line 369
    .line 370
    :cond_b
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 371
    move-result-object v4

    .line 372
    .line 373
    if-nez v4, :cond_c

    .line 374
    .line 375
    .line 376
    const-string/jumbo v0, "queryProductDetailsAsync got null response list"

    .line 377
    .line 378
    .line 379
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 382
    .line 383
    const/16 v2, 0x2e

    .line 384
    .line 385
    sget-object v4, Lcom/android/billingclient/api/p0;->zzB:Lcom/android/billingclient/api/h;

    .line 386
    .line 387
    .line 388
    invoke-static {v2, v10, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 389
    move-result-object v2

    .line 390
    .line 391
    .line 392
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 393
    goto :goto_6

    .line 394
    :cond_c
    const/4 v5, 0x0

    .line 395
    .line 396
    .line 397
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 398
    move-result v6

    .line 399
    .line 400
    if-ge v5, v6, :cond_d

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    move-result-object v6

    .line 405
    .line 406
    check-cast v6, Ljava/lang/String;

    .line 407
    .line 408
    :try_start_2
    new-instance v7, Lcom/android/billingclient/api/l;

    .line 409
    .line 410
    .line 411
    invoke-direct {v7, v6}, Lcom/android/billingclient/api/l;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 415
    move-result-object v6

    .line 416
    .line 417
    const-string v8, "Got product details: "

    .line 418
    .line 419
    .line 420
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    move-result-object v6

    .line 422
    .line 423
    .line 424
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    add-int/lit8 v5, v5, 0x1

    .line 430
    goto :goto_7

    .line 431
    :catch_1
    move-exception v0

    .line 432
    .line 433
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 434
    .line 435
    .line 436
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .line 438
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 439
    .line 440
    const/16 v2, 0x2f

    .line 441
    .line 442
    const-string v6, "Error trying to decode SkuDetails."

    .line 443
    const/4 v4, 0x6

    .line 444
    .line 445
    .line 446
    invoke-static {v4, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 447
    move-result-object v5

    .line 448
    .line 449
    .line 450
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 451
    move-result-object v2

    .line 452
    .line 453
    .line 454
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 455
    :goto_8
    move v12, v4

    .line 456
    goto :goto_a

    .line 457
    :cond_d
    move v4, v14

    .line 458
    .line 459
    move-object/from16 v10, v18

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    :catch_2
    move-exception v0

    .line 463
    const/4 v4, 0x6

    .line 464
    .line 465
    .line 466
    :goto_9
    const-string/jumbo v5, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 467
    .line 468
    .line 469
    invoke-static {v2, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    .line 471
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 472
    .line 473
    const/16 v2, 0x2b

    .line 474
    .line 475
    sget-object v5, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 476
    .line 477
    .line 478
    invoke-static {v2, v10, v5}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 479
    move-result-object v2

    .line 480
    .line 481
    .line 482
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 483
    .line 484
    const-string v6, "An internal error occurred."

    .line 485
    goto :goto_8

    .line 486
    .line 487
    :cond_e
    const-string v6, ""

    .line 488
    const/4 v12, 0x0

    .line 489
    .line 490
    .line 491
    :goto_a
    invoke-static {v12, v6}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 492
    move-result-object v0

    .line 493
    .line 494
    move-object/from16 v2, p2

    .line 495
    .line 496
    .line 497
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    return-object v2
.end method

.method final synthetic W(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/t;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    const-string v2, "BillingClient"

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    const/4 v6, 0x0

    .line 16
    .line 17
    if-ge v5, v3, :cond_9

    .line 18
    .line 19
    add-int/lit8 v7, v5, 0x14

    .line 20
    .line 21
    if-le v7, v3, :cond_0

    .line 22
    move v8, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v8, v7

    .line 25
    .line 26
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 27
    .line 28
    move-object/from16 v10, p2

    .line 29
    .line 30
    .line 31
    invoke-interface {v10, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    new-instance v15, Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    const-string v5, "ITEM_ID_LIST"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15, v5, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    iget-object v5, v1, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v8, "playBillingLibraryVersion"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v15, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    const/16 v5, 0x8

    .line 56
    .line 57
    :try_start_0
    iget-boolean v9, v1, Lcom/android/billingclient/api/e;->zzo:Z

    .line 58
    .line 59
    if-eqz v9, :cond_3

    .line 60
    .line 61
    iget-object v11, v1, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 62
    .line 63
    iget-object v9, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    move-result-object v13

    .line 68
    .line 69
    iget v9, v1, Lcom/android/billingclient/api/e;->zzk:I

    .line 70
    .line 71
    iget-object v12, v1, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v14, Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 77
    .line 78
    const/16 v4, 0x9

    .line 79
    .line 80
    if-lt v9, v4, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v14, v8, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_1
    :goto_2
    if-lt v9, v4, :cond_2

    .line 90
    .line 91
    const-string v4, "enablePendingPurchases"

    .line 92
    const/4 v8, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v14, v4, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    .line 97
    :cond_2
    const/16 v12, 0xa

    .line 98
    move-object v4, v14

    .line 99
    .line 100
    move-object/from16 v14, p1

    .line 101
    .line 102
    move-object/from16 v16, v4

    .line 103
    .line 104
    .line 105
    invoke-interface/range {v11 .. v16}, Lcom/google/android/gms/internal/play_billing/zzm;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    move-object/from16 v11, p1

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_3
    iget-object v4, v1, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 112
    .line 113
    iget-object v8, v1, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 117
    move-result-object v8

    .line 118
    const/4 v9, 0x3

    .line 119
    .line 120
    move-object/from16 v11, p1

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v9, v8, v11, v15}, Lcom/google/android/gms/internal/play_billing/zzm;->zzk(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 124
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_3
    const/4 v8, 0x4

    .line 126
    .line 127
    const-string v9, "Item is unavailable for purchase."

    .line 128
    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    .line 132
    const-string/jumbo v0, "querySkuDetailsAsync got null sku details list"

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 138
    .line 139
    const/16 v2, 0x2c

    .line 140
    .line 141
    sget-object v3, Lcom/android/billingclient/api/p0;->zzB:Lcom/android/billingclient/api/h;

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 149
    :goto_4
    move-object v0, v6

    .line 150
    move v4, v8

    .line 151
    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :cond_4
    const-string v12, "DETAILS_LIST"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 158
    move-result v13

    .line 159
    const/4 v14, 0x6

    .line 160
    .line 161
    if-nez v13, :cond_6

    .line 162
    .line 163
    .line 164
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 165
    move-result v3

    .line 166
    .line 167
    .line 168
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v9

    .line 170
    .line 171
    if-eqz v3, :cond_5

    .line 172
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v7, "getSkuDetails() failed. Response code: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    iget-object v2, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 194
    .line 195
    const/16 v4, 0x17

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v9}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 199
    move-result-object v7

    .line 200
    .line 201
    .line 202
    invoke-static {v4, v5, v7}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    .line 206
    invoke-interface {v2, v4}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 207
    move v4, v3

    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_5
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    iget-object v2, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 217
    .line 218
    const/16 v3, 0x2d

    .line 219
    .line 220
    .line 221
    invoke-static {v14, v9}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 222
    move-result-object v4

    .line 223
    .line 224
    .line 225
    invoke-static {v3, v5, v4}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 226
    move-result-object v3

    .line 227
    .line 228
    .line 229
    invoke-interface {v2, v3}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 230
    :goto_5
    move v4, v14

    .line 231
    .line 232
    goto/16 :goto_8

    .line 233
    .line 234
    .line 235
    :cond_6
    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 236
    move-result-object v4

    .line 237
    .line 238
    if-nez v4, :cond_7

    .line 239
    .line 240
    .line 241
    const-string/jumbo v0, "querySkuDetailsAsync got null response list"

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 247
    .line 248
    const/16 v2, 0x2e

    .line 249
    .line 250
    sget-object v3, Lcom/android/billingclient/api/p0;->zzB:Lcom/android/billingclient/api/h;

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    .line 257
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 258
    goto :goto_4

    .line 259
    :cond_7
    const/4 v8, 0x0

    .line 260
    .line 261
    .line 262
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 263
    move-result v9

    .line 264
    .line 265
    if-ge v8, v9, :cond_8

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v9

    .line 270
    .line 271
    check-cast v9, Ljava/lang/String;

    .line 272
    .line 273
    :try_start_1
    new-instance v12, Lcom/android/billingclient/api/SkuDetails;

    .line 274
    .line 275
    .line 276
    invoke-direct {v12, v9}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    move-result-object v9

    .line 281
    .line 282
    const-string v13, "Got sku details: "

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object v9

    .line 287
    .line 288
    .line 289
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    add-int/lit8 v8, v8, 0x1

    .line 295
    goto :goto_6

    .line 296
    :catch_1
    move-exception v0

    .line 297
    .line 298
    const-string v3, "Got a JSON exception trying to decode SkuDetails."

    .line 299
    .line 300
    .line 301
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 304
    .line 305
    const/16 v2, 0x2f

    .line 306
    .line 307
    const-string v9, "Error trying to decode SkuDetails."

    .line 308
    .line 309
    .line 310
    invoke-static {v14, v9}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 311
    move-result-object v3

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 315
    move-result-object v2

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 319
    move-object v0, v6

    .line 320
    goto :goto_5

    .line 321
    :cond_8
    move v5, v7

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    .line 326
    :goto_7
    const-string/jumbo v3, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 327
    .line 328
    .line 329
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    iget-object v0, v1, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 332
    .line 333
    const/16 v2, 0x2b

    .line 334
    .line 335
    sget-object v3, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v5, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 339
    move-result-object v2

    .line 340
    .line 341
    .line 342
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 343
    .line 344
    const-string v9, "Service connection is disconnected."

    .line 345
    const/4 v4, -0x1

    .line 346
    move-object v0, v6

    .line 347
    goto :goto_8

    .line 348
    .line 349
    :cond_9
    const-string v9, ""

    .line 350
    const/4 v4, 0x0

    .line 351
    .line 352
    .line 353
    :goto_8
    invoke-static {v4, v9}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 354
    move-result-object v2

    .line 355
    .line 356
    move-object/from16 v3, p4

    .line 357
    .line 358
    .line 359
    invoke-interface {v3, v2, v0}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 360
    return-object v6
.end method

.method public final a(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 10
    .line 11
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/b;->a()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string p1, "BillingClient"

    .line 36
    .line 37
    const-string v0, "Please provide a valid purchase token."

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 43
    .line 44
    sget-object v0, Lcom/android/billingclient/api/p0;->zzi:Lcom/android/billingclient/api/h;

    .line 45
    .line 46
    const/16 v2, 0x1a

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->zzn:Z

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 64
    .line 65
    sget-object v0, Lcom/android/billingclient/api/p0;->zzb:Lcom/android/billingclient/api/h;

    .line 66
    .line 67
    const/16 v2, 0x1b

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 78
    return-void

    .line 79
    .line 80
    :cond_2
    new-instance v3, Lcom/android/billingclient/api/y;

    .line 81
    .line 82
    .line 83
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/y;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)V

    .line 84
    .line 85
    const-wide/16 v4, 0x7530

    .line 86
    .line 87
    new-instance v6, Lcom/android/billingclient/api/w1;

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/w1;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/c;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    .line 94
    move-result-object v7

    .line 95
    move-object v2, p0

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 108
    .line 109
    const/16 v2, 0x19

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 120
    :cond_3
    return-void
.end method

.method public final b(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 10
    .line 11
    sget-object v2, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 12
    const/4 v3, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v2, p1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    new-instance v4, Lcom/android/billingclient/api/c2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, p0, p1, p2}, Lcom/android/billingclient/api/c2;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V

    .line 33
    .line 34
    const-wide/16 v5, 0x7530

    .line 35
    .line 36
    new-instance v7, Lcom/android/billingclient/api/d2;

    .line 37
    .line 38
    .line 39
    invoke-direct {v7, p0, p2, p1}, Lcom/android/billingclient/api/d2;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/i;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    .line 43
    move-result-object v8

    .line 44
    move-object v3, p0

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 57
    .line 58
    const/16 v3, 0x19

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "BillingClient"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 5
    .line 6
    const/16 v2, 0xc

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/billingclient/api/m0;->b(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/android/billingclient/api/n0;->c(Lcom/google/android/gms/internal/play_billing/zzic;)V

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/billingclient/api/t1;->e()V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_3

    .line 27
    :catch_0
    move-exception v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/billingclient/api/e0;->o()V

    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const-string v2, "Unbinding from service."

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 59
    .line 60
    iput-object v3, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 61
    .line 62
    :cond_2
    iput-object v3, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/billingclient/api/e;->zzA:Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 70
    .line 71
    iput-object v3, p0, Lcom/android/billingclient/api/e;->zzA:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :goto_1
    :try_start_1
    const-string v3, "There was an exception while ending connection!"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    :cond_3
    :goto_2
    iput v1, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 80
    return-void

    .line 81
    .line 82
    :goto_3
    iput v1, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 83
    throw v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/e;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzg:Lcom/google/android/gms/internal/play_billing/zzm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/app/Activity;Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/h;
    .locals 31

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v9, "BUY_INTENT"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "proxyPackageVersion"

    .line 10
    .line 11
    iget-object v2, v8, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 12
    const/4 v10, 0x2

    .line 13
    .line 14
    if-eqz v2, :cond_35

    .line 15
    .line 16
    iget-object v2, v8, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/billingclient/api/t1;->d()Lcom/android/billingclient/api/p;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-eqz v2, :cond_35

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 31
    .line 32
    sget-object v1, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 33
    .line 34
    .line 35
    invoke-static {v10, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 43
    return-object v1

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->h()Ljava/util/ArrayList;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->i()Ljava/util/List;

    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzak;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    check-cast v6, Lcom/android/billingclient/api/g$b;

    .line 65
    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    .line 74
    move-result-object v11

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 83
    move-result-object v7

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 87
    move-result-object v11

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11}, Lcom/android/billingclient/api/l;->c()Ljava/lang/String;

    .line 91
    move-result-object v11

    .line 92
    .line 93
    .line 94
    :goto_0
    const-string/jumbo v12, "subs"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v12

    .line 99
    .line 100
    const/16 v13, 0x9

    .line 101
    .line 102
    const-string v14, "BillingClient"

    .line 103
    .line 104
    if-eqz v12, :cond_3

    .line 105
    .line 106
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzi:Z

    .line 107
    .line 108
    if-eqz v12, :cond_2

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_2
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 112
    .line 113
    .line 114
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 117
    .line 118
    sget-object v1, Lcom/android/billingclient/api/p0;->zzo:Lcom/android/billingclient/api/h;

    .line 119
    .line 120
    .line 121
    invoke-static {v13, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 129
    return-object v1

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->r()Z

    .line 133
    move-result v12

    .line 134
    .line 135
    if-eqz v12, :cond_5

    .line 136
    .line 137
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzl:Z

    .line 138
    .line 139
    if-eqz v12, :cond_4

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_4
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 143
    .line 144
    .line 145
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 148
    .line 149
    sget-object v1, Lcom/android/billingclient/api/p0;->zzh:Lcom/android/billingclient/api/h;

    .line 150
    .line 151
    const/16 v2, 0x12

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 162
    return-object v1

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 166
    move-result v12

    .line 167
    const/4 v15, 0x1

    .line 168
    .line 169
    if-le v12, v15, :cond_7

    .line 170
    .line 171
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzs:Z

    .line 172
    .line 173
    if-eqz v12, :cond_6

    .line 174
    goto :goto_3

    .line 175
    .line 176
    :cond_6
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 177
    .line 178
    .line 179
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 182
    .line 183
    sget-object v1, Lcom/android/billingclient/api/p0;->zzt:Lcom/android/billingclient/api/h;

    .line 184
    .line 185
    const/16 v2, 0x13

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    .line 192
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 196
    return-object v1

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 200
    move-result v12

    .line 201
    .line 202
    if-nez v12, :cond_9

    .line 203
    .line 204
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzt:Z

    .line 205
    .line 206
    if-eqz v12, :cond_8

    .line 207
    goto :goto_4

    .line 208
    .line 209
    :cond_8
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 210
    .line 211
    .line 212
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 215
    .line 216
    sget-object v1, Lcom/android/billingclient/api/p0;->zzv:Lcom/android/billingclient/api/h;

    .line 217
    .line 218
    const/16 v2, 0x14

    .line 219
    .line 220
    .line 221
    invoke-static {v2, v10, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 229
    return-object v1

    .line 230
    .line 231
    :cond_9
    :goto_4
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzl:Z

    .line 232
    .line 233
    if-eqz v12, :cond_31

    .line 234
    .line 235
    iget-boolean v12, v8, Lcom/android/billingclient/api/e;->zzn:Z

    .line 236
    .line 237
    iget-boolean v13, v8, Lcom/android/billingclient/api/e;->zzz:Z

    .line 238
    .line 239
    iget-object v10, v8, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 240
    .line 241
    new-instance v4, Landroid/os/Bundle;

    .line 242
    .line 243
    .line 244
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string/jumbo v15, "playBillingLibraryVersion"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->c()I

    .line 254
    move-result v10

    .line 255
    .line 256
    .line 257
    const-string/jumbo v15, "prorationMode"

    .line 258
    .line 259
    if-eqz v10, :cond_a

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->c()I

    .line 263
    move-result v10

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 267
    goto :goto_5

    .line 268
    .line 269
    .line 270
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 271
    move-result v10

    .line 272
    .line 273
    if-eqz v10, :cond_b

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->b()I

    .line 277
    move-result v10

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 284
    move-result-object v10

    .line 285
    .line 286
    .line 287
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    move-result v10

    .line 289
    .line 290
    if-nez v10, :cond_c

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->d()Ljava/lang/String;

    .line 294
    move-result-object v10

    .line 295
    .line 296
    const-string v15, "accountId"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 303
    move-result-object v10

    .line 304
    .line 305
    .line 306
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    move-result v10

    .line 308
    .line 309
    if-nez v10, :cond_d

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->e()Ljava/lang/String;

    .line 313
    move-result-object v10

    .line 314
    .line 315
    .line 316
    const-string/jumbo v15, "obfuscatedProfileId"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->q()Z

    .line 323
    move-result v10

    .line 324
    .line 325
    if-eqz v10, :cond_e

    .line 326
    .line 327
    const-string v10, "isOfferPersonalizedByDeveloper"

    .line 328
    const/4 v15, 0x1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v10, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    :cond_e
    const/4 v10, 0x0

    .line 333
    .line 334
    .line 335
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 336
    move-result v15

    .line 337
    .line 338
    if-nez v15, :cond_f

    .line 339
    .line 340
    new-instance v15, Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    filled-new-array {v10}, [Ljava/lang/String;

    .line 344
    move-result-object v17

    .line 345
    .line 346
    .line 347
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 348
    move-result-object v10

    .line 349
    .line 350
    .line 351
    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 352
    .line 353
    .line 354
    const-string/jumbo v10, "skusToReplace"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v10, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 358
    .line 359
    .line 360
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 361
    move-result-object v10

    .line 362
    .line 363
    .line 364
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 365
    move-result v10

    .line 366
    .line 367
    if-nez v10, :cond_10

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->f()Ljava/lang/String;

    .line 371
    move-result-object v10

    .line 372
    .line 373
    .line 374
    const-string/jumbo v15, "oldSkuPurchaseToken"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_10
    const/4 v10, 0x0

    .line 379
    .line 380
    .line 381
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    move-result v15

    .line 383
    .line 384
    if-nez v15, :cond_11

    .line 385
    .line 386
    .line 387
    const-string/jumbo v15, "oldSkuPurchaseId"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 394
    move-result-object v15

    .line 395
    .line 396
    .line 397
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    move-result v15

    .line 399
    .line 400
    if-nez v15, :cond_12

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/g;->g()Ljava/lang/String;

    .line 404
    move-result-object v15

    .line 405
    .line 406
    .line 407
    const-string/jumbo v10, "originalExternalTransactionId"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v10, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v10, 0x0

    .line 412
    .line 413
    .line 414
    :cond_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    move-result v15

    .line 416
    .line 417
    if-nez v15, :cond_13

    .line 418
    .line 419
    .line 420
    const-string/jumbo v15, "paymentsPurchaseParams"

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    :cond_13
    if-eqz v12, :cond_14

    .line 426
    .line 427
    const-string v10, "enablePendingPurchases"

    .line 428
    const/4 v12, 0x1

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    goto :goto_6

    .line 433
    :cond_14
    const/4 v12, 0x1

    .line 434
    .line 435
    :goto_6
    if-eqz v13, :cond_15

    .line 436
    .line 437
    const-string v10, "enableAlternativeBilling"

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    .line 442
    .line 443
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 444
    move-result v10

    .line 445
    .line 446
    const-string v12, "additionalSkuTypes"

    .line 447
    .line 448
    const-string v13, "additionalSkus"

    .line 449
    .line 450
    const-string v15, "SKU_SERIALIZED_DOCID_LIST"

    .line 451
    .line 452
    move-object/from16 v17, v9

    .line 453
    .line 454
    .line 455
    const-string/jumbo v9, "skuDetailsTokens"

    .line 456
    .line 457
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 458
    .line 459
    move-object/from16 v18, v11

    .line 460
    .line 461
    if-nez v10, :cond_1f

    .line 462
    .line 463
    new-instance v10, Ljava/util/ArrayList;

    .line 464
    .line 465
    .line 466
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .line 468
    new-instance v11, Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .line 473
    move-object/from16 v19, v7

    .line 474
    .line 475
    new-instance v7, Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .line 480
    move-object/from16 v20, v1

    .line 481
    .line 482
    new-instance v1, Ljava/util/ArrayList;

    .line 483
    .line 484
    .line 485
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .line 487
    move-object/from16 v21, v14

    .line 488
    .line 489
    new-instance v14, Ljava/util/ArrayList;

    .line 490
    .line 491
    .line 492
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .line 494
    .line 495
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    move-result-object v22

    .line 497
    .line 498
    const/16 v23, 0x0

    .line 499
    .line 500
    const/16 v24, 0x0

    .line 501
    .line 502
    const/16 v25, 0x0

    .line 503
    .line 504
    const/16 v26, 0x0

    .line 505
    .line 506
    .line 507
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    move-result v27

    .line 509
    .line 510
    if-eqz v27, :cond_18

    .line 511
    .line 512
    .line 513
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    move-result-object v27

    .line 515
    .line 516
    check-cast v27, Lcom/android/billingclient/api/SkuDetails;

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 520
    move-result-object v28

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    .line 524
    move-result v28

    .line 525
    .line 526
    if-nez v28, :cond_16

    .line 527
    .line 528
    move-object/from16 v28, v6

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    .line 532
    move-result-object v6

    .line 533
    .line 534
    .line 535
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    goto :goto_8

    .line 537
    .line 538
    :cond_16
    move-object/from16 v28, v6

    .line 539
    .line 540
    .line 541
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    .line 542
    move-result-object v6

    .line 543
    .line 544
    move-object/from16 v29, v5

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->e()Ljava/lang/String;

    .line 548
    move-result-object v5

    .line 549
    .line 550
    .line 551
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->d()I

    .line 552
    move-result v30

    .line 553
    .line 554
    .line 555
    invoke-virtual/range {v27 .. v27}, Lcom/android/billingclient/api/SkuDetails;->h()Ljava/lang/String;

    .line 556
    move-result-object v8

    .line 557
    .line 558
    .line 559
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 563
    move-result v6

    .line 564
    .line 565
    const/16 v16, 0x1

    .line 566
    .line 567
    xor-int/lit8 v6, v6, 0x1

    .line 568
    .line 569
    or-int v23, v23, v6

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 576
    move-result v5

    .line 577
    .line 578
    xor-int/lit8 v5, v5, 0x1

    .line 579
    .line 580
    or-int v24, v24, v5

    .line 581
    .line 582
    .line 583
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 584
    move-result-object v5

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    if-eqz v30, :cond_17

    .line 590
    .line 591
    move/from16 v5, v16

    .line 592
    goto :goto_9

    .line 593
    :cond_17
    const/4 v5, 0x0

    .line 594
    .line 595
    :goto_9
    or-int v25, v25, v5

    .line 596
    .line 597
    .line 598
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 599
    move-result v5

    .line 600
    .line 601
    xor-int/lit8 v5, v5, 0x1

    .line 602
    .line 603
    or-int v26, v26, v5

    .line 604
    .line 605
    .line 606
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    move-object/from16 v8, p0

    .line 609
    .line 610
    move-object/from16 v6, v28

    .line 611
    .line 612
    move-object/from16 v5, v29

    .line 613
    goto :goto_7

    .line 614
    .line 615
    :cond_18
    move-object/from16 v29, v5

    .line 616
    .line 617
    move-object/from16 v28, v6

    .line 618
    .line 619
    .line 620
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 621
    move-result v5

    .line 622
    .line 623
    if-nez v5, :cond_19

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 627
    .line 628
    :cond_19
    if-eqz v23, :cond_1a

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 632
    .line 633
    :cond_1a
    if-eqz v24, :cond_1b

    .line 634
    .line 635
    const-string v5, "SKU_OFFER_ID_LIST"

    .line 636
    .line 637
    .line 638
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 639
    .line 640
    :cond_1b
    if-eqz v25, :cond_1c

    .line 641
    .line 642
    const-string v5, "SKU_OFFER_TYPE_LIST"

    .line 643
    .line 644
    .line 645
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 646
    .line 647
    :cond_1c
    if-eqz v26, :cond_1d

    .line 648
    .line 649
    .line 650
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 651
    .line 652
    .line 653
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 654
    move-result v1

    .line 655
    const/4 v5, 0x1

    .line 656
    .line 657
    if-le v1, v5, :cond_26

    .line 658
    .line 659
    new-instance v1, Ljava/util/ArrayList;

    .line 660
    .line 661
    .line 662
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 663
    move-result v6

    .line 664
    .line 665
    add-int/lit8 v6, v6, -0x1

    .line 666
    .line 667
    .line 668
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    .line 670
    new-instance v6, Ljava/util/ArrayList;

    .line 671
    .line 672
    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 674
    move-result v7

    .line 675
    .line 676
    add-int/lit8 v7, v7, -0x1

    .line 677
    .line 678
    .line 679
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    move v15, v5

    .line 681
    .line 682
    .line 683
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 684
    move-result v7

    .line 685
    .line 686
    if-ge v15, v7, :cond_1e

    .line 687
    .line 688
    .line 689
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 690
    move-result-object v7

    .line 691
    .line 692
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    .line 696
    move-result-object v7

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 703
    move-result-object v7

    .line 704
    .line 705
    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    .line 709
    move-result-object v7

    .line 710
    .line 711
    .line 712
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    add-int/lit8 v15, v15, 0x1

    .line 715
    goto :goto_a

    .line 716
    .line 717
    .line 718
    :cond_1e
    invoke-virtual {v4, v13, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v4, v12, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 722
    .line 723
    goto/16 :goto_c

    .line 724
    .line 725
    :cond_1f
    move-object/from16 v20, v1

    .line 726
    .line 727
    move-object/from16 v29, v5

    .line 728
    .line 729
    move-object/from16 v28, v6

    .line 730
    .line 731
    move-object/from16 v19, v7

    .line 732
    .line 733
    move-object/from16 v21, v14

    .line 734
    const/4 v5, 0x1

    .line 735
    .line 736
    new-instance v1, Ljava/util/ArrayList;

    .line 737
    .line 738
    .line 739
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 740
    move-result v2

    .line 741
    .line 742
    add-int/lit8 v2, v2, -0x1

    .line 743
    .line 744
    .line 745
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 746
    .line 747
    new-instance v2, Ljava/util/ArrayList;

    .line 748
    .line 749
    .line 750
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 751
    move-result v6

    .line 752
    .line 753
    add-int/lit8 v6, v6, -0x1

    .line 754
    .line 755
    .line 756
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    .line 758
    new-instance v6, Ljava/util/ArrayList;

    .line 759
    .line 760
    .line 761
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .line 763
    new-instance v7, Ljava/util/ArrayList;

    .line 764
    .line 765
    .line 766
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .line 768
    new-instance v8, Ljava/util/ArrayList;

    .line 769
    .line 770
    .line 771
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 772
    const/4 v10, 0x0

    .line 773
    .line 774
    .line 775
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 776
    move-result v11

    .line 777
    .line 778
    if-ge v10, v11, :cond_23

    .line 779
    .line 780
    .line 781
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 782
    move-result-object v11

    .line 783
    .line 784
    check-cast v11, Lcom/android/billingclient/api/g$b;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v11}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 788
    move-result-object v14

    .line 789
    .line 790
    .line 791
    invoke-virtual {v14}, Lcom/android/billingclient/api/l;->f()Ljava/lang/String;

    .line 792
    move-result-object v16

    .line 793
    .line 794
    .line 795
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 796
    move-result v16

    .line 797
    .line 798
    if-nez v16, :cond_20

    .line 799
    .line 800
    .line 801
    invoke-virtual {v14}, Lcom/android/billingclient/api/l;->f()Ljava/lang/String;

    .line 802
    move-result-object v5

    .line 803
    .line 804
    .line 805
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    :cond_20
    invoke-virtual {v11}, Lcom/android/billingclient/api/g$b;->c()Ljava/lang/String;

    .line 809
    move-result-object v5

    .line 810
    .line 811
    .line 812
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    invoke-virtual {v14}, Lcom/android/billingclient/api/l;->g()Ljava/lang/String;

    .line 816
    move-result-object v5

    .line 817
    .line 818
    .line 819
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 820
    move-result v5

    .line 821
    .line 822
    if-nez v5, :cond_21

    .line 823
    .line 824
    .line 825
    invoke-virtual {v14}, Lcom/android/billingclient/api/l;->g()Ljava/lang/String;

    .line 826
    move-result-object v5

    .line 827
    .line 828
    .line 829
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    .line 831
    :cond_21
    if-lez v10, :cond_22

    .line 832
    .line 833
    .line 834
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 835
    move-result-object v5

    .line 836
    .line 837
    check-cast v5, Lcom/android/billingclient/api/g$b;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v5}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 841
    move-result-object v5

    .line 842
    .line 843
    .line 844
    invoke-virtual {v5}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 845
    move-result-object v5

    .line 846
    .line 847
    .line 848
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 852
    move-result-object v5

    .line 853
    .line 854
    check-cast v5, Lcom/android/billingclient/api/g$b;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 858
    move-result-object v5

    .line 859
    .line 860
    .line 861
    invoke-virtual {v5}, Lcom/android/billingclient/api/l;->c()Ljava/lang/String;

    .line 862
    move-result-object v5

    .line 863
    .line 864
    .line 865
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .line 867
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 868
    const/4 v5, 0x1

    .line 869
    goto :goto_b

    .line 870
    .line 871
    .line 872
    :cond_23
    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 876
    move-result v5

    .line 877
    .line 878
    if-nez v5, :cond_24

    .line 879
    .line 880
    .line 881
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 882
    .line 883
    .line 884
    :cond_24
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 885
    move-result v5

    .line 886
    .line 887
    if-nez v5, :cond_25

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4, v15, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 891
    .line 892
    .line 893
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 894
    move-result v5

    .line 895
    .line 896
    if-nez v5, :cond_26

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4, v13, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v4, v12, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 903
    .line 904
    .line 905
    :cond_26
    :goto_c
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 906
    move-result v0

    .line 907
    .line 908
    move-object/from16 v8, p0

    .line 909
    .line 910
    if-eqz v0, :cond_28

    .line 911
    .line 912
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->zzq:Z

    .line 913
    .line 914
    if-eqz v0, :cond_27

    .line 915
    goto :goto_d

    .line 916
    .line 917
    :cond_27
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 918
    .line 919
    sget-object v1, Lcom/android/billingclient/api/p0;->zzu:Lcom/android/billingclient/api/h;

    .line 920
    .line 921
    const/16 v2, 0x15

    .line 922
    const/4 v3, 0x2

    .line 923
    .line 924
    .line 925
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 926
    move-result-object v2

    .line 927
    .line 928
    .line 929
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 930
    .line 931
    .line 932
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 933
    return-object v1

    .line 934
    .line 935
    .line 936
    :cond_28
    :goto_d
    const-string/jumbo v0, "skuPackageName"

    .line 937
    .line 938
    if-eqz v29, :cond_29

    .line 939
    .line 940
    .line 941
    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 942
    move-result-object v1

    .line 943
    .line 944
    .line 945
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 946
    move-result v1

    .line 947
    .line 948
    if-nez v1, :cond_29

    .line 949
    .line 950
    .line 951
    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    .line 952
    move-result-object v1

    .line 953
    .line 954
    .line 955
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :goto_e
    const/4 v0, 0x0

    .line 957
    const/4 v15, 0x1

    .line 958
    goto :goto_f

    .line 959
    .line 960
    :cond_29
    if-eqz v28, :cond_2a

    .line 961
    .line 962
    .line 963
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 964
    move-result-object v1

    .line 965
    .line 966
    .line 967
    invoke-virtual {v1}, Lcom/android/billingclient/api/l;->e()Ljava/lang/String;

    .line 968
    move-result-object v1

    .line 969
    .line 970
    .line 971
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 972
    move-result v1

    .line 973
    .line 974
    if-nez v1, :cond_2a

    .line 975
    .line 976
    .line 977
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/g$b;->b()Lcom/android/billingclient/api/l;

    .line 978
    move-result-object v1

    .line 979
    .line 980
    .line 981
    invoke-virtual {v1}, Lcom/android/billingclient/api/l;->e()Ljava/lang/String;

    .line 982
    move-result-object v1

    .line 983
    .line 984
    .line 985
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    goto :goto_e

    .line 987
    :cond_2a
    const/4 v0, 0x0

    .line 988
    const/4 v15, 0x0

    .line 989
    .line 990
    .line 991
    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 992
    move-result v1

    .line 993
    .line 994
    if-nez v1, :cond_2b

    .line 995
    .line 996
    const-string v1, "accountName"

    .line 997
    .line 998
    .line 999
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1003
    move-result-object v0

    .line 1004
    .line 1005
    if-nez v0, :cond_2c

    .line 1006
    .line 1007
    const-string v0, "Activity\'s intent is null."

    .line 1008
    .line 1009
    move-object/from16 v9, v21

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    goto :goto_10

    .line 1014
    .line 1015
    :cond_2c
    move-object/from16 v9, v21

    .line 1016
    .line 1017
    const-string v1, "PROXY_PACKAGE"

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    move-result-object v2

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1025
    move-result v2

    .line 1026
    .line 1027
    if-nez v2, :cond_2d

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    move-result-object v0

    .line 1032
    .line 1033
    .line 1034
    const-string/jumbo v1, "proxyPackage"

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .line 1039
    :try_start_0
    iget-object v1, v8, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1043
    move-result-object v1

    .line 1044
    const/4 v2, 0x0

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1048
    move-result-object v0

    .line 1049
    .line 1050
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    .line 1052
    move-object/from16 v1, v20

    .line 1053
    .line 1054
    .line 1055
    :try_start_1
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    goto :goto_10

    .line 1057
    .line 1058
    :catch_0
    move-object/from16 v1, v20

    .line 1059
    .line 1060
    .line 1061
    :catch_1
    const-string/jumbo v0, "package not found"

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .line 1066
    :cond_2d
    :goto_10
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->zzt:Z

    .line 1067
    .line 1068
    if-eqz v0, :cond_2e

    .line 1069
    .line 1070
    .line 1071
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1072
    move-result v0

    .line 1073
    .line 1074
    if-nez v0, :cond_2e

    .line 1075
    .line 1076
    const/16 v0, 0x11

    .line 1077
    :goto_11
    move v3, v0

    .line 1078
    goto :goto_12

    .line 1079
    .line 1080
    :cond_2e
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->zzr:Z

    .line 1081
    .line 1082
    if-eqz v0, :cond_2f

    .line 1083
    .line 1084
    if-eqz v15, :cond_2f

    .line 1085
    .line 1086
    const/16 v0, 0xf

    .line 1087
    goto :goto_11

    .line 1088
    .line 1089
    :cond_2f
    iget-boolean v0, v8, Lcom/android/billingclient/api/e;->zzn:Z

    .line 1090
    .line 1091
    if-eqz v0, :cond_30

    .line 1092
    .line 1093
    const/16 v3, 0x9

    .line 1094
    goto :goto_12

    .line 1095
    :cond_30
    const/4 v0, 0x6

    .line 1096
    goto :goto_11

    .line 1097
    .line 1098
    :goto_12
    new-instance v0, Lcom/android/billingclient/api/w;

    .line 1099
    move-object v1, v0

    .line 1100
    .line 1101
    move-object/from16 v2, p0

    .line 1102
    move-object v7, v4

    .line 1103
    .line 1104
    move-object/from16 v4, v19

    .line 1105
    .line 1106
    move-object/from16 v5, v18

    .line 1107
    .line 1108
    move-object/from16 v6, p2

    .line 1109
    .line 1110
    .line 1111
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/w;-><init>(Lcom/android/billingclient/api/e;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/g;Landroid/os/Bundle;)V

    .line 1112
    .line 1113
    const-wide/16 v3, 0x1388

    .line 1114
    const/4 v5, 0x0

    .line 1115
    .line 1116
    iget-object v6, v8, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    .line 1117
    .line 1118
    move-object/from16 v1, p0

    .line 1119
    move-object v2, v0

    .line 1120
    .line 1121
    .line 1122
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1123
    move-result-object v0

    .line 1124
    .line 1125
    const/16 v1, 0x4e

    .line 1126
    goto :goto_13

    .line 1127
    .line 1128
    :cond_31
    move-object/from16 v19, v7

    .line 1129
    .line 1130
    move-object/from16 v17, v9

    .line 1131
    .line 1132
    move-object/from16 v18, v11

    .line 1133
    move-object v9, v14

    .line 1134
    .line 1135
    new-instance v2, Lcom/android/billingclient/api/x;

    .line 1136
    .line 1137
    .line 1138
    invoke-direct {v2, v8, v7, v11}, Lcom/android/billingclient/api/x;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    const-wide/16 v3, 0x1388

    .line 1141
    const/4 v5, 0x0

    .line 1142
    .line 1143
    iget-object v6, v8, Lcom/android/billingclient/api/e;->zzc:Landroid/os/Handler;

    .line 1144
    .line 1145
    move-object/from16 v1, p0

    .line 1146
    .line 1147
    .line 1148
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 1149
    move-result-object v0

    .line 1150
    .line 1151
    const/16 v1, 0x50

    .line 1152
    .line 1153
    :goto_13
    if-nez v0, :cond_32

    .line 1154
    .line 1155
    :try_start_2
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 1156
    .line 1157
    sget-object v1, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 1158
    .line 1159
    const/16 v2, 0x19

    .line 1160
    const/4 v3, 0x2

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1164
    move-result-object v2

    .line 1165
    .line 1166
    .line 1167
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1171
    return-object v1

    .line 1172
    :catch_2
    move-exception v0

    .line 1173
    goto :goto_14

    .line 1174
    :catch_3
    move-exception v0

    .line 1175
    goto :goto_15

    .line 1176
    :catch_4
    move-exception v0

    .line 1177
    goto :goto_15

    .line 1178
    .line 1179
    :cond_32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1180
    .line 1181
    const-wide/16 v3, 0x1388

    .line 1182
    .line 1183
    .line 1184
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1185
    move-result-object v0

    .line 1186
    .line 1187
    check-cast v0, Landroid/os/Bundle;

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1191
    move-result v2

    .line 1192
    .line 1193
    .line 1194
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1195
    move-result-object v3

    .line 1196
    .line 1197
    if-eqz v2, :cond_34

    .line 1198
    .line 1199
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    .line 1204
    const-string v5, "Unable to buy item, Error response code: "

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1214
    move-result-object v4

    .line 1215
    .line 1216
    .line 1217
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-static {v2, v3}, Lcom/android/billingclient/api/p0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 1221
    move-result-object v2

    .line 1222
    .line 1223
    iget-object v3, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 1224
    .line 1225
    if-eqz v0, :cond_33

    .line 1226
    .line 1227
    const/16 v1, 0x17

    .line 1228
    :cond_33
    const/4 v4, 0x2

    .line 1229
    .line 1230
    .line 1231
    invoke-static {v1, v4, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1232
    move-result-object v0

    .line 1233
    .line 1234
    .line 1235
    invoke-interface {v3, v0}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1236
    .line 1237
    .line 1238
    invoke-direct {v8, v2}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1239
    return-object v2

    .line 1240
    .line 1241
    :cond_34
    new-instance v1, Landroid/content/Intent;

    .line 1242
    .line 1243
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1244
    .line 1245
    move-object/from16 v3, p1

    .line 1246
    .line 1247
    .line 1248
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    .line 1250
    move-object/from16 v2, v17

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1254
    move-result-object v0

    .line 1255
    .line 1256
    check-cast v0, Landroid/app/PendingIntent;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1260
    .line 1261
    .line 1262
    invoke-static {v3, v1}, Lcom/android/billingclient/api/e;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1263
    .line 1264
    sget-object v0, Lcom/android/billingclient/api/p0;->zzl:Lcom/android/billingclient/api/h;

    .line 1265
    return-object v0

    .line 1266
    .line 1267
    :goto_14
    const-string v1, "Exception while launching billing flow. Try to reconnect"

    .line 1268
    .line 1269
    .line 1270
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1271
    .line 1272
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 1273
    .line 1274
    sget-object v1, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 1275
    const/4 v2, 0x5

    .line 1276
    const/4 v3, 0x2

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1280
    move-result-object v2

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1287
    return-object v1

    .line 1288
    .line 1289
    :goto_15
    const-string v1, "Time out while launching billing flow. Try to reconnect"

    .line 1290
    .line 1291
    .line 1292
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1293
    .line 1294
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 1295
    .line 1296
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 1297
    const/4 v2, 0x4

    .line 1298
    const/4 v3, 0x2

    .line 1299
    .line 1300
    .line 1301
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1302
    move-result-object v2

    .line 1303
    .line 1304
    .line 1305
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-direct {v8, v1}, Lcom/android/billingclient/api/e;->F(Lcom/android/billingclient/api/h;)Lcom/android/billingclient/api/h;

    .line 1309
    return-object v1

    .line 1310
    :cond_35
    move v3, v10

    .line 1311
    .line 1312
    iget-object v0, v8, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 1313
    .line 1314
    sget-object v1, Lcom/android/billingclient/api/p0;->zzE:Lcom/android/billingclient/api/h;

    .line 1315
    .line 1316
    const/16 v2, 0xc

    .line 1317
    .line 1318
    .line 1319
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 1320
    move-result-object v2

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 1324
    return-object v1
.end method

.method public final g(Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 10
    .line 11
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/e;->zzt:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "BillingClient"

    .line 35
    .line 36
    const-string v0, "Querying product details is not supported."

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 42
    .line 43
    sget-object v0, Lcom/android/billingclient/api/p0;->zzv:Lcom/android/billingclient/api/h;

    .line 44
    .line 45
    const/16 v2, 0x14

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v1, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 53
    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 61
    return-void

    .line 62
    .line 63
    :cond_1
    new-instance v3, Lcom/android/billingclient/api/b2;

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, p0, p1, p2}, Lcom/android/billingclient/api/b2;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)V

    .line 67
    .line 68
    const-wide/16 v4, 0x7530

    .line 69
    .line 70
    new-instance v6, Lcom/android/billingclient/api/e2;

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/e2;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/m;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    .line 77
    move-result-object v7

    .line 78
    move-object v2, p0

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 91
    .line 92
    const/16 v2, 0x19

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 100
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/m;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 108
    :cond_2
    return-void
.end method

.method public final h(Lcom/android/billingclient/api/r;Lcom/android/billingclient/api/o;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/r;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/e;->K(Ljava/lang/String;Lcom/android/billingclient/api/o;)V

    .line 8
    return-void
.end method

.method public final i(Lcom/android/billingclient/api/s;Lcom/android/billingclient/api/t;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 12
    .line 13
    sget-object v0, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/s;->a()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/billingclient/api/s;->b()Ljava/util/List;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    const-string v0, "BillingClient"

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 49
    .line 50
    sget-object v0, Lcom/android/billingclient/api/p0;->zzf:Lcom/android/billingclient/api/h;

    .line 51
    .line 52
    const/16 v3, 0x31

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 63
    return-void

    .line 64
    .line 65
    :cond_1
    if-nez v6, :cond_2

    .line 66
    .line 67
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 73
    .line 74
    sget-object v0, Lcom/android/billingclient/api/p0;->zze:Lcom/android/billingclient/api/h;

    .line 75
    .line 76
    const/16 v3, 0x30

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v2, v0}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, v0, v1}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 87
    return-void

    .line 88
    .line 89
    :cond_2
    new-instance p1, Lcom/android/billingclient/api/y1;

    .line 90
    const/4 v7, 0x0

    .line 91
    move-object v3, p1

    .line 92
    move-object v4, p0

    .line 93
    move-object v8, p2

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/y1;-><init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/t;)V

    .line 97
    .line 98
    const-wide/16 v5, 0x7530

    .line 99
    .line 100
    new-instance v7, Lcom/android/billingclient/api/z1;

    .line 101
    .line 102
    .line 103
    invoke-direct {v7, p0, p2}, Lcom/android/billingclient/api/z1;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/t;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->E()Landroid/os/Handler;

    .line 107
    move-result-object v8

    .line 108
    move-object v3, p0

    .line 109
    move-object v4, p1

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/e;->J(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/android/billingclient/api/e;->H()Lcom/android/billingclient/api/h;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 122
    .line 123
    const/16 v3, 0x19

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v2, p1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/t;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 134
    :cond_3
    return-void
.end method

.method public final j(Lcom/android/billingclient/api/f;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/billingclient/api/e;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    const-string v2, "BillingClient"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/billingclient/api/m0;->b(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->c(Lcom/google/android/gms/internal/play_billing/zzic;)V

    .line 24
    .line 25
    sget-object v0, Lcom/android/billingclient/api/p0;->zzl:Lcom/android/billingclient/api/h;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/f;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    const-string v0, "Client is already in the process of connecting to billing service."

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 42
    .line 43
    sget-object v2, Lcom/android/billingclient/api/p0;->zzd:Lcom/android/billingclient/api/h;

    .line 44
    .line 45
    const/16 v3, 0x25

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/f;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 56
    return-void

    .line 57
    .line 58
    :cond_1
    iget v0, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 59
    const/4 v4, 0x3

    .line 60
    .line 61
    if-ne v0, v4, :cond_2

    .line 62
    .line 63
    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 69
    .line 70
    sget-object v2, Lcom/android/billingclient/api/p0;->zzm:Lcom/android/billingclient/api/h;

    .line 71
    .line 72
    const/16 v3, 0x26

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/f;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 83
    return-void

    .line 84
    .line 85
    :cond_2
    iput v3, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 86
    .line 87
    const-string v0, "Starting in-app billing setup."

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    new-instance v0, Lcom/android/billingclient/api/e0;

    .line 93
    const/4 v4, 0x0

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0, p1, v4}, Lcom/android/billingclient/api/e0;-><init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/d0;)V

    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 99
    .line 100
    new-instance v0, Landroid/content/Intent;

    .line 101
    .line 102
    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    const-string v4, "com.android.vending"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    const/16 v7, 0x29

    .line 124
    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 129
    move-result v8

    .line 130
    .line 131
    if-nez v8, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 138
    .line 139
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 140
    .line 141
    if-eqz v5, :cond_6

    .line 142
    .line 143
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v4

    .line 150
    .line 151
    if-eqz v4, :cond_4

    .line 152
    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    new-instance v4, Landroid/content/ComponentName;

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    new-instance v5, Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzb:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    const-string/jumbo v4, "playBillingLibraryVersion"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zze:Landroid/content/Context;

    .line 177
    .line 178
    iget-object v4, p0, Lcom/android/billingclient/api/e;->zzh:Lcom/android/billingclient/api/e0;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v5, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 182
    move-result v0

    .line 183
    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    const-string p1, "Service was bonded successfully."

    .line 187
    .line 188
    .line 189
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 191
    .line 192
    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    const/16 v3, 0x27

    .line 198
    goto :goto_0

    .line 199
    .line 200
    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    const/16 v3, 0x28

    .line 206
    goto :goto_0

    .line 207
    :cond_5
    move v3, v7

    .line 208
    .line 209
    :cond_6
    :goto_0
    iput v6, p0, Lcom/android/billingclient/api/e;->zza:I

    .line 210
    .line 211
    const-string v0, "Billing service unavailable on device."

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 217
    .line 218
    sget-object v2, Lcom/android/billingclient/api/p0;->zzc:Lcom/android/billingclient/api/h;

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, v2}, Lcom/android/billingclient/api/f;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 229
    return-void
.end method

.method final synthetic x(Lcom/android/billingclient/api/c;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 3
    .line 4
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    const/4 v3, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/h;)V

    .line 18
    return-void
.end method

.method final synthetic y(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/t1;->d()Lcom/android/billingclient/api/p;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/t1;->d()Lcom/android/billingclient/api/p;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/e;->zzd:Lcom/android/billingclient/api/t1;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/billingclient/api/t1;->c()Lcom/android/billingclient/api/v0;

    .line 25
    .line 26
    const-string p1, "BillingClient"

    .line 27
    .line 28
    const-string v0, "No valid listener is set in BroadcastManager"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method final synthetic z(Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/i;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e;->zzf:Lcom/android/billingclient/api/n0;

    .line 3
    .line 4
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    const/4 v3, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1, p2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 22
    return-void
.end method
