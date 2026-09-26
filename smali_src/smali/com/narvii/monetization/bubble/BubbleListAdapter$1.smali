.class Lcom/narvii/monetization/bubble/BubbleListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;->this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;->this$0:Lcom/narvii/monetization/bubble/BubbleListAdapter;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;->val$bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method
