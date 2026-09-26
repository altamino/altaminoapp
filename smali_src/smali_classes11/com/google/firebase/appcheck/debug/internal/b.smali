.class public final synthetic Lcom/google/firebase/appcheck/debug/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/debug/internal/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/debug/internal/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/debug/internal/b;->a:Lcom/google/firebase/appcheck/debug/internal/e;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/b;->a:Lcom/google/firebase/appcheck/debug/internal/e;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/debug/internal/e;->a(Lcom/google/firebase/appcheck/debug/internal/e;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
