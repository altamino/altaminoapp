.class public final synthetic Lcom/google/firebase/remoteconfig/internal/rollouts/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/interop/rollouts/f;

.field public final synthetic b:Lcom/google/firebase/remoteconfig/interop/rollouts/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/interop/rollouts/f;Lcom/google/firebase/remoteconfig/interop/rollouts/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/d;->a:Lcom/google/firebase/remoteconfig/interop/rollouts/f;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/d;->b:Lcom/google/firebase/remoteconfig/interop/rollouts/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/d;->a:Lcom/google/firebase/remoteconfig/interop/rollouts/f;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/d;->b:Lcom/google/firebase/remoteconfig/interop/rollouts/e;

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/internal/rollouts/e;->b(Lcom/google/firebase/remoteconfig/interop/rollouts/f;Lcom/google/firebase/remoteconfig/interop/rollouts/e;)V

    return-void
.end method
