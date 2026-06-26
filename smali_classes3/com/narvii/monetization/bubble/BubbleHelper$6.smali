.class Lcom/narvii/monetization/bubble/BubbleHelper$6;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 185
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$6;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f034d

    .line 186
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0c29

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 188
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$6$1;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper$6;)V

    const v1, 0x7f0f119f

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 204
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
