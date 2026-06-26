.class Lcom/narvii/master/search/GlobalUserSearchFragment$1;
.super Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.source "GlobalUserSearchFragment.java"


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

    .line 63
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isListShown()Z
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    iget-object v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->ketword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$1;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
