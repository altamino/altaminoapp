.class Lcom/narvii/post/entry/PostEntryDialog$2;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

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

    .line 250
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const v0, 0x7f090884

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->access$001(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 258
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$2;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    :cond_0
    return-void
.end method
