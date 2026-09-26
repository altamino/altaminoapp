.class Lcom/narvii/community/JoinCommunityDialog$3$1;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3$1;->this$0:Lcom/narvii/community/JoinCommunityDialog$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    .line 4
    const/4 p2, 0x3

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3$1;->this$0:Lcom/narvii/community/JoinCommunityDialog$3;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/narvii/community/JoinCommunityDialog$3;->val$context:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/community/JoinCommunityDialog$3;->val$community:Lcom/narvii/model/Community;

    .line 13
    .line 14
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v0, p1}, Lcom/narvii/community/JoinCommunityDialog;->a(Landroid/content/Context;ILcom/narvii/model/Community;)V

    .line 18
    :cond_0
    return-void
.end method

.method protected onFinish()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 4
    return-void
.end method
