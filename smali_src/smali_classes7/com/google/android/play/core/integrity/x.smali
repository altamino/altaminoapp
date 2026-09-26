.class final Lcom/google/android/play/core/integrity/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/x;

.field private final b:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/x;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/x;->a:Lcom/google/android/play/integrity/internal/x;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/x;->b:Landroid/app/PendingIntent;

    return-void
.end method
