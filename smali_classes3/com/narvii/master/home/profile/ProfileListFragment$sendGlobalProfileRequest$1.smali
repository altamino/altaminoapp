.class final Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;
.super Ljava/lang/Object;
.source "ProfileListFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isRefresh:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/ProfileListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/util/RequestResult;)V
    .locals 5

    .line 301
    iget v0, p1, Lcom/narvii/util/RequestResult;->code:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 303
    iget-object v0, p1, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    instance-of v3, v0, Lcom/narvii/model/User;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    instance-of p1, v0, Lcom/narvii/model/User;

    if-nez p1, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v3, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->setUser(Lcom/narvii/model/User;)V

    .line 305
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1, v1}, Lcom/narvii/master/home/profile/ProfileListFragment;->setRequestSent(Z)V

    .line 307
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->$isRefresh:Z

    if-nez p1, :cond_9

    .line 308
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->getStatusView()Lcom/narvii/paging/state/PageStatusView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 309
    :cond_4
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->getStatusView()Lcom/narvii/paging/state/PageStatusView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 310
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    .line 311
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateHeader()V

    .line 312
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    const-string v0, "show_picker"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 313
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->getBtnEditAvatarFrame()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_2

    .line 317
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->$isRefresh:Z

    if-nez v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/master/home/profile/ProfileListFragment;->setRequestSent(Z)V

    .line 319
    iget-object v0, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->getStatusView()Lcom/narvii/paging/state/PageStatusView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/narvii/util/RequestResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->getStatusView()Lcom/narvii/paging/state/PageStatusView;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 321
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->updateViews()V

    :cond_9
    :goto_2
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/ProfileListFragment$sendGlobalProfileRequest$1;->call(Lcom/narvii/util/RequestResult;)V

    return-void
.end method
