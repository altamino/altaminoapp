.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;->saveCurSetting(Lcom/narvii/model/ChatBubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 243
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$4;->val$bubble:Lcom/narvii/model/ChatBubble;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, v0, v3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$400(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;Z)V

    return-void
.end method
