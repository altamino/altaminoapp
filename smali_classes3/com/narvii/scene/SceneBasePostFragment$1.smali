.class Lcom/narvii/scene/SceneBasePostFragment$1;
.super Ljava/lang/Object;
.source "SceneBasePostFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneBasePostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneBasePostFragment;

.field final synthetic val$bg:Lcom/narvii/widget/NVImageView;

.field final synthetic val$deleteContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneBasePostFragment;Lcom/narvii/widget/NVImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/scene/SceneBasePostFragment$1;->this$0:Lcom/narvii/scene/SceneBasePostFragment;

    iput-object p2, p0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$bg:Lcom/narvii/widget/NVImageView;

    iput-object p3, p0, Lcom/narvii/scene/SceneBasePostFragment$1;->val$deleteContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 112
    new-instance v0, Lcom/narvii/scene/SceneBasePostFragment$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/SceneBasePostFragment$1$1;-><init>(Lcom/narvii/scene/SceneBasePostFragment$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
