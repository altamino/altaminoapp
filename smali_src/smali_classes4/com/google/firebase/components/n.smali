.class public final synthetic Lcom/google/firebase/components/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/components/e0;

.field public final synthetic b:Lo4/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/e0;Lo4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/n;->a:Lcom/google/firebase/components/e0;

    iput-object p2, p0, Lcom/google/firebase/components/n;->b:Lo4/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/n;->a:Lcom/google/firebase/components/e0;

    iget-object v1, p0, Lcom/google/firebase/components/n;->b:Lo4/b;

    invoke-static {v0, v1}, Lcom/google/firebase/components/p;->l(Lcom/google/firebase/components/e0;Lo4/b;)V

    return-void
.end method
