.class public final Lcom/android/billingclient/api/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/play_billing/zzaf;

.field private final zzg:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzh:Lcom/android/billingclient/api/b1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzi:Lcom/android/billingclient/api/e1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzj:Lcom/android/billingclient/api/c1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Lcom/android/billingclient/api/d1;
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
    const-string v0, "formattedPrice"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zza:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "priceAmountMicros"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/billingclient/api/l$a;->zzb:J

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "priceCurrencyCode"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zzc:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "offerIdToken"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zzd:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v0, "offerId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zze:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "offerType"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const-string/jumbo v0, "offerTags"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 72
    move-result v3

    .line 73
    .line 74
    if-ge v2, v3, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zzf:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 91
    .line 92
    const-string v0, "fullPriceMicros"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 96
    move-result v1

    .line 97
    const/4 v2, 0x0

    .line 98
    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 103
    move-result-wide v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    move-result-object v0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move-object v0, v2

    .line 110
    .line 111
    :goto_1
    iput-object v0, p0, Lcom/android/billingclient/api/l$a;->zzg:Ljava/lang/Long;

    .line 112
    .line 113
    const-string v0, "discountDisplayInfo"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    if-nez v0, :cond_2

    .line 120
    move-object v1, v2

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_2
    new-instance v1, Lcom/android/billingclient/api/b1;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/b1;-><init>(Lorg/json/JSONObject;)V

    .line 127
    .line 128
    :goto_2
    iput-object v1, p0, Lcom/android/billingclient/api/l$a;->zzh:Lcom/android/billingclient/api/b1;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v0, "validTimeWindow"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    if-nez v0, :cond_3

    .line 138
    move-object v1, v2

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_3
    new-instance v1, Lcom/android/billingclient/api/e1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/e1;-><init>(Lorg/json/JSONObject;)V

    .line 145
    .line 146
    :goto_3
    iput-object v1, p0, Lcom/android/billingclient/api/l$a;->zzi:Lcom/android/billingclient/api/e1;

    .line 147
    .line 148
    const-string v0, "limitedQuantityInfo"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    if-nez v0, :cond_4

    .line 155
    move-object v1, v2

    .line 156
    goto :goto_4

    .line 157
    .line 158
    :cond_4
    new-instance v1, Lcom/android/billingclient/api/c1;

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/c1;-><init>(Lorg/json/JSONObject;)V

    .line 162
    .line 163
    :goto_4
    iput-object v1, p0, Lcom/android/billingclient/api/l$a;->zzj:Lcom/android/billingclient/api/c1;

    .line 164
    .line 165
    .line 166
    const-string/jumbo v0, "preorderDetails"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    if-nez p1, :cond_5

    .line 173
    goto :goto_5

    .line 174
    .line 175
    :cond_5
    new-instance v2, Lcom/android/billingclient/api/d1;

    .line 176
    .line 177
    .line 178
    invoke-direct {v2, p1}, Lcom/android/billingclient/api/d1;-><init>(Lorg/json/JSONObject;)V

    .line 179
    .line 180
    :goto_5
    iput-object v2, p0, Lcom/android/billingclient/api/l$a;->zzk:Lcom/android/billingclient/api/d1;

    .line 181
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/l$a;->zzd:Ljava/lang/String;

    return-object v0
.end method
