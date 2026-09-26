.class Lcom/narvii/feed/vote/MembersPopupDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/MembersPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/MembersPopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/MembersPopupDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v1, 0x3

    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    const/4 v1, 0x2

    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    move v1, v0

    .line 25
    .line 26
    :goto_0
    :pswitch_4
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 29
    array-length v2, v2

    .line 30
    sub-int/2addr v2, v0

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    move-result p1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 47
    array-length v2, v2

    .line 48
    .line 49
    if-le p1, v2, :cond_1

    .line 50
    .line 51
    iget-object p1, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const-string v1, "nvObject"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 80
    move-result v0

    .line 81
    .line 82
    const-string v1, "objectType"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    move-result p1

    .line 108
    .line 109
    if-ge v1, p1, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/model/User;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    if-nez p1, :cond_2

    .line 140
    return-void

    .line 141
    .line 142
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-static {v0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    .line 151
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$2;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 155
    return-void

    .line 156
    nop

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    :pswitch_data_0
    .packed-switch 0x7f0a0580
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
