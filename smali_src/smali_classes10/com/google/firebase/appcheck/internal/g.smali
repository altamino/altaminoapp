.class public final synthetic Lcom/google/firebase/appcheck/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/h;

.field public final synthetic b:Lx3/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/g;->a:Lcom/google/firebase/appcheck/internal/h;

    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/g;->b:Lx3/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/g;->a:Lcom/google/firebase/appcheck/internal/h;

    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/g;->b:Lx3/c;

    invoke-static {v0, v1}, Lcom/google/firebase/appcheck/internal/h;->g(Lcom/google/firebase/appcheck/internal/h;Lx3/c;)V

    return-void
.end method
