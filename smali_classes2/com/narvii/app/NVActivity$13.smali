.class Lcom/narvii/app/NVActivity$13;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->toastView(IIJ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;

.field final synthetic val$delay:J

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Landroid/view/View;JLandroid/view/ViewGroup;)V
    .locals 0

    .line 1885
    iput-object p1, p0, Lcom/narvii/app/NVActivity$13;->this$0:Lcom/narvii/app/NVActivity;

    iput-object p2, p0, Lcom/narvii/app/NVActivity$13;->val$v:Landroid/view/View;

    iput-wide p3, p0, Lcom/narvii/app/NVActivity$13;->val$delay:J

    iput-object p5, p0, Lcom/narvii/app/NVActivity$13;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1893
    iget-wide v0, p0, Lcom/narvii/app/NVActivity$13;->val$delay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 1894
    new-instance p1, Lcom/narvii/app/NVActivity$13$1;

    invoke-direct {p1, p0}, Lcom/narvii/app/NVActivity$13$1;-><init>(Lcom/narvii/app/NVActivity$13;)V

    iget-wide v0, p0, Lcom/narvii/app/NVActivity$13;->val$delay:J

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1901
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$13;->this$0:Lcom/narvii/app/NVActivity;

    iget-object v0, p0, Lcom/narvii/app/NVActivity$13;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/app/NVActivity$13;->val$v:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/narvii/app/NVActivity;->access$500(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1888
    iget-object p1, p0, Lcom/narvii/app/NVActivity$13;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
