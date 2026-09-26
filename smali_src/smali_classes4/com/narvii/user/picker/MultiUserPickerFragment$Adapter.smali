.class public Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/picker/MultiUserPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation


# instance fields
.field exists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field existsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;",
            "Lcom/narvii/model/User;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/User;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->spamProtection:Z

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "type"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "id"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string p1, "account"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v3, "/user-profile/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "/"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->target()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const-string v0, "name"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string v0, "/user-profile"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v0, "all"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    .line 95
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    const-string v1, "q"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 121
    .line 122
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 123
    .line 124
    .line 125
    const-string/jumbo v1, "threadId"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v2

    .line 134
    .line 135
    if-nez v2, :cond_3

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    .line 140
    :cond_3
    const-string v0, "needCheckCanBeInvitedToChat"

    .line 141
    .line 142
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 149
    move-result-object p1

    .line 150
    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a0f54

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0f53

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a0f55

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    instance-of v1, p1, Lcom/narvii/model/User;

    .line 39
    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/model/User;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p3, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    .line 74
    move-result p3

    .line 75
    .line 76
    if-eqz p3, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    :goto_1
    iget-boolean p1, p1, Lcom/narvii/model/User;->canNotBeInvitedToChat:Z

    .line 102
    .line 103
    if-nez p1, :cond_3

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_3
    const/high16 v3, 0x3f000000    # 0.5f

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 110
    goto :goto_3

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_3
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0770

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/User;

    .line 7
    .line 8
    iget-boolean p1, p3, Lcom/narvii/model/User;->canNotBeInvitedToChat:Z

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string p4, "api"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    iget-object p4, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 24
    .line 25
    const-string p5, "id"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    .line 32
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result p5

    .line 34
    .line 35
    if-eqz p5, :cond_0

    .line 36
    .line 37
    const-string p4, "account"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p4

    .line 42
    .line 43
    check-cast p4, Lcom/narvii/account/AccountService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 47
    move-result-object p4

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object p5

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "/user-profile/"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p4, "/chat-invite-check/"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 73
    move-result-object p3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p5, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 86
    .line 87
    .line 88
    const-string/jumbo p4, "threadId"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    .line 95
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p5, p4, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 105
    move-result-object p3

    .line 106
    .line 107
    new-instance p4, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter$1;

    .line 108
    .line 109
    const-class p5, Lcom/narvii/model/api/ApiResponse;

    .line 110
    .line 111
    .line 112
    invoke-direct {p4, p0, p5}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter$1;-><init>(Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;Ljava/lang/Class;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p3, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 116
    return p2

    .line 117
    .line 118
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    .line 119
    const/4 p4, 0x0

    .line 120
    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 125
    move-result p1

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 134
    move-result p1

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move p1, p4

    .line 137
    .line 138
    :goto_0
    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 139
    .line 140
    if-nez p5, :cond_5

    .line 141
    move p5, p4

    .line 142
    goto :goto_1

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result p5

    .line 147
    :goto_1
    add-int/2addr p1, p5

    .line 148
    .line 149
    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 150
    .line 151
    .line 152
    invoke-static {p5}, Lcom/narvii/user/picker/MultiUserPickerFragment;->t(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    .line 153
    move-result p5

    .line 154
    .line 155
    if-lez p5, :cond_6

    .line 156
    .line 157
    iget-object p5, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {p5}, Lcom/narvii/user/picker/MultiUserPickerFragment;->t(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    .line 161
    move-result p5

    .line 162
    .line 163
    if-lt p1, p5, :cond_6

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1, p3}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    .line 169
    move-result p1

    .line 170
    .line 171
    if-nez p1, :cond_6

    .line 172
    .line 173
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 177
    move-result-object p3

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    iget-object p3, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 183
    .line 184
    new-array p5, p2, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-static {p3}, Lcom/narvii/user/picker/MultiUserPickerFragment;->t(Lcom/narvii/user/picker/MultiUserPickerFragment;)I

    .line 188
    move-result v0

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    aput-object v0, p5, p4

    .line 195
    .line 196
    .line 197
    const v0, 0x7f120278

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v0, p5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    const p3, 0x104000a

    .line 208
    const/4 p5, 0x0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p3, p4, p5}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 215
    return p2

    .line 216
    .line 217
    :cond_6
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->exists:Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, p1, p3}, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->isListContainsUser(Ljava/util/List;Lcom/narvii/model/User;)Z

    .line 221
    move-result p1

    .line 222
    .line 223
    if-nez p1, :cond_b

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->existsIds:Ljava/util/ArrayList;

    .line 226
    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 231
    move-result-object p4

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 235
    move-result p1

    .line 236
    .line 237
    if-nez p1, :cond_b

    .line 238
    .line 239
    :cond_7
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 240
    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    move-result p4

    .line 250
    .line 251
    if-eqz p4, :cond_9

    .line 252
    .line 253
    .line 254
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    move-result-object p4

    .line 256
    .line 257
    check-cast p4, Lcom/narvii/model/User;

    .line 258
    .line 259
    iget-object p4, p4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 260
    .line 261
    iget-object p5, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    move-result p4

    .line 266
    .line 267
    if-eqz p4, :cond_8

    .line 268
    .line 269
    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 271
    goto :goto_2

    .line 272
    .line 273
    :cond_9
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 274
    .line 275
    if-nez p1, :cond_a

    .line 276
    .line 277
    new-instance p1, Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 283
    .line 284
    :cond_a
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    :goto_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 291
    .line 292
    :cond_b
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->y(Lcom/narvii/user/picker/MultiUserPickerFragment;)V

    .line 296
    return p2

    .line 297
    .line 298
    .line 299
    :cond_c
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 300
    move-result p1

    .line 301
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 8
    .line 9
    const-string v1, "keyword"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$Adapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "keyword"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object v0
.end method
