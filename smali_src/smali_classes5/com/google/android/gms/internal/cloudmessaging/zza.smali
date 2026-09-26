.class public final Lcom/google/android/gms/internal/cloudmessaging/zza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    const/high16 v2, 0x2000000

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v1

    .line 28
    .line 29
    const/16 v4, 0x53

    .line 30
    .line 31
    if-lt v1, v4, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v0

    .line 36
    .line 37
    const/16 v1, 0x5a

    .line 38
    .line 39
    if-gt v0, v1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v3

    .line 42
    .line 43
    :goto_0
    sput v2, Lcom/google/android/gms/internal/cloudmessaging/zza;->zza:I

    .line 44
    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
