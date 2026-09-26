.class Lcom/google/firebase/crashlytics/internal/common/p$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/p;->M(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/p;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/p;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/p$h;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 3
    .line 4
    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/p$h;->val$timestamp:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "fatal"

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    const-string v1, "timestamp"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/p$h;->val$timestamp:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/p$h;->this$0:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->f(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-string v2, "_ae"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/analytics/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x0

    .line 31
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
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/p$h;->a()Ljava/lang/Void;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
