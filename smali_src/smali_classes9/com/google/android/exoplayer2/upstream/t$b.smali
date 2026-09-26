.class public final Lcom/google/android/exoplayer2/upstream/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private transferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/c0;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/c0;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/t$b;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    .line 11
    .line 12
    const/16 v0, 0x1f40

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/t$b;->connectTimeoutMs:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/t$b;->readTimeoutMs:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/t;
    .locals 10

    .line 1
    .line 2
    new-instance v9, Lcom/google/android/exoplayer2/upstream/t;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/t$b;->userAgent:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/t$b;->connectTimeoutMs:I

    .line 7
    .line 8
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/t$b;->readTimeoutMs:I

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/t$b;->allowCrossProtocolRedirects:Z

    .line 11
    .line 12
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/t$b;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/c0;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/t$b;->contentTypePredicate:Lcom/google/common/base/p;

    .line 15
    .line 16
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/upstream/t$b;->keepPostFor302Redirects:Z

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/c0;Lcom/google/common/base/p;ZLcom/google/android/exoplayer2/upstream/t$a;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/t$b;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/upstream/f;->b(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 29
    :cond_0
    return-object v9
.end method

.method public b(Z)Lcom/google/android/exoplayer2/upstream/t$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/t$b;->allowCrossProtocolRedirects:Z

    return-object p0
.end method

.method public c(I)Lcom/google/android/exoplayer2/upstream/t$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/t$b;->connectTimeoutMs:I

    return-object p0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/t$b;->a()Lcom/google/android/exoplayer2/upstream/t;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(I)Lcom/google/android/exoplayer2/upstream/t$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/t$b;->readTimeoutMs:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/t$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/t$b;->userAgent:Ljava/lang/String;

    return-object p0
.end method
