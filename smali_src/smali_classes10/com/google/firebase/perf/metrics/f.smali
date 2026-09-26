.class public final synthetic Lcom/google/firebase/perf/metrics/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/metrics/AppStartTrace;

.field public final synthetic b:Lcom/google/firebase/perf/v1/m$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/m$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/f;->a:Lcom/google/firebase/perf/metrics/AppStartTrace;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/f;->b:Lcom/google/firebase/perf/v1/m$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/f;->a:Lcom/google/firebase/perf/metrics/AppStartTrace;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/f;->b:Lcom/google/firebase/perf/v1/m$b;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->d(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/m$b;)V

    return-void
.end method
