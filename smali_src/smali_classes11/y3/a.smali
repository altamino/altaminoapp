.class public final synthetic Ly3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field public final synthetic a:Lcom/google/firebase/components/g0;

.field public final synthetic b:Lcom/google/firebase/components/g0;

.field public final synthetic c:Lcom/google/firebase/components/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/a;->a:Lcom/google/firebase/components/g0;

    iput-object p2, p0, Ly3/a;->b:Lcom/google/firebase/components/g0;

    iput-object p3, p0, Ly3/a;->c:Lcom/google/firebase/components/g0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ly3/a;->a:Lcom/google/firebase/components/g0;

    iget-object v1, p0, Ly3/a;->b:Lcom/google/firebase/components/g0;

    iget-object v2, p0, Ly3/a;->c:Lcom/google/firebase/components/g0;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/appcheck/debug/FirebaseAppCheckDebugRegistrar;->a(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/debug/internal/e;

    move-result-object p1

    return-object p1
.end method
