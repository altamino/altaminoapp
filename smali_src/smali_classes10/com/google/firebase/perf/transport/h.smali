.class public final synthetic Lcom/google/firebase/perf/transport/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/transport/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/transport/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/transport/h;->a:Lcom/google/firebase/perf/transport/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/transport/h;->a:Lcom/google/firebase/perf/transport/k;

    invoke-static {v0}, Lcom/google/firebase/perf/transport/k;->d(Lcom/google/firebase/perf/transport/k;)V

    return-void
.end method
