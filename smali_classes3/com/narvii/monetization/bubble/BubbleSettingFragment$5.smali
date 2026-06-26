.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

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

    .line 268
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 8

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-object v0, v0, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$502(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 274
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$600(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 276
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-direct {p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 277
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->val$bubble:Lcom/narvii/model/ChatBubble;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {v3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$700(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0f0f30

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/narvii/app/NVActivity;

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080148

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 281
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01004c

    const-wide/16 v6, 0x258

    .line 280
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 286
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

    .line 268
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
