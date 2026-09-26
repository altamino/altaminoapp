.class public final synthetic Lcom/google/android/exoplayer2/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/g;->a:Lcom/google/android/exoplayer2/ui/h;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/g;->a:Lcom/google/android/exoplayer2/ui/h;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/h;->c(Lcom/google/android/exoplayer2/ui/h;Landroid/animation/ValueAnimator;)V

    return-void
.end method
