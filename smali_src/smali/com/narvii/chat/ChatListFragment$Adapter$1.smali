.class Lcom/narvii/chat/ChatListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatListFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$1;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter$1;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDoubleClicked()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter$1;->this$1:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter$1;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/chat/ChatListFragment$Adapter;->m(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    .line 8
    return-void
.end method
