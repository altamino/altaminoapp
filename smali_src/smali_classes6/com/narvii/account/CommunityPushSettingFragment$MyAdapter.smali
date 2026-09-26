.class Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/CommunityPushSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/CommunityPushSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private sendPushStatusRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/account/CommunityPushSettingFragment;->v(Lcom/narvii/account/CommunityPushSettingFragment;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 12
    .line 13
    iget v1, v1, Lcom/narvii/account/CommunityPushSettingFragment;->cId:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "/user-profile/push"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "api"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;

    .line 38
    .line 39
    const-class v3, Lcom/narvii/master/setting/CommunityPushResponse;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v3}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$2;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 17
    .line 18
    .line 19
    const v2, 0x7f120f6c

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 31
    .line 32
    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 33
    .line 34
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/account/CommunityPushSettingFragment;->t(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 43
    .line 44
    .line 45
    const v2, 0x7f12012c

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 65
    .line 66
    .line 67
    const v2, 0x7f120f6a

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2, v0}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 81
    .line 82
    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    .line 83
    .line 84
    iput-boolean v2, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 85
    .line 86
    .line 87
    const v2, 0x7f120f6b

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iput-object v0, v1, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/account/CommunityPushSettingFragment;->t(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iput-object v0, v1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 106
    .line 107
    iget-boolean v0, v0, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 108
    .line 109
    iput-boolean v0, v1, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 117
    .line 118
    .line 119
    const v2, 0x7f120f6d

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v2, v1}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 129
    .line 130
    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushExtensions:Lcom/narvii/master/setting/CommunitySubPushSetting;

    .line 133
    .line 134
    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 135
    .line 136
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 137
    .line 138
    .line 139
    const v2, 0x7f120f6e

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 148
    .line 149
    iget-object v2, v1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 150
    .line 151
    iget-boolean v2, v2, Lcom/narvii/master/setting/CommunityPushResponse;->pushEnabled:Z

    .line 152
    .line 153
    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Lcom/narvii/account/CommunityPushSettingFragment;->t(Lcom/narvii/account/CommunityPushSettingFragment;)Lcom/narvii/util/Callback;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    instance-of p2, v0, Lcom/narvii/list/prefs/PrefsToggle;

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    move-object p2, v0

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    .line 16
    .line 17
    .line 18
    const p3, 0x7f0a09d3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Landroid/widget/TextView;

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 36
    .line 37
    const/high16 v4, 0x41800000    # 16.0f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const p3, 0x7f0a041f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    .line 59
    const/high16 v2, 0x41400000    # 12.0f

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const p3, 0x7f0a02cb

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    check-cast p3, Landroid/widget/CheckBox;

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    iget-boolean v1, p2, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    const/4 v1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    .line 84
    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    .line 89
    new-instance p2, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, p0, v0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;-><init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    :cond_2
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->sendPushStatusRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    iput-object p2, p1, Lcom/narvii/account/CommunityPushSettingFragment;->response:Lcom/narvii/master/setting/CommunityPushResponse;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->error:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->sendPushStatusRequest()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 14
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
