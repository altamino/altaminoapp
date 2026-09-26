.class public final Lcom/google/android/gms/internal/auth-api/zbn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zba(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "context must not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string p1, "request must not be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbbb;->zba()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    new-instance p3, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v0, "com.google.android.gms.auth.api.credentials.PICKER"

    .line 32
    .line 33
    .line 34
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    const-string v0, "claimedCallingPackage"

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    const-string v0, "logSessionId"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    const-string p1, "com.google.android.gms.credentials.HintRequest"

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 52
    .line 53
    sget p1, Lcom/google/android/gms/internal/auth-api/zbbc;->zba:I

    .line 54
    .line 55
    const/high16 p2, 0x8000000

    .line 56
    or-int/2addr p1, p2

    .line 57
    .line 58
    const/16 p2, 0x7d0

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p2, p3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
