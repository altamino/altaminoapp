.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$100(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->access$200(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    return-void
.end method
