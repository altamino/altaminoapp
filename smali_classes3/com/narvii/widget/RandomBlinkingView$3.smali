.class Lcom/narvii/widget/RandomBlinkingView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RandomBlinkingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RandomBlinkingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/RandomBlinkingView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/RandomBlinkingView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/widget/RandomBlinkingView$3;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/narvii/widget/RandomBlinkingView$3;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    invoke-static {p1}, Lcom/narvii/widget/RandomBlinkingView;->access$300(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/widget/RandomBlinkingView;->access$100(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/narvii/widget/RandomBlinkingView$3;->this$0:Lcom/narvii/widget/RandomBlinkingView;

    invoke-static {p1}, Lcom/narvii/widget/RandomBlinkingView;->access$300(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/widget/RandomBlinkingView;->access$100(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;)V

    return-void
.end method
