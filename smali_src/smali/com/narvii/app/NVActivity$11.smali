.class Lcom/narvii/app/NVActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$11;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/app/NVActivity$11;->val$v:Landroid/view/View;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/narvii/app/NVActivity$11;->val$delay:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/app/NVActivity$11;->val$parent:Landroid/view/ViewGroup;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/app/NVActivity$11;->val$delay:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long p1, v0, v2

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/app/NVActivity$11$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/narvii/app/NVActivity$11$1;-><init>(Lcom/narvii/app/NVActivity$11;)V

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/narvii/app/NVActivity$11;->val$delay:J

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$11;->this$0:Lcom/narvii/app/NVActivity;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/app/NVActivity$11;->val$parent:Landroid/view/ViewGroup;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/app/NVActivity$11;->val$v:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/narvii/app/NVActivity;->r(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 29
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$11;->val$v:Landroid/view/View;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method
