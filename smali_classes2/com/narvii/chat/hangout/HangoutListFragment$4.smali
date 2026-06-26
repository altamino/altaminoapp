.class Lcom/narvii/chat/hangout/HangoutListFragment$4;
.super Lcom/narvii/list/MergeAdapter;
.source "HangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 333
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method
