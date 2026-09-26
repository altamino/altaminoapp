.class Lcom/narvii/community/JoinCommunityDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/JoinCommunityDialog;->join(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/model/Community;Lcom/narvii/app/NVContext;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 10

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    .line 4
    new-instance v1, Lcom/narvii/community/JoinCommunityDialog$3$1;

    iget-object p1, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$ctx:Lcom/narvii/app/NVContext;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/community/JoinCommunityDialog$3$1;-><init>(Lcom/narvii/community/JoinCommunityDialog$3;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    iget-object v3, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$community:Lcom/narvii/model/Community;

    .line 6
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/community/JoinCommunityDialog$3;->val$context:Landroid/content/Context;

    .line 7
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {v0, v1, p1}, Lcom/narvii/community/JoinCommunityDialog;->a(Landroid/content/Context;ILcom/narvii/model/Community;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/community/JoinCommunityDialog$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
