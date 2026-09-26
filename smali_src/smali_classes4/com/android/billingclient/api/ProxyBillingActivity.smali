.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# static fields
.field static final KEY_ALTERNATIVE_BILLING_ONLY_DIALOG_RESULT_RECEIVER:Ljava/lang/String; = "alternative_billing_only_dialog_result_receiver"

.field static final KEY_IN_APP_MESSAGE_RESULT_RECEIVER:Ljava/lang/String; = "in_app_message_result_receiver"

.field static final KEY_PRICE_CHANGE_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED:Ljava/lang/String; = "send_cancelled_broadcast_if_finished"

.field private static final REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW:I = 0x6e

.field private static final REQUEST_CODE_IN_APP_MESSAGE_FLOW:I = 0x65

.field private static final REQUEST_CODE_LAUNCH_ACTIVITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ProxyBillingActivity"


# instance fields
.field private alternativeBillingOnlyDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private alternativeBillingOnlyDialogResultReceiver:Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inAppMessageResultReceiver:Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isFlowFromFirstPartyClient:Z

.field private priceChangeResultReceiver:Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sendCancelledBroadcastIfFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 4
    return-void
.end method

.method private d(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.android.billingclient"

    invoke-static {v0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->activityOnTouch(Ljava/lang/String;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method f(Landroidx/activity/result/ActivityResult;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->c()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "ProxyBillingActivity"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzc(Landroid/content/Intent;Ljava/lang/String;)I

    .line 10
    move-result v2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogResultReceiver:Landroid/os/ResultReceiver;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->e()I

    .line 29
    move-result v0

    .line 30
    const/4 v3, -0x1

    .line 31
    .line 32
    if-ne v0, v3, :cond_2

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->e()I

    .line 38
    move-result p1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v3, "Alternative billing only dialog finished with resultCode "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p1, " and billing\'s responseCode: "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    const/16 v3, 0x6e

    .line 10
    .line 11
    const-string v4, "ProxyBillingActivity"

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    if-ne p1, v3, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    const/16 p2, 0x65

    .line 19
    .line 20
    if-ne p1, p2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(Landroid/content/Intent;Ljava/lang/String;)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 27
    .line 28
    if-eqz p2, :cond_c

    .line 29
    .line 30
    if-nez p3, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p2, p1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string p3, "Got onActivityResult with wrong requestCode: "

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, "; skipping..."

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzc(Landroid/content/Intent;Ljava/lang/String;)I

    .line 71
    move-result v0

    .line 72
    const/4 v5, -0x1

    .line 73
    .line 74
    if-ne p2, v5, :cond_5

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    move p2, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v0, v1

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v6, "Activity finished with resultCode "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p2, " and billing\'s responseCode: "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    :goto_3
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->priceChangeResultReceiver:Landroid/os/ResultReceiver;

    .line 111
    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    if-nez p3, :cond_6

    .line 115
    goto :goto_4

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    :goto_4
    invoke-virtual {p2, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :cond_7
    if-eqz p3, :cond_a

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    const-string v0, "LAUNCH_BILLING_FLOW"

    .line 133
    .line 134
    const-string v2, "INTENT_SOURCE"

    .line 135
    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    const-string v4, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    if-eqz p2, :cond_8

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->d(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    goto :goto_5

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->e()Landroid/content/Intent;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    goto :goto_5

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->e()Landroid/content/Intent;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    const-string p3, "Got null bundle!"

    .line 178
    .line 179
    .line 180
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    const-string p3, "RESPONSE_CODE"

    .line 183
    const/4 v4, 0x6

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    .line 188
    const-string p3, "DEBUG_MESSAGE"

    .line 189
    .line 190
    const-string v5, "An internal error occurred."

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/android/billingclient/api/h;->c()Lcom/android/billingclient/api/h$a;

    .line 197
    move-result-object p3

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v4}, Lcom/android/billingclient/api/h$a;->c(I)Lcom/android/billingclient/api/h$a;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3, v5}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 207
    move-result-object p3

    .line 208
    .line 209
    const/16 v4, 0x16

    .line 210
    const/4 v5, 0x2

    .line 211
    .line 212
    .line 213
    invoke-static {v4, v5, p3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 214
    move-result-object p3

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzdg;->zzc()[B

    .line 218
    move-result-object p3

    .line 219
    .line 220
    const-string v4, "FAILURE_LOGGING_PAYLOAD"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    goto :goto_5

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->e()Landroid/content/Intent;

    .line 231
    move-result-object p2

    .line 232
    .line 233
    :goto_5
    if-ne p1, v3, :cond_b

    .line 234
    .line 235
    const-string p1, "IS_FIRST_PARTY_PURCHASE"

    .line 236
    const/4 p3, 0x1

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    :cond_b
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    .line 244
    :cond_c
    :goto_6
    iput-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    .line 9
    .line 10
    new-instance v2, Lcom/android/billingclient/api/f1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/android/billingclient/api/f1;-><init>(Lcom/android/billingclient/api/ProxyBillingActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 20
    .line 21
    const-string v1, "in_app_message_result_receiver"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "result_receiver"

    .line 25
    .line 26
    const-string v3, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 27
    .line 28
    const-string v4, "alternative_billing_only_dialog_result_receiver"

    .line 29
    .line 30
    const-string v8, "ProxyBillingActivity"

    .line 31
    const/4 v9, 0x0

    .line 32
    .line 33
    if-nez p1, :cond_8

    .line 34
    .line 35
    const-string v0, "Launching Play Store billing flow"

    .line 36
    .line 37
    .line 38
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v5, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    check-cast v1, Landroid/os/ResultReceiver;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogResultReceiver:Landroid/os/ResultReceiver;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 75
    .line 76
    new-instance v2, Landroidx/activity/result/IntentSenderRequest$Builder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v0}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest$Builder;->a()Landroidx/activity/result/IntentSenderRequest;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 87
    return-void

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    const-string v4, "BUY_INTENT"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 97
    move-result v0

    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v11, 0x1

    .line 100
    .line 101
    const/16 v5, 0x64

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    check-cast v0, Landroid/app/PendingIntent;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 131
    move-result v1

    .line 132
    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    .line 136
    .line 137
    const/16 v1, 0x6e

    .line 138
    :goto_0
    move v3, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_1
    :goto_1
    move v3, v5

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    const-string v3, "SUBS_MANAGEMENT_INTENT"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 151
    move-result v0

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    check-cast v0, Landroid/app/PendingIntent;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    check-cast v1, Landroid/os/ResultReceiver;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->priceChangeResultReceiver:Landroid/os/ResultReceiver;

    .line 176
    goto :goto_1

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    const-string v2, "IN_APP_MESSAGE_INTENT"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    check-cast v0, Landroid/app/PendingIntent;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    check-cast v1, Landroid/os/ResultReceiver;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 211
    .line 212
    const/16 v1, 0x65

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    move v3, v5

    .line 215
    move-object v0, v10

    .line 216
    .line 217
    :goto_2
    :try_start_0
    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    new-instance v4, Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 227
    const/4 v5, 0x0

    .line 228
    const/4 v6, 0x0

    .line 229
    const/4 v7, 0x0

    .line 230
    move-object v1, p0

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {v1 .. v7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .line 237
    const-string v1, "Got exception while trying to start a purchase flow."

    .line 238
    .line 239
    .line 240
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->priceChangeResultReceiver:Landroid/os/ResultReceiver;

    .line 243
    const/4 v1, 0x6

    .line 244
    .line 245
    if-eqz v0, :cond_5

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 249
    goto :goto_3

    .line 250
    .line 251
    :cond_5
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 252
    .line 253
    if-eqz v0, :cond_6

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 257
    goto :goto_3

    .line 258
    .line 259
    .line 260
    :cond_6
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->e()Landroid/content/Intent;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    iget-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    .line 264
    .line 265
    if-eqz v2, :cond_7

    .line 266
    .line 267
    const-string v2, "IS_FIRST_PARTY_PURCHASE"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    .line 272
    :cond_7
    const-string v2, "RESPONSE_CODE"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    .line 277
    const-string v1, "DEBUG_MESSAGE"

    .line 278
    .line 279
    const-string v2, "An internal error occurred."

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    .line 287
    :goto_3
    iput-boolean v9, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 291
    return-void

    .line 292
    .line 293
    :cond_8
    const-string v5, "Launching Play Store billing flow from savedInstanceState"

    .line 294
    .line 295
    .line 296
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v5, "send_cancelled_broadcast_if_finished"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 303
    move-result v5

    .line 304
    .line 305
    iput-boolean v5, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 309
    move-result v5

    .line 310
    .line 311
    if-eqz v5, :cond_9

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 315
    move-result-object v1

    .line 316
    .line 317
    check-cast v1, Landroid/os/ResultReceiver;

    .line 318
    .line 319
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->priceChangeResultReceiver:Landroid/os/ResultReceiver;

    .line 320
    goto :goto_4

    .line 321
    .line 322
    .line 323
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 324
    move-result v2

    .line 325
    .line 326
    if-eqz v2, :cond_a

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    check-cast v1, Landroid/os/ResultReceiver;

    .line 333
    .line 334
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 335
    goto :goto_4

    .line 336
    .line 337
    .line 338
    :cond_a
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 339
    move-result v1

    .line 340
    .line 341
    if-eqz v1, :cond_b

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    check-cast v1, Landroid/os/ResultReceiver;

    .line 348
    .line 349
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogResultReceiver:Landroid/os/ResultReceiver;

    .line 350
    .line 351
    .line 352
    :cond_b
    :goto_4
    invoke-virtual {p1, v3, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 353
    move-result v0

    .line 354
    .line 355
    iput-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    .line 356
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->e()Landroid/content/Intent;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "RESPONSE_CODE"

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    const-string v1, "DEBUG_MESSAGE"

    .line 27
    .line 28
    const-string v2, "Billing dialog closed."

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->priceChangeResultReceiver:Landroid/os/ResultReceiver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "result_receiver"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v1, "in_app_message_result_receiver"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->alternativeBillingOnlyDialogResultReceiver:Landroid/os/ResultReceiver;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string v1, "alternative_billing_only_dialog_result_receiver"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "send_cancelled_broadcast_if_finished"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    .line 42
    .line 43
    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method
