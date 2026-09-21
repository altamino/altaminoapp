.class Lcom/narvii/chat/input/ChatInputFragment$EditResponse;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final adapter:Lcom/narvii/list/NVAdapter;

.field private final msg:Lcom/narvii/model/ChatMessage;

.field private newText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/narvii/chat/MessageResponse;

    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->adapter:Lcom/narvii/list/NVAdapter;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->msg:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->newText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    instance-of v0, p2, Lcom/narvii/chat/MessageResponse;

    if-eqz v0, :cond_post

    check-cast p2, Lcom/narvii/chat/MessageResponse;

    iget-object v0, p2, Lcom/narvii/chat/MessageResponse;->message:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_post

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v0, :cond_post

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->newText:Ljava/lang/String;

    :cond_post
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->msg:Lcom/narvii/model/ChatMessage;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->newText:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/model/ChatMessage;->isEdited:Z

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$EditResponse;->adapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_end

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->notifyDataSetChanged()V

    :cond_end
    return-void
.end method
