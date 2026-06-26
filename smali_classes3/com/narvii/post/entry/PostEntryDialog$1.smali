.class Lcom/narvii/post/entry/PostEntryDialog$1;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V
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

    .line 222
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const v0, 0x7f090884

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
