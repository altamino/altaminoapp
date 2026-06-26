.class Lcom/narvii/monetization/bubble/BubbleEditFragment$3;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->hideSticker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$300(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "bubble_template_sticker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$400(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleEditView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$000(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
