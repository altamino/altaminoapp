.class Lcom/narvii/poweruser/SectionSeekBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SectionSeekBar.java"


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

    .line 525
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 539
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$400(Lcom/narvii/poweruser/SectionSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$302(Lcom/narvii/poweruser/SectionSeekBar;F)F

    .line 540
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$102(Lcom/narvii/poweruser/SectionSeekBar;Z)Z

    .line 541
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 528
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$400(Lcom/narvii/poweruser/SectionSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$302(Lcom/narvii/poweruser/SectionSeekBar;F)F

    .line 529
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->access$102(Lcom/narvii/poweruser/SectionSeekBar;Z)Z

    .line 530
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 532
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$500(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->access$500(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {v0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {v2}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnFinally(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    :cond_0
    return-void
.end method
