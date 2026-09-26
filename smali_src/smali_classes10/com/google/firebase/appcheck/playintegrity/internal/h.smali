.class public final synthetic Lcom/google/firebase/appcheck/playintegrity/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

.field public final synthetic b:Lcom/google/firebase/appcheck/playintegrity/internal/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/h;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    iput-object p2, p0, Lcom/google/firebase/appcheck/playintegrity/internal/h;->b:Lcom/google/firebase/appcheck/playintegrity/internal/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/playintegrity/internal/h;->a:Lcom/google/firebase/appcheck/playintegrity/internal/i;

    iget-object v1, p0, Lcom/google/firebase/appcheck/playintegrity/internal/h;->b:Lcom/google/firebase/appcheck/playintegrity/internal/a;

    invoke-static {v0, v1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;->c(Lcom/google/firebase/appcheck/playintegrity/internal/i;Lcom/google/firebase/appcheck/playintegrity/internal/a;)Lcom/google/firebase/appcheck/internal/a;

    move-result-object v0

    return-object v0
.end method
