.class public final synthetic Lcom/narvii/monetization/store/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/narvii/monetization/store/view/TippingFeedbackView;

.field public final synthetic d:Le8/l;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/e;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/narvii/monetization/store/view/e;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/narvii/monetization/store/view/e;->c:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iput-object p4, p0, Lcom/narvii/monetization/store/view/e;->d:Le8/l;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/view/e;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/narvii/monetization/store/view/e;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/monetization/store/view/e;->c:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iget-object v3, p0, Lcom/narvii/monetization/store/view/e;->d:Le8/l;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Le8/l;Landroid/animation/ValueAnimator;)V

    return-void
.end method
