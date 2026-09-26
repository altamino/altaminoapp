.class public final synthetic Lcom/google/android/exoplayer2/ui/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/v0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n0;->a:Lcom/google/android/exoplayer2/ui/v0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n0;->a:Lcom/google/android/exoplayer2/ui/v0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/v0;->m(Lcom/google/android/exoplayer2/ui/v0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
