.class Lcom/narvii/feed/vote/MembersPopupDialog$2;
.super Ljava/lang/Object;
.source "MembersPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/MembersPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/MembersPopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/MembersPopupDialog;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v2, v1, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    array-length v2, v2

    sub-int/2addr v2, v0

    if-ne p1, v2, :cond_1

    iget-object v0, v1, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v2, v1, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    array-length v2, v2

    if-le v0, v2, :cond_1

    iget-object v0, v1, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    if-eqz v0, :cond_1

    .line 137
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nvObject"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {v0}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 143
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090449
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
