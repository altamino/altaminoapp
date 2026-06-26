.class final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$1\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getApiRequest$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
