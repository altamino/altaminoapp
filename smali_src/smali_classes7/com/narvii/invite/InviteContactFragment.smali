.class public Lcom/narvii/invite/InviteContactFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;,
        Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;,
        Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;,
        Lcom/narvii/invite/InviteContactFragment$SearchContactTask;,
        Lcom/narvii/invite/InviteContactFragment$Contact;,
        Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;,
        Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_EMAIL:I = 0x2

.field public static final REQUEST_PHONE:I = 0x1


# instance fields
.field private allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

.field allContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private finalStep:Landroid/widget/TextView;

.field gotActivityResult:Z

.field inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

.field keyword:Ljava/lang/String;

.field private mSearchBar:Lcom/narvii/widget/SearchBar;

.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field onClickListener:Landroid/view/View$OnClickListener;

.field searchContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

.field public selectedContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field selectedView:Landroid/view/View;

.field send:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/invite/InviteContactFragment$1;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method private goDashboard()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    const-string v0, "community"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-class v1, Lcom/narvii/model/Community;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/Community;

    .line 22
    .line 23
    const-string v1, "statistics"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 30
    .line 31
    const-string v2, "Create Community - Finished"

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    const-string v3, "Number of Communities Creation"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    .line 42
    const-string v2, "Joins a Community"

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "Type"

    .line 49
    .line 50
    const-string v3, "join"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 57
    .line 58
    const-string v4, "Community ID"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "Template"

    .line 65
    .line 66
    iget v4, v0, Lcom/narvii/model/Community;->templateId:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    const-string v2, "ACM - Created a Community"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    .line 77
    new-instance v1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    new-instance v2, Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    const-string v4, "number_of_communities_creation"

    .line 92
    const/4 v5, 0x1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4, v5}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    .line 96
    .line 97
    const-string v4, "type"

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    const-string v4, "community_id"

    .line 109
    .line 110
    .line 111
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    iget v3, v0, Lcom/narvii/model/Community;->templateId:I

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    const-string v4, "template"

    .line 120
    .line 121
    .line 122
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    const-string v3, "source"

    .line 125
    .line 126
    const-string v4, "acm_created_a_community"

    .line 127
    .line 128
    .line 129
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    const-string v3, "joins_a_community"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .line 136
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 137
    .line 138
    const-string v2, "new"

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 142
    .line 143
    const-string v0, "notification"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 153
    return-void
.end method

.method private removeSelectedView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->selectedView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    .line 18
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private searchContact(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    :cond_1
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;-><init>(Lcom/narvii/invite/InviteContactFragment;Ljava/util/List;Ljava/lang/String;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/invite/InviteContactFragment$5;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/narvii/invite/InviteContactFragment$5;-><init>(Lcom/narvii/invite/InviteContactFragment;Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    new-array v0, v0, [Ljava/lang/Void;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method

.method private sendInviteOut()Z
    .locals 9

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    const-string v2, "subject"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "text"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    iget-object v4, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    check-cast v5, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 41
    .line 42
    iget-object v6, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v6

    .line 47
    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    iget-object v5, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    iget-object v6, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v6

    .line 61
    .line 62
    if-nez v6, :cond_0

    .line 63
    .line 64
    iget-object v5, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x1

    .line 74
    const/4 v6, 0x0

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    new-instance v4, Lcom/narvii/share/ShareUtils;

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, p0}, Lcom/narvii/share/ShareUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 82
    const/4 v7, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v7, v2, v3, v7}, Lcom/narvii/share/ShareUtils;->emailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    if-nez v2, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    sget v4, Lcom/narvii/lib/R$string;->application_not_found:I

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v4, v6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/util/NVToast;->show()V

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_3
    :try_start_0
    const-string v4, "android.intent.extra.EMAIL"

    .line 105
    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 108
    move-result v7

    .line 109
    .line 110
    new-array v7, v7, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    move-result-object v7

    .line 115
    .line 116
    check-cast v7, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/4 v4, 0x2

    .line 121
    .line 122
    .line 123
    invoke-static {p0, v2, v4}, Lcom/narvii/invite/InviteContactFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    move v2, v5

    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_1
    move v2, v6

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 138
    move-result v4

    .line 139
    .line 140
    if-nez v4, :cond_6

    .line 141
    .line 142
    new-instance v4, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v7, "android.intent.action.VIEW"

    .line 145
    .line 146
    .line 147
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    .line 154
    invoke-static {v7}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    .line 157
    if-eqz v7, :cond_5

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    const-string v8, "sms:"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v8, "; "

    .line 173
    .line 174
    .line 175
    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 176
    move-result-object v8

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v7

    .line 184
    .line 185
    .line 186
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 187
    move-result-object v7

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    .line 192
    const-string v7, "sms_body"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    :try_start_1
    invoke-static {p0, v4, v5}, Lcom/narvii/invite/InviteContactFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    goto :goto_3

    .line 202
    :catch_1
    move-exception v3

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    move-result-object v3

    .line 207
    .line 208
    .line 209
    invoke-static {v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 210
    .line 211
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    sget v4, Lcom/narvii/lib/R$string;->application_not_found:I

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v4, v6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 221
    move-result-object v3

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/narvii/util/NVToast;->show()V

    .line 225
    .line 226
    :cond_7
    const-string v3, "statistics"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    check-cast v3, Lcom/narvii/util/statistics/StatisticsService;

    .line 233
    .line 234
    const-string v4, "Send Invites to Contacts"

    .line 235
    .line 236
    .line 237
    invoke-interface {v3, v4}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 238
    move-result-object v3

    .line 239
    .line 240
    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 242
    move-result v0

    .line 243
    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 246
    move-result v1

    .line 247
    add-int/2addr v0, v1

    .line 248
    .line 249
    const-string v1, "Send Invites to Contacts Total"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 253
    .line 254
    if-eqz v2, :cond_8

    .line 255
    goto :goto_4

    .line 256
    :cond_8
    move v5, v6

    .line 257
    :goto_4
    return v5
.end method

.method static bridge synthetic t(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->removeSelectedView()V

    return-void
.end method

.method private update()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateInviteeView()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateSendView()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    :cond_0
    return-void
.end method

.method private updateInviteeView()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sget v1, Lcom/narvii/lib/R$layout;->textview_invitee:I

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    sget v2, Lcom/narvii/lib/R$string;->invitees:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, ":"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    move v0, v3

    .line 90
    .line 91
    :goto_1
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 95
    move-result v1

    .line 96
    .line 97
    if-ge v0, v1, :cond_2

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    sget v4, Lcom/narvii/lib/R$layout;->textview_invitee_item:I

    .line 116
    .line 117
    iget-object v5, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    check-cast v2, Landroid/widget/TextView;

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    iget-object v5, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 141
    move-result v5

    .line 142
    .line 143
    add-int/lit8 v5, v5, -0x1

    .line 144
    .line 145
    if-eq v0, v5, :cond_1

    .line 146
    .line 147
    const-string v5, ","

    .line 148
    goto :goto_2

    .line 149
    .line 150
    :cond_1
    const-string v5, ""

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    .line 165
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    return-void
.end method

.method private updateSendView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    xor-int/2addr v1, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    sget v1, Lcom/narvii/lib/R$string;->send_one_invite:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->send_invites:I

    .line 35
    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    .line 49
    aput-object v3, v2, v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteContactFragment$2;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/list/MergeAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    iput-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/invite/InviteContactFragment;->allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    const/high16 v3, 0x428c0000    # 70.0f

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 58
    move-result v2

    .line 59
    float-to-int v2, v2

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const/16 v0, 0x23

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 17
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    const/4 p3, 0x2

    .line 8
    .line 9
    if-ne p1, p3, :cond_3

    .line 10
    .line 11
    :cond_0
    const-string p1, "afterCreateCommunity"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iput-boolean p2, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->goDashboard()V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "afterCreateCommunity"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->goDashboard()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->send:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->sendInviteOut()Z

    .line 12
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$string;->invite_contacts:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->fragment_invite_contact:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    new-instance p2, Landroid/view/GestureDetector;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/invite/InviteContactFragment$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteContactFragment$3;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$4;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lcom/narvii/invite/InviteContactFragment$4;-><init>(Lcom/narvii/invite/InviteContactFragment;Landroid/view/GestureDetector;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/invite/InviteContactFragment;->searchContact(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 14
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/invite/InviteContactFragment;->searchContact(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->search:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    .line 25
    .line 26
    sget v1, Lcom/narvii/lib/R$string;->invite_contact_search_hint:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Lcom/narvii/widget/SearchBar;->setHintText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    sget p2, Lcom/narvii/lib/R$id;->final_step:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->finalStep:Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    sget v2, Lcom/narvii/lib/R$string;->create_final_step_desc:I

    .line 51
    const/4 v3, 0x1

    .line 52
    .line 53
    new-array v3, v3, [Ljava/lang/Object;

    .line 54
    const/4 v4, 0x5

    .line 55
    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    aput-object v4, v3, v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "\u270c"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->finalStep:Landroid/widget/TextView;

    .line 82
    .line 83
    const-string v0, "afterCreateCommunity"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 94
    move-result p2

    .line 95
    .line 96
    if-eqz p2, :cond_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 103
    .line 104
    sget v0, Lcom/narvii/lib/R$string;->skip:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 108
    .line 109
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->invitee_layout:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateInviteeView()V

    .line 121
    .line 122
    sget p2, Lcom/narvii/lib/R$id;->send:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    check-cast p1, Landroid/widget/TextView;

    .line 129
    .line 130
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateSendView()V

    .line 137
    return-void
.end method
