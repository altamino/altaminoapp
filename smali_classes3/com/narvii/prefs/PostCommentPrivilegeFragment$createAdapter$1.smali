.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "PostCommentPrivilegeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/PostCommentPrivilegeFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isListShown()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
