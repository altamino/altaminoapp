.class Lcom/narvii/chat/hangout/HangoutListFragment$1;
.super Ljava/lang/Object;
.source "HangoutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$1;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$1;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$1;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$1;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$1;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
