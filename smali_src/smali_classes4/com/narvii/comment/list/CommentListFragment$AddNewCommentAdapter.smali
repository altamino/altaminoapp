.class Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddNewCommentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0154

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    :cond_0
    const p2, 0x7f0a0f36

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 43
    .line 44
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListFragment;->access$000(Lcom/narvii/comment/list/CommentListFragment;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3, v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 54
    .line 55
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0a0099

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p3

    .line 66
    .line 67
    check-cast p3, Landroid/widget/TextView;

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    const/4 v0, -0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_1
    const v0, -0x777778

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 91
    .line 92
    if-eqz p3, :cond_2

    .line 93
    .line 94
    .line 95
    const p3, 0x7f08028a

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :cond_2
    const p3, 0x7f08028b

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p5, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    const p2, 0x7f0a0099

    .line 10
    .line 11
    if-eq p1, p2, :cond_2

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0f36

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    const-string p1, "account"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    const/4 p2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string p2, "CommentBar"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$AddNewCommentAdapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 77
    const/4 p2, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment;->commentNew(Ljava/lang/String;)V

    .line 81
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 82
    return p1
.end method
