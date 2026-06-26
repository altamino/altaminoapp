.class Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;
.super Ljava/lang/Object;
.source "CaptionEditTextFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

.field final synthetic val$bg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->this$0:Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;->val$bg:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 136
    new-instance v0, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3$1;-><init>(Lcom/narvii/video/attachment/caption/CaptionEditTextFragment$3;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
