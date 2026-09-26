.class Lcom/narvii/post/entry/PostEntryDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

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
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->view:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog$1;->view:Landroid/view/View;

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
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 16
    return-void
.end method
