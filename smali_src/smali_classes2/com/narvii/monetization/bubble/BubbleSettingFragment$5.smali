.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;->sendSaveCurBubbleSettingRequest(Lcom/narvii/model/ChatBubble;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 3
    iget-object v0, v0, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->E(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->K(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 6
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-direct {p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 7
    invoke-static {v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->u(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const v1, 0x7f121041

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/narvii/app/NVActivity;

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0801d7

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01006a

    const-wide/16 v6, 0x258

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 13
    :goto_0
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5$1;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5$1;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;)V

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
