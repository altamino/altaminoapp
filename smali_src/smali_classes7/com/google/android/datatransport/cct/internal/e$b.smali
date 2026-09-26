.class final Lcom/google/android/datatransport/cct/internal/e$b;
.super Lcom/google/android/datatransport/cct/internal/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private androidClientInfo:Lcom/google/android/datatransport/cct/internal/a;

.field private clientType:Lcom/google/android/datatransport/cct/internal/k$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/k$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/k;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/e;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/e$b;->clientType:Lcom/google/android/datatransport/cct/internal/k$b;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/e$b;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/a;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/internal/e;-><init>(Lcom/google/android/datatransport/cct/internal/k$b;Lcom/google/android/datatransport/cct/internal/a;Lcom/google/android/datatransport/cct/internal/e$a;)V

    .line 11
    return-object v0
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/a;)Lcom/google/android/datatransport/cct/internal/k$a;
    .locals 0
    .param p1    # Lcom/google/android/datatransport/cct/internal/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/e$b;->androidClientInfo:Lcom/google/android/datatransport/cct/internal/a;

    return-object p0
.end method

.method public c(Lcom/google/android/datatransport/cct/internal/k$b;)Lcom/google/android/datatransport/cct/internal/k$a;
    .locals 0
    .param p1    # Lcom/google/android/datatransport/cct/internal/k$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/e$b;->clientType:Lcom/google/android/datatransport/cct/internal/k$b;

    return-object p0
.end method
