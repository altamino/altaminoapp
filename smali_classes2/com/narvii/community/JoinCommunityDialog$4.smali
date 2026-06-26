.class final Lcom/narvii/community/JoinCommunityDialog$4;
.super Ljava/lang/Object;
.source "JoinCommunityDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cid:I

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/model/Community;Lcom/narvii/app/NVContext;ILandroid/content/Context;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$community:Lcom/narvii/model/Community;

    iput-object p2, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$ctx:Lcom/narvii/app/NVContext;

    iput p3, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$cid:I

    iput-object p4, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$cid:I

    invoke-static {v0, v1, p1}, Lcom/narvii/community/JoinCommunityDialog;->access$000(Landroid/content/Context;ILcom/narvii/model/Community;)V

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1}, Lcom/narvii/master/CommunityHelper;->autoOpenCommunityDetail()Lcom/narvii/master/CommunityHelper;

    move-result-object p1

    iget v0, p0, Lcom/narvii/community/JoinCommunityDialog$4;->val$cid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/community/JoinCommunityDialog$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
