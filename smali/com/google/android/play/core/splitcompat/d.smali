.class final Lcom/google/android/play/core/splitcompat/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitcompat/h;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic c:Lcom/google/android/play/core/splitcompat/p;

.field private final synthetic d:Lcom/google/android/play/core/splitcompat/e;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/e;Lcom/google/android/play/core/splitcompat/p;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/d;->d:Lcom/google/android/play/core/splitcompat/e;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/d;->c:Lcom/google/android/play/core/splitcompat/p;

    iput-object p3, p0, Lcom/google/android/play/core/splitcompat/d;->a:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/play/core/splitcompat/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitcompat/j;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/d;->d:Lcom/google/android/play/core/splitcompat/e;

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/d;->c:Lcom/google/android/play/core/splitcompat/p;

    new-instance v1, Lcom/google/android/play/core/splitcompat/g;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/g;-><init>(Lcom/google/android/play/core/splitcompat/d;)V

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/play/core/splitcompat/e;->a(Lcom/google/android/play/core/splitcompat/e;Lcom/google/android/play/core/splitcompat/p;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/k;)V

    return-void
.end method
