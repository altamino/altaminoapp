.class public final synthetic Lcom/google/android/play/integrity/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/google/android/play/integrity/internal/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/integrity/internal/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/a0;->a:Lcom/google/android/play/integrity/internal/d;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/a0;->a:Lcom/google/android/play/integrity/internal/d;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/d;->k(Lcom/google/android/play/integrity/internal/d;)V

    return-void
.end method
