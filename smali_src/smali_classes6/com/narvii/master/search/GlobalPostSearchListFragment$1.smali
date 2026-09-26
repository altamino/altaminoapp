.class Lcom/narvii/master/search/GlobalPostSearchListFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalPostSearchListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    return v1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;->this$0:Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :cond_3
    :goto_0
    return v1
.end method
