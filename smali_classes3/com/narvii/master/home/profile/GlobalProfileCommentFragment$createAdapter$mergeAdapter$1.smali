.class public final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "GlobalProfileCommentFragment.kt"


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
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isListShown()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    :goto_0
    return v0
.end method
