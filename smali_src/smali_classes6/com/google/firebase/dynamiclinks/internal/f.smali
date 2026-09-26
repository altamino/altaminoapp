.class public Lcom/google/firebase/dynamiclinks/internal/f;
.super Lh4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/dynamiclinks/internal/f$b;,
        Lcom/google/firebase/dynamiclinks/internal/f$a;,
        Lcom/google/firebase/dynamiclinks/internal/f$c;
    }
.end annotation


# static fields
.field private static final ANALYTICS_FDL_ORIGIN:Ljava/lang/String; = "fdl"

.field public static final EXTRA_DYNAMIC_LINK_DATA:Ljava/lang/String; = "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA"

.field public static final KEY_SCION_DATA:Ljava/lang/String; = "scionData"

.field private static final TAG:Ljava/lang/String; = "FDL"


# instance fields
.field private final analytics:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final googleApi:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/f;Lo4/b;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lh4/a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/f;->googleApi:Lcom/google/android/gms/common/api/GoogleApi;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/f;

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/f;->firebaseApp:Lcom/google/firebase/f;

    iput-object p3, p0, Lcom/google/firebase/dynamiclinks/internal/f;->analytics:Lo4/b;

    .line 4
    invoke-interface {p3}, Lo4/b;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FDL"

    const-string p2, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lo4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/c;

    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/dynamiclinks/internal/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/f;-><init>(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/firebase/f;Lo4/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lh4/b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/f;->googleApi:Lcom/google/android/gms/common/api/GoogleApi;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/dynamiclinks/internal/f$c;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/firebase/dynamiclinks/internal/f;->analytics:Lo4/b;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lcom/google/firebase/dynamiclinks/internal/f$c;-><init>(Lo4/b;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/internal/f;->d(Landroid/content/Intent;)Lh4/b;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 33
    move-result-object v0

    .line 34
    :cond_1
    return-object v0
.end method

.method public d(Landroid/content/Intent;)Lh4/b;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA"

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lh4/b;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lh4/b;-><init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method
