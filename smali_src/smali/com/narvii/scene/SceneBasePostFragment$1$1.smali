.class Lcom/narvii/scene/SceneBasePostFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 5
    .line 6
    iget v1, v1, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 21
    .line 22
    iget v3, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 23
    .line 24
    if-eq v0, v3, :cond_2

    .line 25
    .line 26
    iput v0, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 27
    .line 28
    iget-object v0, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 39
    .line 40
    iget v2, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 41
    .line 42
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    iget-object v1, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$deleteContainer:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 62
    .line 63
    iget-object v2, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 64
    .line 65
    iget v2, v2, Lcom/narvii/scene/SceneBasePostFragment;->frameHeight:I

    .line 66
    .line 67
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/scene/SceneBasePostFragment$1;->val$deleteContainer:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/SceneBasePostFragment$1$1;->this$1:Lcom/narvii/scene/SceneBasePostFragment$1;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/scene/SceneBasePostFragment;->onFrameHeightChanged()V

    .line 80
    :cond_2
    return-void
.end method
