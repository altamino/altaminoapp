.class final Lcom/google/android/exoplayer2/util/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/a0$b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/util/a0;)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "phone"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/exoplayer2/util/a0$b$a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/a0$b$a;-><init>(Lcom/google/android/exoplayer2/util/a0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/media3/common/util/d;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0, v1}, Landroidx/media3/common/util/e;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/media3/common/util/f;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const/4 p0, 0x5

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/a0;->c(Lcom/google/android/exoplayer2/util/a0;I)V

    .line 35
    :goto_0
    return-void
.end method
