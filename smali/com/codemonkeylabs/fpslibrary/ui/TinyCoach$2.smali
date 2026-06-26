.class Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;
.super Ljava/lang/Object;
.source "TinyCoach.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

.field final synthetic val$remove:Z


# direct methods
.method constructor <init>(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;Z)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    iput-boolean p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->val$remove:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->access$000(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->val$remove:Z

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->access$100(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;

    invoke-static {v0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->access$000(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
