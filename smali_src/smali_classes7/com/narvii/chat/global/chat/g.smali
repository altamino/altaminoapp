.class public final synthetic Lcom/narvii/chat/global/chat/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/g;->a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/g;->a:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/chat/global/chat/g;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->m(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method
