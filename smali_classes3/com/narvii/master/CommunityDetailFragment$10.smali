.class Lcom/narvii/master/CommunityDetailFragment$10;
.super Lcom/narvii/list/MergeAdapter;
.source "CommunityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isListShown()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$1300(Lcom/narvii/master/CommunityDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$10;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment;->access$300(Lcom/narvii/master/CommunityDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
