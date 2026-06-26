.class Lcom/narvii/poweruser/SectionSeekBar$4;
.super Ljava/lang/Object;
.source "SectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SectionSeekBar;->autoAdjustSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SectionSeekBar;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SectionSeekBar;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$202(Lcom/narvii/poweruser/SectionSeekBar;F)F

    .line 513
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$400(Lcom/narvii/poweruser/SectionSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$302(Lcom/narvii/poweruser/SectionSeekBar;F)F

    .line 514
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 515
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$500(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$500(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {v0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {v2}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    :cond_0
    return-void
.end method
