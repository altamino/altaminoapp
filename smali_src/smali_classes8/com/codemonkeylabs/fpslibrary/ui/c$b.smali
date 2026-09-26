.class Lcom/codemonkeylabs/fpslibrary/ui/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemonkeylabs/fpslibrary/ui/c;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

.field final synthetic val$remove:Z


# direct methods
.method constructor <init>(Lcom/codemonkeylabs/fpslibrary/ui/c;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->val$remove:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/ui/c;->a(Lcom/codemonkeylabs/fpslibrary/ui/c;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->val$remove:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/codemonkeylabs/fpslibrary/ui/c;->b(Lcom/codemonkeylabs/fpslibrary/ui/c;)Landroid/view/WindowManager;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c$b;->this$0:Lcom/codemonkeylabs/fpslibrary/ui/c;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->a(Lcom/codemonkeylabs/fpslibrary/ui/c;)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 31
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
