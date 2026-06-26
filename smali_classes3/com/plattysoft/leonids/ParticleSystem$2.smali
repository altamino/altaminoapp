.class Lcom/plattysoft/leonids/ParticleSystem$2;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/plattysoft/leonids/ParticleSystem;->startAnimator(Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/plattysoft/leonids/ParticleSystem;


# direct methods
.method constructor <init>(Lcom/plattysoft/leonids/ParticleSystem;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/plattysoft/leonids/ParticleSystem$2;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 449
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/plattysoft/leonids/ParticleSystem$2;->this$0:Lcom/plattysoft/leonids/ParticleSystem;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/plattysoft/leonids/ParticleSystem;->access$000(Lcom/plattysoft/leonids/ParticleSystem;J)V

    return-void
.end method
