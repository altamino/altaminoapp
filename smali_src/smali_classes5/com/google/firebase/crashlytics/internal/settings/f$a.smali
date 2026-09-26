.class Lcom/google/firebase/crashlytics/internal/settings/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/settings/f;->o(Lcom/google/firebase/crashlytics/internal/settings/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/settings/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/f;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
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
    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->d(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/k;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/f;->c(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/k;->a(Lcom/google/firebase/crashlytics/internal/settings/j;Z)Lorg/json/JSONObject;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/f;->e(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/g;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/g;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/settings/f;->f(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/a;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-wide v2, v0, Lcom/google/firebase/crashlytics/internal/settings/d;->expiresAtMillis:J

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/settings/a;->c(JLorg/json/JSONObject;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 43
    .line 44
    const-string v2, "Loaded settings: "

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p1, v2}, Lcom/google/firebase/crashlytics/internal/settings/f;->g(Lcom/google/firebase/crashlytics/internal/settings/f;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->c(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/j;->instanceId:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/internal/settings/f;->h(Lcom/google/firebase/crashlytics/internal/settings/f;Ljava/lang/String;)Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->i(Lcom/google/firebase/crashlytics/internal/settings/f;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f$a;->this$0:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->j(Lcom/google/firebase/crashlytics/internal/settings/f;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    const/4 p1, 0x0

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 87
    move-result-object p1

    .line 88
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
    check-cast p1, Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f$a;->a(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
