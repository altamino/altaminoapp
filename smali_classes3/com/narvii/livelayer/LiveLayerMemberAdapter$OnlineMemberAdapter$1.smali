.class Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;
.super Ljava/lang/Object;
.source "LiveLayerMemberAdapter.java"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 237
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->access$300(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->access$400(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 242
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->startChat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 244
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->access$100(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 245
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
