.class Lcom/narvii/community/JoinCommunityDialog$3$1;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "JoinCommunityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/JoinCommunityDialog$3;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/JoinCommunityDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/community/JoinCommunityDialog$3;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3$1;->this$0:Lcom/narvii/community/JoinCommunityDialog$3;

    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 80
    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3$1;->this$0:Lcom/narvii/community/JoinCommunityDialog$3;

    iget-object p2, p1, Lcom/narvii/community/JoinCommunityDialog$3;->val$context:Landroid/content/Context;

    iget-object p1, p1, Lcom/narvii/community/JoinCommunityDialog$3;->val$community:Lcom/narvii/model/Community;

    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p2, v0, p1}, Lcom/narvii/community/JoinCommunityDialog;->access$000(Landroid/content/Context;ILcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method

.method protected onFinish()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method
