.class final Lcom/google/android/play/core/splitinstall/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Lcom/google/android/play/core/splitinstall/l;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/k;->d:Lcom/google/android/play/core/splitinstall/l;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/k;->b:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k;->d:Lcom/google/android/play/core/splitinstall/l;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget v2, p0, Lcom/google/android/play/core/splitinstall/k;->b:I

    iget v3, p0, Lcom/google/android/play/core/splitinstall/k;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->a(II)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/a;->a(Ljava/lang/Object;)V

    return-void
.end method
