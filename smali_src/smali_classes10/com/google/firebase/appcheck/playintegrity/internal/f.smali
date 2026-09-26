.class public final synthetic Lcom/google/firebase/appcheck/playintegrity/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

.field public final synthetic b:Lcom/google/firebase/appcheck/playintegrity/internal/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/f;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    iput-object p2, p0, Lcom/google/firebase/appcheck/playintegrity/internal/f;->b:Lcom/google/firebase/appcheck/playintegrity/internal/b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/f;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/f;->b:Lcom/google/firebase/appcheck/playintegrity/internal/b;

    invoke-static {v0, v1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->b(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/b;)Lcom/google/firebase/appcheck/playintegrity/internal/c;

    move-result-object v0

    return-object v0
.end method
