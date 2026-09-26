.class final Lcom/google/android/play/core/integrity/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/v;

.field private final b:Lcom/google/android/play/integrity/internal/m;

.field private final c:Lcom/google/android/play/integrity/internal/m;

.field private final d:Lcom/google/android/play/integrity/internal/m;

.field private final e:Lcom/google/android/play/integrity/internal/m;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/u;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p0, p0, Lcom/google/android/play/core/integrity/v;->a:Lcom/google/android/play/core/integrity/v;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/play/integrity/internal/k;->b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/j;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/play/core/integrity/v;->b:Lcom/google/android/play/integrity/internal/m;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/play/core/integrity/b0;->a()Lcom/google/android/play/core/integrity/c0;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/i;->b(Lcom/google/android/play/integrity/internal/m;)Lcom/google/android/play/integrity/internal/m;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/play/core/integrity/v;->c:Lcom/google/android/play/integrity/internal/m;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/play/core/integrity/m;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, Lcom/google/android/play/core/integrity/m;-><init>(Lcom/google/android/play/integrity/internal/m;Lcom/google/android/play/integrity/internal/m;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/i;->b(Lcom/google/android/play/integrity/internal/m;)Lcom/google/android/play/integrity/internal/m;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/play/core/integrity/v;->d:Lcom/google/android/play/integrity/internal/m;

    .line 33
    .line 34
    new-instance p2, Lcom/google/android/play/core/integrity/a0;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/a0;-><init>(Lcom/google/android/play/integrity/internal/m;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/i;->b(Lcom/google/android/play/integrity/internal/m;)Lcom/google/android/play/integrity/internal/m;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/play/core/integrity/v;->e:Lcom/google/android/play/integrity/internal/m;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/integrity/v;->e:Lcom/google/android/play/integrity/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/m;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/play/core/integrity/a;

    .line 9
    return-object v0
.end method
