.class public final Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalProfileFollowView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateNotificationView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $isShow:Z

.field final synthetic $isSubscript:Z

.field final synthetic this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iput-boolean p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isShow:Z

    iput-boolean p3, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 180
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isShow:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    invoke-static {p1, v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$setFollowNotificationState(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V

    .line 184
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->$isSubscript:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->getCheckCanShowTooltip()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    :cond_1
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 187
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getFollowNotificationView$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    const v1, 0x7f0f03f0

    .line 188
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 189
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->textSize(F)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 190
    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    const-string v1, "#FFFFC700"

    .line 191
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/Tooltip$Builder;->background(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v0}, Lcom/narvii/util/Tooltip$Builder;->showOnlyOnce(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1, v0}, Lcom/narvii/util/Tooltip$Builder;->isVibrate(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$getToolTipHelper$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;)Lcom/narvii/util/ToolTipHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 199
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView$updateNotificationView$2;->this$0:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-static {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->access$setAnimating$p(Lcom/narvii/master/home/widgets/GlobalProfileFollowView;Z)V

    return-void
.end method
