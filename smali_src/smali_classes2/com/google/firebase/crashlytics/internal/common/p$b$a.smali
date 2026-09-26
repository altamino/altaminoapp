.class Lcom/google/firebase/crashlytics/internal/common/p$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/p$b;->a()Lcom/google/android/gms/tasks/Task;
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
.field final synthetic this$1:Lcom/google/firebase/crashlytics/internal/common/p$b;

.field final synthetic val$currentSessionId:Ljava/lang/String;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/p$b;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$b;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->val$executor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->val$currentSessionId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/Task;
    .locals 4
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
    const-string v1, "Received null app settings, cannot send reports at crash time."

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
    :cond_0
    const/4 p1, 0x2

    .line 19
    .line 20
    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$b;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->n(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/android/gms/tasks/Task;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    aput-object v1, p1, v2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$b;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->h(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->val$executor:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$b;

    .line 44
    .line 45
    iget-boolean v3, v3, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$isOnDemand:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->val$currentSessionId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/common/q0;->y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    aput-object v0, p1, v1

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 60
    move-result-object p1

    .line 61
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
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/p$b$a;->a(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
