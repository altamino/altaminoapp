.class Lcom/narvii/drawer/DrawerHost$7$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$7;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$7;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$7;Landroid/view/View;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$7$1;->this$1:Lcom/narvii/drawer/DrawerHost$7;

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$7$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$7$1;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
