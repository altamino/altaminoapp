.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;->val$bubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 510
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;->val$bubble:Lcom/narvii/model/ChatBubble;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    return-void
.end method
