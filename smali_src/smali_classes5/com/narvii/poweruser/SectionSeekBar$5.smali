.class Lcom/narvii/poweruser/SectionSeekBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->f(Lcom/narvii/poweruser/SectionSeekBar;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->c(Lcom/narvii/poweruser/SectionSeekBar;F)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->b(Lcom/narvii/poweruser/SectionSeekBar;Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->f(Lcom/narvii/poweruser/SectionSeekBar;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->c(Lcom/narvii/poweruser/SectionSeekBar;F)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->b(Lcom/narvii/poweruser/SectionSeekBar;Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->a(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->a(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 40
    move-result v1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar$5;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->getProgressOnFinally(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 50
    :cond_0
    return-void
.end method
