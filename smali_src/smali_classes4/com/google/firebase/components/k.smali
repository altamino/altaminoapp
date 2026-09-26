.class public final synthetic Lcom/google/firebase/components/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/b;


# instance fields
.field public final synthetic a:Lcom/google/firebase/components/p;

.field public final synthetic b:Lcom/google/firebase/components/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/p;Lcom/google/firebase/components/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/k;->a:Lcom/google/firebase/components/p;

    iput-object p2, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/k;->a:Lcom/google/firebase/components/p;

    iget-object v1, p0, Lcom/google/firebase/components/k;->b:Lcom/google/firebase/components/c;

    invoke-static {v0, v1}, Lcom/google/firebase/components/p;->i(Lcom/google/firebase/components/p;Lcom/google/firebase/components/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
