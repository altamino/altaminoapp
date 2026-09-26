.class Lcom/google/firebase/crashlytics/internal/common/p$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/p$d;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

.field final synthetic val$send:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/p$d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->val$send:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->val$send:Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Deleting cached crash reports..."

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/p;->L()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/p;->d(Ljava/util/List;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/p;->h(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/q0;->w()V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/p;->unsentReportsHandled:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "Sending cached crash reports..."

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->val$send:Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->l(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/x;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/x;->c(Z)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/p$d;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/p;->m(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/n;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->c()Ljava/util/concurrent/Executor;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->this$1:Lcom/google/firebase/crashlytics/internal/common/p$d;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/p$d;->val$settingsDataTask:Lcom/google/android/gms/tasks/Task;

    .line 97
    .line 98
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/p$d$a$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/p$d$a;Ljava/util/concurrent/Executor;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/p$d$a;->a()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
