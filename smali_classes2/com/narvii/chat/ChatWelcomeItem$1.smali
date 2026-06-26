.class Lcom/narvii/chat/ChatWelcomeItem$1;
.super Lcom/narvii/util/text/TouchableSpan;
.source "ChatWelcomeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatWelcomeItem;->setChatMessage(Lcom/narvii/model/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatWelcomeItem;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatWelcomeItem;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem$1;->this$0:Lcom/narvii/chat/ChatWelcomeItem;

    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem$1;->this$0:Lcom/narvii/chat/ChatWelcomeItem;

    iget-object p1, p1, Lcom/narvii/chat/ChatWelcomeItem;->listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

    invoke-interface {p1}, Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;->onExpandedClicked()V

    return-void
.end method
