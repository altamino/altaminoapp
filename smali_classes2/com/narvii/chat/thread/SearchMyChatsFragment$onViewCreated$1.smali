.class final Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SearchMyChatsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/SearchMyChatsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
