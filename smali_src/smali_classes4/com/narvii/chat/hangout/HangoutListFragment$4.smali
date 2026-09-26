.class Lcom/narvii/chat/hangout/HangoutListFragment$4;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$4;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->searchResultAdapter:Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/hangout/HangoutListFragment$SearchResultAdapter;->getCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    .line 34
    move-result v0

    .line 35
    return v0
.end method
