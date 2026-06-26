.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;
.super Ljava/lang/Object;
.source "LiveLayerOnlineCategoryAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

.field final synthetic val$membersCountTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;Landroid/widget/TextView;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;->val$membersCountTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 310
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 311
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$4;->val$membersCountTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
