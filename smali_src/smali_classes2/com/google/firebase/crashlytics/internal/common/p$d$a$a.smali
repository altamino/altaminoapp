.class Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/p$d$a;->a()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Lcom/google/firebase/crashlytics/internal/settings/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/firebase/crashlytics/internal/common/p$d$a;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/p$d$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->this$2:Lcom/google/firebase/crashlytics/internal/common/p$d$a;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->val$executor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/firebase/crashlytics/internal/settings/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->this$2:Lcom/google/firebase/crashlytics/internal/common/p$d$a;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/p;->n(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/android/gms/tasks/Task;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->this$2:Lcom/google/firebase/crashlytics/internal/common/p$d$a;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/p;->h(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->val$executor:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/common/q0;->x(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->this$2:Lcom/google/firebase/crashlytics/internal/common/p$d$a;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/p;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;->a(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
