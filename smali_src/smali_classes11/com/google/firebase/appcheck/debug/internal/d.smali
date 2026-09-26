.class public final synthetic Lcom/google/firebase/appcheck/debug/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/debug/internal/e;

.field public final synthetic b:Lcom/google/firebase/appcheck/debug/internal/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/debug/internal/e;Lcom/google/firebase/appcheck/debug/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/debug/internal/d;->a:Lcom/google/firebase/appcheck/debug/internal/e;

    iput-object p2, p0, Lcom/google/firebase/appcheck/debug/internal/d;->b:Lcom/google/firebase/appcheck/debug/internal/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/debug/internal/d;->a:Lcom/google/firebase/appcheck/debug/internal/e;

    iget-object v1, p0, Lcom/google/firebase/appcheck/debug/internal/d;->b:Lcom/google/firebase/appcheck/debug/internal/f;

    invoke-static {v0, v1}, Lcom/google/firebase/appcheck/debug/internal/e;->d(Lcom/google/firebase/appcheck/debug/internal/e;Lcom/google/firebase/appcheck/debug/internal/f;)Lcom/google/firebase/appcheck/internal/a;

    move-result-object v0

    return-object v0
.end method
