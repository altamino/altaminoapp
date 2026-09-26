.class Lcom/narvii/master/search/GlobalUserSearchFragment$1;
.super Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalUserSearchFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method
