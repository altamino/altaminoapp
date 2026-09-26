.class Lcom/narvii/invite/InviteMembersFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment;->durtationList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 33
    .line 34
    const-string v1, "api"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 49
    .line 50
    const-string v3, "__communityId"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "community/invitation"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "duration"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string v1, "force"

    .line 81
    .line 82
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    new-instance v1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;

    .line 93
    .line 94
    const-class v2, Lcom/narvii/invite/NewInvitationResponse;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;-><init>(Lcom/narvii/invite/InviteMembersFragment$Adapter$3;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 101
    return-void
.end method
