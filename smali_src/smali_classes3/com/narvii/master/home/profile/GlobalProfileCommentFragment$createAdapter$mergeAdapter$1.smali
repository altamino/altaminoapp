.class public final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method
