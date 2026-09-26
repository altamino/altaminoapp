.class Lcom/narvii/post/entry/PostEntryDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a0b40

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->view:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 19
    move-result p1

    .line 20
    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float p1, p1, v0

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->access$001(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    iput-boolean v0, p1, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    .line 36
    :cond_0
    return-void
.end method
