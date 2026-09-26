.class final Lcom/google/android/datatransport/cct/internal/i$b;
.super Lcom/google/android/datatransport/cct/internal/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

.field private networkType:Lcom/google/android/datatransport/cct/internal/o$c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/o$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/o;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/i$b;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/i$b;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/cct/internal/i;-><init>(Lcom/google/android/datatransport/cct/internal/o$c;Lcom/google/android/datatransport/cct/internal/o$b;Lcom/google/android/datatransport/cct/internal/i$a;)V

    .line 11
    return-object v0
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/o$b;)Lcom/google/android/datatransport/cct/internal/o$a;
    .locals 0
    .param p1    # Lcom/google/android/datatransport/cct/internal/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/i$b;->mobileSubtype:Lcom/google/android/datatransport/cct/internal/o$b;

    return-object p0
.end method

.method public c(Lcom/google/android/datatransport/cct/internal/o$c;)Lcom/google/android/datatransport/cct/internal/o$a;
    .locals 0
    .param p1    # Lcom/google/android/datatransport/cct/internal/o$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/i$b;->networkType:Lcom/google/android/datatransport/cct/internal/o$c;

    return-object p0
.end method
