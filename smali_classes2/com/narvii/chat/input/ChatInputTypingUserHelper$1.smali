.class Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;
.super Ljava/lang/Object;
.source "ChatInputTypingUserHelper.java"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputTypingUserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$000(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 64
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$000(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_2

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string/jumbo p3, "users-start-typing-at"

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$102(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)Ljava/util/List;

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    .line 75
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$202(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)Z

    goto/16 :goto_4

    :cond_5
    const-string/jumbo p3, "users-end-typing-at"

    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 82
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo p3, "users-start-recording-at"

    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$300(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$302(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)Ljava/util/List;

    .line 89
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    .line 90
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    goto :goto_2

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$300(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$202(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)Z

    goto :goto_4

    :cond_9
    const-string/jumbo p3, "users-end-recording-at"

    .line 94
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 95
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$300(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 96
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 97
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p3}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$300(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$200(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    .line 102
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1, v0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$202(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)Z

    .line 104
    :cond_c
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;->this$0:Lcom/narvii/chat/input/ChatInputTypingUserHelper;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->access$400(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    return-void
.end method

.method public onUserLeft(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
