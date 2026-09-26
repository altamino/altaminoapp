.class public final synthetic Lcom/google/firebase/appcheck/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/f;->a:Lcom/google/firebase/appcheck/internal/h;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/f;->a:Lcom/google/firebase/appcheck/internal/h;

    check-cast p1, Lx3/c;

    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/h;->f(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
