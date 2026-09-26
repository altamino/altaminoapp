.class Lcom/google/firebase/crashlytics/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/g;->b(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/a;Lo4/a;Lo4/a;)Lcom/google/firebase/crashlytics/g;
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
.field final synthetic val$core:Lcom/google/firebase/crashlytics/internal/common/r;

.field final synthetic val$finishCoreInBackground:Z

.field final synthetic val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/f;


# direct methods
.method constructor <init>(ZLcom/google/firebase/crashlytics/internal/common/r;Lcom/google/firebase/crashlytics/internal/settings/f;)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/g$b;->val$finishCoreInBackground:Z

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/g$b;->val$core:Lcom/google/firebase/crashlytics/internal/common/r;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/firebase/crashlytics/g$b;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/g$b;->val$finishCoreInBackground:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/g$b;->val$core:Lcom/google/firebase/crashlytics/internal/common/r;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/g$b;->val$settingsController:Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/r;->g(Lcom/google/firebase/crashlytics/internal/settings/i;)Lcom/google/android/gms/tasks/Task;

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
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
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/g$b;->a()Ljava/lang/Void;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
