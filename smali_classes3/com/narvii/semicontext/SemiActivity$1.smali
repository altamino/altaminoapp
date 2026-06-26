.class Lcom/narvii/semicontext/SemiActivity$1;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SemiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/semicontext/SemiActivity;->join()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/semicontext/SemiActivity;

.field final synthetic val$community:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/semicontext/SemiActivity;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Community;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    iput-object p4, p0, Lcom/narvii/semicontext/SemiActivity$1;->val$community:Lcom/narvii/model/Community;

    invoke-direct {p0, p2, p3}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 122
    iget-object p1, p0, Lcom/narvii/semicontext/SemiActivity$1;->this$0:Lcom/narvii/semicontext/SemiActivity;

    invoke-static {p1}, Lcom/narvii/semicontext/SemiActivity;->access$000(Lcom/narvii/semicontext/SemiActivity;)V

    :cond_0
    return-void
.end method

.method protected onFinish()V
    .locals 0

    .line 140
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method
