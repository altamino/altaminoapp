.class Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    const/4 p2, 0x2

    .line 2
    .line 3
    if-ne p1, p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->access$000(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Source"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->access$100(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p2, 0x1

    .line 41
    .line 42
    if-ne p1, p2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 49
    .line 50
    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->startChat(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x3

    .line 56
    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->this$1:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->g(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 88
    :cond_3
    :goto_0
    return-void
.end method
