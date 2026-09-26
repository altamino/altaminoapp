.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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
.method constructor <init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method
