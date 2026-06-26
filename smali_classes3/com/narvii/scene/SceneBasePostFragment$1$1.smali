.class Lcom/narvii/scene/SceneBasePostFragment$1$1;
.super Ljava/lang/Object;
.source "SceneBasePostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneBasePostFragment$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneBasePostFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneBasePostFragment$1;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v1, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    iget v1, v1, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    iget v3, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    if-eq v0, v3, :cond_2

    .line 117
    iput v0, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 118
    iget-object v0, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    iget v2, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v1, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$deleteContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    iget v2, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iget-object v1, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$deleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneBasePostFragment;->onFrameHeightChanged()V

    :cond_2
    return-void
.end method
