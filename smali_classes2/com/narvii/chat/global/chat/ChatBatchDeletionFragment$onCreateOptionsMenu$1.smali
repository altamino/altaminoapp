.class final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;
.super Ljava/lang/Object;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f035e

    .line 143
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const-wide v0, 0xff4a90e2L

    long-to-int v1, v0

    const v0, 0x7f0f0193

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 145
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;)V

    const-wide v1, 0xffd0021bL

    long-to-int v2, v1

    const v1, 0x7f0f0348

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 187
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
