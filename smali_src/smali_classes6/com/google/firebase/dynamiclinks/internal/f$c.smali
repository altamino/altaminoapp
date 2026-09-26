.class final Lcom/google/firebase/dynamiclinks/internal/f$c;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/firebase/dynamiclinks/internal/d;",
        "Lh4/b;",
        ">;"
    }
.end annotation


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

.field private final dynamicLink:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo4/b;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x3391

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/f$c;->dynamicLink:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/f$c;->analytics:Lo4/b;

    .line 12
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/firebase/dynamiclinks/internal/d;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/internal/d;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lh4/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/f$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/f$c;->analytics:Lo4/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/dynamiclinks/internal/f$b;-><init>(Lo4/b;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/f$c;->dynamicLink:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/dynamiclinks/internal/d;->b(Lcom/google/firebase/dynamiclinks/internal/g$a;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/dynamiclinks/internal/f$c;->a(Lcom/google/firebase/dynamiclinks/internal/d;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    return-void
.end method
