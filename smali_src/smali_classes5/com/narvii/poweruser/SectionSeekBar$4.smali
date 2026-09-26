.class Lcom/narvii/poweruser/SectionSeekBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/poweruser/SectionSeekBar;->d(Lcom/narvii/poweruser/SectionSeekBar;F)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->f(Lcom/narvii/poweruser/SectionSeekBar;)F

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->c(Lcom/narvii/poweruser/SectionSeekBar;F)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->a(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/poweruser/SectionSeekBar;->a(Lcom/narvii/poweruser/SectionSeekBar;)Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 49
    move-result v1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/poweruser/SectionSeekBar$4;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/poweruser/SectionSeekBar;->getProgressFloat()F

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/poweruser/SectionSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/narvii/poweruser/SectionSeekBar;IF)V

    .line 59
    :cond_0
    return-void
.end method
