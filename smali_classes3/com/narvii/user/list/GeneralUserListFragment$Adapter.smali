.class Lcom/narvii/user/list/GeneralUserListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "GeneralUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/list/GeneralUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/GeneralUserListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/list/GeneralUserListFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/user/list/GeneralUserListFragment$Adapter;->this$0:Lcom/narvii/user/list/GeneralUserListFragment;

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/list/GeneralUserListFragment$Adapter;->this$0:Lcom/narvii/user/list/GeneralUserListFragment;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method
