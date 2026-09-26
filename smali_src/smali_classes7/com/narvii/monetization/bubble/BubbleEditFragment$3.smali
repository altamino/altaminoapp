.class Lcom/narvii/monetization/bubble/BubbleEditFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->q(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "bubble_template_sticker"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->n(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->o(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 47
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
