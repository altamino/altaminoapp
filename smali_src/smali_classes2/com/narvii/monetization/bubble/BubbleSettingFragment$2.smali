.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->w(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/model/ChatBubble;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->I(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    .line 10
    return-void
.end method
