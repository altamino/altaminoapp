.class Lcom/narvii/chat/ChatMessageItem$1;
.super Lcom/narvii/util/text/TouchableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatMessageItem;

.field final synthetic val$msg:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatMessageItem;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem$1;->this$0:Lcom/narvii/chat/ChatMessageItem;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem$1;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/util/text/TouchableSpan;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItem$1;->this$0:Lcom/narvii/chat/ChatMessageItem;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItem;->seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem$1;->val$msg:Lcom/narvii/model/ChatMessage;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;->onSeeAllClicked(Lcom/narvii/model/ChatMessage;)V

    .line 12
    :cond_0
    return-void
.end method
