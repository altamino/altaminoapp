.class public final synthetic Lcom/google/firebase/appcheck/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/j;->a:Lcom/google/firebase/appcheck/internal/k;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/j;->a:Lcom/google/firebase/appcheck/internal/k;

    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/k;->b(Lcom/google/firebase/appcheck/internal/k;Ljava/lang/Exception;)V

    return-void
.end method
