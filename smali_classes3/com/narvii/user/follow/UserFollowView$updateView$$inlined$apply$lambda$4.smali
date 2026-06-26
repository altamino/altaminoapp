.class public final Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserFollowView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserFollowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserFollowView.kt\ncom/narvii/user/follow/UserFollowView$updateView$2$2\n*L\n1#1,303:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $animationLayout$inlined:Landroid/view/View;

.field final synthetic $startWidth$inlined:I

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->$animationLayout$inlined:Landroid/view/View;

    iput p3, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->$startWidth$inlined:I

    .line 203
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13

    .line 205
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getNotificationLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->$animationLayout$inlined:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->$startWidth$inlined:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 211
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f03f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026otification_success_hint)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x8

    const-wide/16 v2, 0x4b0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x14

    if-le p1, v4, :cond_1

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x320

    sub-int/2addr p1, v1

    int-to-long v6, p1

    mul-long v4, v4, v6

    const/16 p1, 0xc

    int-to-long v6, p1

    .line 218
    div-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 221
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 223
    iget-object v4, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v4}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x7

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v7, "scaleX"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 224
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    iget-object v6, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v6}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object v6

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    const-string v8, "scaleY"

    invoke-static {v6, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 227
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v9, v6, [Landroid/animation/Animator;

    aput-object v4, v9, v0

    const/4 v4, 0x1

    aput-object v5, v9, v4

    .line 229
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 231
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 232
    iget-object v9, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v9}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object v9

    new-array v10, v6, [F

    fill-array-data v10, :array_2

    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v9, 0x190

    .line 233
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    iget-object v11, p0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v11}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout$p(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    move-result-object v11

    new-array v12, v6, [F

    fill-array-data v12, :array_3

    invoke-static {v11, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 236
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v6, [Landroid/animation/Animator;

    aput-object v7, v9, v0

    aput-object v8, v9, v4

    .line 238
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v0

    aput-object v5, v6, v4

    .line 240
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 241
    new-instance v0, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4$1;-><init>(Lcom/narvii/user/follow/UserFollowView$updateView$$inlined$apply$lambda$4;J)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
