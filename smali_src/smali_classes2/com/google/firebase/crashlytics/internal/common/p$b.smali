.class Lcom/google/firebase/crashlytics/internal/common/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/p;->I(Lcom/google/firebase/crashlytics/internal/settings/i;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
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
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/p;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$isOnDemand:Z

.field final synthetic val$settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

.field final synthetic val$thread:Ljava/lang/Thread;

.field final synthetic val$timestampMillis:J


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/p;JLjava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/internal/settings/i;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 3
    .line 4
    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$timestampMillis:J

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$ex:Ljava/lang/Throwable;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$thread:Ljava/lang/Thread;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$isOnDemand:Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 8
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
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$timestampMillis:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/p;->b(J)J

    .line 6
    move-result-wide v6

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/p;->c(Lcom/google/firebase/crashlytics/internal/common/p;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/g;->d(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/p;->g(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/s;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/s;->a()Z

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/p;->h(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$ex:Ljava/lang/Throwable;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$thread:Ljava/lang/Thread;

    .line 49
    move-object v5, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/q0;->t(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 55
    .line 56
    iget-wide v3, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$timestampMillis:J

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/p;->i(Lcom/google/firebase/crashlytics/internal/common/p;J)V

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/p;->t(Lcom/google/firebase/crashlytics/internal/settings/i;)V

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 69
    .line 70
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/h;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/common/p;->j(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/h;-><init>(Lcom/google/firebase/crashlytics/internal/common/b0;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/common/h;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    iget-boolean v4, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$isOnDemand:Z

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/p;->k(Lcom/google/firebase/crashlytics/internal/common/p;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/p;->l(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/x;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/x;->d()Z

    .line 102
    move-result v2

    .line 103
    .line 104
    if-nez v2, :cond_1

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->m(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/common/n;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/n;->c()Ljava/util/concurrent/Executor;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$b;->val$settingsProvider:Lcom/google/firebase/crashlytics/internal/settings/i;

    .line 122
    .line 123
    .line 124
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/settings/i;->b()Lcom/google/android/gms/tasks/Task;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/p$b$a;

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/p$b$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/p$b;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 134
    move-result-object v0

    .line 135
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
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/p$b;->a()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
