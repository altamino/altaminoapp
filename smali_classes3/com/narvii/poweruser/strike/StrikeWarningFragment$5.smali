.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;
.super Ljava/lang/Object;
.source "StrikeWarningFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationSelectPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 392
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$300(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
