.class public final synthetic Lcom/google/firebase/appcheck/playintegrity/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/playintegrity/internal/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/g;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/g;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    check-cast p1, Lcom/google/firebase/appcheck/playintegrity/internal/c;

    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->d(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
