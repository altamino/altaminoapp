.class Lcom/narvii/invite/InviteMembersFragment$Adapter$3;
.super Ljava/lang/Object;
.source "InviteMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteMembersFragment$Adapter;->regenerate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteMembersFragment$Adapter;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 345
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 346
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 348
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    const-string v1, "api"

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 349
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    const-string v3, "__communityId"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "community/invitation"

    .line 350
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "duration"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "force"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 351
    new-instance v1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;

    const-class v2, Lcom/narvii/invite/NewInvitationResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter$3;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
