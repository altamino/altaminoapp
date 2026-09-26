.class final Lcom/google/android/play/core/integrity/o;
.super Lcom/google/android/play/core/integrity/e;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/play/core/integrity/x;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/play/integrity/internal/x;Landroid/app/PendingIntent;)V
    .locals 0
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/o;->a:Ljava/lang/String;

    new-instance p1, Lcom/google/android/play/core/integrity/x;

    invoke-direct {p1, p2, p3}, Lcom/google/android/play/core/integrity/x;-><init>(Lcom/google/android/play/integrity/internal/x;Landroid/app/PendingIntent;)V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/o;->b:Lcom/google/android/play/core/integrity/x;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/o;->a:Ljava/lang/String;

    return-object v0
.end method
