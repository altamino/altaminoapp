.class Lcom/narvii/chat/ChatWelcomeItem$1;
.super Lcom/narvii/util/text/TouchableSpan;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem$1;->this$0:Lcom/narvii/chat/ChatWelcomeItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem$1;->this$0:Lcom/narvii/chat/ChatWelcomeItem;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ChatWelcomeItem;->listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;->onExpandedClicked()V

    .line 8
    return-void
.end method
