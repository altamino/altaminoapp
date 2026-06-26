.class Lcom/narvii/chat/detail/ThreadDetailFragment$2;
.super Lcom/narvii/list/StaticViewAdapter;
.source "ThreadDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/StaticViewAdapter;->getCount()I

    move-result v0

    return v0
.end method
