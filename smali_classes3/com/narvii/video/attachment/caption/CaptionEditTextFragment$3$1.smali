.class Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;
.super Ljava/lang/Object;
.source "CaptionEditTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    iget-object v1, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget v1, v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->frameHeight:I

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->val$bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    iget-object v2, v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget v3, v2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->frameHeight:I

    if-eq v0, v3, :cond_0

    .line 141
    iput v0, v2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->frameHeight:I

    .line 142
    iget-object v0, v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->val$bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;

    iget-object v2, v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iget v2, v2, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->frameHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    iget-object v1, v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->val$bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
