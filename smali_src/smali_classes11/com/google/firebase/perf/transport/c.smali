.class final Lcom/google/firebase/perf/transport/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final appState:Lcom/google/firebase/perf/v1/d;

.field protected final perfMetricBuilder:Lcom/google/firebase/perf/v1/i$b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V
    .locals 0
    .param p1    # Lcom/google/firebase/perf/v1/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/perf/v1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/transport/c;->perfMetricBuilder:Lcom/google/firebase/perf/v1/i$b;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/perf/transport/c;->appState:Lcom/google/firebase/perf/v1/d;

    .line 8
    return-void
.end method
