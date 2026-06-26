.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$1;
.super Ljava/lang/Object;
.source "TippingFeedbackView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->hide()V

    .line 84
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->getOnDismiss()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
