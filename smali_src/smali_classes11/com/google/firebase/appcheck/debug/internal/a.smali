.class public final synthetic Lcom/google/firebase/appcheck/debug/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/f;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/debug/internal/a;->a:Lcom/google/firebase/f;

    iput-object p2, p0, Lcom/google/firebase/appcheck/debug/internal/a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/a;->a:Lcom/google/firebase/f;

    iget-object v1, p0, Lcom/google/firebase/appcheck/debug/internal/a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/firebase/appcheck/debug/internal/e;->b(Lcom/google/firebase/f;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
