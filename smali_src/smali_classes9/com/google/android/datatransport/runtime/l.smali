.class public final Lcom/google/android/datatransport/runtime/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ForcedSender"


# direct methods
.method public static a(Lf2/f;Lf2/d;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/f<",
            "*>;",
            "Lf2/d;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/s;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/google/android/datatransport/runtime/s;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/s;->d()Lcom/google/android/datatransport/runtime/p;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/p;->f(Lf2/d;)Lcom/google/android/datatransport/runtime/p;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/datatransport/runtime/u;->c()Lcom/google/android/datatransport/runtime/u;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/u;->e()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;->u(Lcom/google/android/datatransport/runtime/p;I)Lg2/g;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const-string p1, "ForcedSender"

    .line 30
    .line 31
    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, p0}, Li2/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void
.end method
