.class Lcom/narvii/poweruser/SectionSeekBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SectionSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$3;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

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
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$3;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->b(Lcom/narvii/poweruser/SectionSeekBar;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$3;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$3;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/poweruser/SectionSeekBar;->b(Lcom/narvii/poweruser/SectionSeekBar;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/poweruser/SectionSeekBar$3;->this$0:Lcom/narvii/poweruser/SectionSeekBar;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12
    return-void
.end method
