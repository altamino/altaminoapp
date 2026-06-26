.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;
.super Lcom/narvii/adapter/RadioGroupAdapter;
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

    .line 89
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/RadioGroupAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getContext()"

    if-eqz p1, :cond_0

    .line 91
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_EVERYONE()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_EVERYONE()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_MY_FOLLOWING()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_MY_FOLLOWING()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 93
    new-instance v1, Lcom/narvii/adapter/RadioItem;

    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_NONE()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPRIVILEGE_NONE()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 97
    invoke-super/range {p0 .. p5}, Lcom/narvii/adapter/RadioGroupAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 98
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;->this$0:Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->getSelectedItemId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->access$sendRequest(Lcom/narvii/prefs/PostCommentPrivilegeFragment;I)V

    const/4 p1, 0x1

    return p1
.end method
