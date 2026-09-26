.class public Lcom/narvii/chat/detail/ThreadDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;
    }
.end annotation


# static fields
.field static final ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final ADD_MEMBBER:I = 0x2

.field static final ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final AV_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final COPY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final INVITE:I = 0x1

.field public static final KEY_OPEN_INVITE_LIST:Ljava/lang/String; = "key_open_invite_list"

.field static final MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

.field private static final MEMBER_COUNT_THRESHOLD:I = 0xa

.field static final MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final PIN:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final SCREENROOM_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private autoClicking:Z

.field private autoOpenInviteList:Z

.field backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private community:Lcom/narvii/model/Community;

.field private configService:Lcom/narvii/config/ConfigService;

.field private fakeActionBar:Landroid/view/View;

.field public fullAuthorInfo:Lcom/narvii/model/User;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

.field private headerLayoutHeight:I

.field headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

.field private inviteView:Landroid/view/View;

.field mediaPicker:Lcom/narvii/media/MediaPickerFragment;

.field notJoined:Z

.field public onFinishListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field photoDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "thread.header"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 12
    .line 13
    const-string v1, "thread.content"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 21
    .line 22
    const-string v1, "thread.copy"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 30
    .line 31
    const-string v1, "thread.topics"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 39
    .line 40
    const-string v1, "thread.members"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 48
    .line 49
    const-string v1, "thread.mute"

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 57
    .line 58
    const-string v1, "thread.pin"

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 66
    .line 67
    const-string v1, "thread.announcement"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 75
    .line 76
    const-string v1, "thread.avpermission"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->AV_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 84
    .line 85
    const-string v1, "thread.srpermission"

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->SCREENROOM_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 91
    .line 92
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 93
    .line 94
    const-string v1, "thread.changebg"

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 100
    .line 101
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 102
    .line 103
    const-string v1, "thread.memberscaninvite"

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 109
    .line 110
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 111
    .line 112
    const-string v1, "thread.organizertrans"

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 120
    .line 121
    const-string v1, "thread.actions"

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 127
    .line 128
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 129
    .line 130
    const-string v1, "bubble.style"

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 136
    .line 137
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 138
    .line 139
    const-string v1, "thread.viewonly"

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 145
    .line 146
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 147
    .line 148
    const-string v1, "thread.cohost"

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 154
    .line 155
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 156
    .line 157
    const-string v1, "thread.enableprops"

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 163
    .line 164
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 165
    .line 166
    const-string v1, "thread.ptg"

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 172
    .line 173
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 174
    .line 175
    const-string v1, "thread.fans_only"

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 181
    .line 182
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 183
    .line 184
    const-string v1, "thread.margin"

    .line 185
    .line 186
    .line 187
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 190
    .line 191
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 192
    .line 193
    const-string v1, "thread.divide"

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoClicking:Z

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/chat/detail/ThreadDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/chat/detail/ThreadDetailFragment;ZZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->checkCommunityAvailability(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isMeInfluencer()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic H(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->removeUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic J(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowFlag()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic K(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showFlagReportDialog()V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showThreadFlagDialog()V

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->updateHeader()V

    return-void
.end method

.method private checkCommunityAvailability(ZZ)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 9
    .line 10
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    .line 11
    .line 12
    xor-int/lit8 v5, p1, 0x1

    .line 13
    .line 14
    new-instance v7, Lcom/narvii/chat/detail/ThreadDetailFragment$3;

    .line 15
    .line 16
    .line 17
    invoke-direct {v7, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$3;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V

    .line 18
    move v4, p1

    .line 19
    move v6, p2

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 23
    move-result p1

    .line 24
    xor-int/2addr p1, v1

    .line 25
    return p1
.end method

.method private isMeInfluencer()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private synthetic lambda$showPtgAndFansOnlyConflictDialog$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 9
    return-void
.end method

.method private synthetic lambda$showPtgAndFansOnlyConflictDialog$1(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 16
    return-void
.end method

.method private removeUser(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/model/User;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 44
    :cond_2
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

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shouldShowCopyLink()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    return v0
.end method

.method private shouldShowFlag()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lcom/narvii/model/ChatThread;->status:I

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    return v1
.end method

.method private showFlagReportDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 23
    return-void
.end method

.method private showPtgAndFansOnlyConflictDialog(Z)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f1211b0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    const v1, 0x7f1211af

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/detail/h;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/detail/h;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f1201e2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/chat/detail/i;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/chat/detail/i;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;ZLcom/narvii/widget/ACMAlertDialog;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1212a7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 55
    return-void
.end method

.method private showThreadFlagDialog()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->checkCommunityAvailability(ZZ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const v2, 0x7f120774

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 25
    .line 26
    .line 27
    const v2, 0x7f120775

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/chat/detail/ThreadDetailFragment$4;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$4;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 42
    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->lambda$showPtgAndFansOnlyConflictDialog$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/detail/ThreadDetailFragment;ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->lambda$showPtgAndFansOnlyConflictDialog$1(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private updateHeader()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/narvii/chat/detail/HeaderLayout;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayoutHeight:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/chat/detail/HeaderLayout;->setHeight1(I)V

    .line 23
    .line 24
    :cond_0
    if-eqz v0, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    instance-of v1, v1, Lcom/narvii/widget/NVListView;

    .line 31
    .line 32
    .line 33
    const v2, 0x7f0604b1

    .line 34
    .line 35
    .line 36
    const v3, 0x106000d

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    move v5, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v5, v2

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 61
    move-result v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    move v2, v3

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    :cond_4
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoClicking:Z

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    return-object p0
.end method


# virtual methods
.method public addMembers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    check-cast v4, Lcom/narvii/model/User;

    .line 42
    .line 43
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v5

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    check-cast v4, Lcom/narvii/model/User;

    .line 67
    const/4 v5, 0x2

    .line 68
    .line 69
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    new-instance v4, Lcom/narvii/chat/detail/ThreadDetailFragment$9;

    .line 85
    .line 86
    .line 87
    invoke-direct {v4, p0, v2, v1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$9;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/util/List;Ljava/util/List;Lcom/narvii/model/ChatThread;)V

    .line 88
    .line 89
    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v4, "/chat/thread/"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v0, "/member/invite"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    const-string v1, "uids"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    const-string v1, "api"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 156
    return-void
.end method

.method public changeBackground()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x46

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x6

    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 31
    .line 32
    .line 33
    const v3, 0x7f1211ae

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    const/16 v4, 0x64

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v4, v3, v5, v5}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    .line 51
    const/4 v4, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;ILjava/util/List;)V

    .line 55
    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    const-string v0, "configArea"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 21
    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "chatProperty"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 45
    .line 46
    :cond_2
    const-string v0, "chatType"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->containExtraKey(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const-string v1, "rtc"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_3
    const-string v1, "textChat"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 82
    :cond_4
    :goto_1
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$2;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d0742

    .line 14
    .line 15
    .line 16
    filled-new-array {v1}, [I

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 35
    return-object p1
.end method

.method public deleteMember(Lcom/narvii/model/User;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v5, Lcom/narvii/chat/detail/ThreadDetailFragment$6;

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, p0, v1, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$6;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 41
    return-void
.end method

.method public fromGlobalChat()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "__fromGlobalChat"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public fromGlobalNotJoined()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "chat_room_detail_page"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public inviteMembers()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 14
    .line 15
    const-string v2, "threadId"

    .line 16
    .line 17
    const-string v3, "maxMember"

    .line 18
    .line 19
    const-string v4, "showSearchBar"

    .line 20
    .line 21
    const-string v5, "exists"

    .line 22
    .line 23
    const-class v6, Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 24
    const/4 v7, 0x2

    .line 25
    const/4 v8, 0x1

    .line 26
    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    iget v9, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 30
    .line 31
    if-ne v9, v8, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    iget-object v9, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 43
    .line 44
    iget-object v9, v9, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v9, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v9

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v10

    .line 55
    .line 56
    if-eqz v10, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v10

    .line 61
    .line 62
    check-cast v10, Lcom/narvii/model/User;

    .line 63
    .line 64
    iget v11, v10, Lcom/narvii/model/User;->membershipStatus:I

    .line 65
    .line 66
    if-eq v11, v7, :cond_2

    .line 67
    .line 68
    if-ne v11, v8, :cond_1

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    .line 84
    const/16 v4, 0x64

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v1, v8}, Lcom/narvii/chat/detail/ThreadDetailFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_4
    if-eq v1, v8, :cond_5

    .line 102
    .line 103
    if-ne v1, v7, :cond_d

    .line 104
    .line 105
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    iget-object v9, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 111
    .line 112
    iget-object v9, v9, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 113
    .line 114
    if-eqz v9, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v9

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v10

    .line 123
    .line 124
    if-eqz v10, :cond_8

    .line 125
    .line 126
    .line 127
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    check-cast v10, Lcom/narvii/model/User;

    .line 131
    .line 132
    iget v11, v10, Lcom/narvii/model/User;->membershipStatus:I

    .line 133
    .line 134
    if-eq v11, v7, :cond_7

    .line 135
    .line 136
    if-ne v11, v8, :cond_6

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {v10}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 140
    move-result-object v10

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_8
    iget v9, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 147
    .line 148
    iget-object v10, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 149
    .line 150
    iget-object v10, v10, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 151
    .line 152
    if-eqz v10, :cond_9

    .line 153
    .line 154
    .line 155
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 156
    move-result v10

    .line 157
    .line 158
    .line 159
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 160
    move-result v9

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :cond_9
    iget-object v10, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 164
    .line 165
    if-eqz v10, :cond_a

    .line 166
    .line 167
    .line 168
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 169
    move-result v10

    .line 170
    .line 171
    .line 172
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 173
    move-result v9

    .line 174
    .line 175
    :cond_a
    :goto_2
    iget v10, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 176
    .line 177
    if-lt v9, v10, :cond_b

    .line 178
    .line 179
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    new-array v2, v8, [Ljava/lang/Object;

    .line 189
    .line 190
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v0

    .line 195
    const/4 v3, 0x0

    .line 196
    .line 197
    aput-object v0, v2, v3

    .line 198
    .line 199
    .line 200
    const v0, 0x7f12027e

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    const v0, 0x104000a

    .line 211
    const/4 v2, 0x0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 218
    goto :goto_3

    .line 219
    .line 220
    .line 221
    :cond_b
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    move-result-object v6

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    .line 227
    iget-object v4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 228
    .line 229
    iget-object v4, v4, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    .line 230
    .line 231
    if-nez v4, :cond_c

    .line 232
    .line 233
    iget-object v4, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 234
    .line 235
    .line 236
    :cond_c
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .line 242
    iget v4, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    const-string v0, "userids"

    .line 255
    .line 256
    .line 257
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object v1

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    invoke-static {p0, v6, v7}, Lcom/narvii/chat/detail/ThreadDetailFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 265
    :cond_d
    :goto_3
    return-void
.end method

.method public isCoHost()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isHost()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public notJoined()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1
    .line 2
    const-class v0, Lcom/narvii/model/User;

    .line 3
    .line 4
    const-string v1, "users"

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    .line 8
    if-ne p1, v3, :cond_0

    .line 9
    .line 10
    if-ne p2, v2, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lcom/narvii/chat/detail/ThreadDetailFragment;->addMembers(Ljava/util/List;)V

    .line 32
    :cond_0
    const/4 v4, 0x1

    .line 33
    .line 34
    if-ne p1, v4, :cond_7

    .line 35
    .line 36
    if-ne p2, v2, :cond_7

    .line 37
    .line 38
    if-eqz p3, :cond_7

    .line 39
    .line 40
    const-string v2, "account"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    iget-object v5, v1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 78
    move-result v5

    .line 79
    .line 80
    if-lez v5, :cond_7

    .line 81
    .line 82
    new-instance v5, Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v1

    .line 92
    const/4 v6, 0x0

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v7

    .line 97
    .line 98
    if-eqz v7, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    check-cast v7, Lcom/narvii/model/User;

    .line 105
    .line 106
    iget-object v8, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    move-result v8

    .line 111
    .line 112
    if-nez v8, :cond_1

    .line 113
    .line 114
    iget-object v6, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    iget-object v6, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 120
    .line 121
    iget v8, v7, Lcom/narvii/model/User;->membershipStatus:I

    .line 122
    .line 123
    if-nez v8, :cond_1

    .line 124
    .line 125
    iput v3, v7, Lcom/narvii/model/User;->membershipStatus:I

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    check-cast v1, Lcom/narvii/model/User;

    .line 143
    .line 144
    iget-object v3, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    move-result v3

    .line 149
    .line 150
    if-nez v3, :cond_3

    .line 151
    .line 152
    iget-object v3, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 156
    move-result v3

    .line 157
    .line 158
    if-nez v3, :cond_3

    .line 159
    .line 160
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_1

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 168
    move-result v0

    .line 169
    const/4 v1, 0x0

    .line 170
    .line 171
    if-ne v0, v4, :cond_5

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 187
    .line 188
    new-instance p2, Lcom/narvii/chat/detail/ThreadDetailFragment$7;

    .line 189
    .line 190
    .line 191
    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$7;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v6, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendInviteMemberToExistedChatRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 195
    return-void

    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    const-string v2, "chatInvite"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 208
    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result v2

    .line 214
    .line 215
    if-le v2, v4, :cond_6

    .line 216
    .line 217
    new-array v1, v1, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    check-cast v1, [Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;)V

    .line 227
    .line 228
    :cond_6
    new-instance v1, Lcom/narvii/chat/detail/ThreadDetailFragment$8;

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$8;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 232
    .line 233
    iput-object v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    .line 234
    .line 235
    .line 236
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 17
    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->dismiss()V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    const-string v1, "config"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    const-string v1, "affiliations"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 32
    .line 33
    const-string v1, "account"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 60
    .line 61
    const-string v1, "key_open_invite_list"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    .line 68
    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 75
    .line 76
    new-instance v2, Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    const-string v3, "Source"

    .line 82
    .line 83
    const-string v4, "1-1 > Group Chat"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    const-string v3, "chatInvite"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 107
    .line 108
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 109
    .line 110
    new-instance v2, Ljava/io/File;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    const-string v4, "photo"

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .line 125
    const-string v3, "chatBackground"

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .line 130
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    .line 131
    .line 132
    const-string v1, "background_picker"

    .line 133
    .line 134
    const-string v2, "mediaPicker"

    .line 135
    .line 136
    if-nez p1, :cond_1

    .line 137
    .line 138
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 139
    .line 140
    .line 141
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 142
    .line 143
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 144
    .line 145
    new-instance p1, Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .line 150
    const-string v4, "folder"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 176
    .line 177
    new-instance p1, Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 178
    .line 179
    .line 180
    invoke-direct {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;-><init>()V

    .line 181
    .line 182
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    const v2, 0x7f0a019c

    .line 194
    .line 195
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 209
    goto :goto_0

    .line 210
    .line 211
    .line 212
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 220
    .line 221
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    check-cast p1, Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 232
    .line 233
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 234
    .line 235
    :goto_0
    const-string p1, "__community"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    const-class v1, Lcom/narvii/model/Community;

    .line 242
    .line 243
    .line 244
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    check-cast p1, Lcom/narvii/model/Community;

    .line 248
    .line 249
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    .line 250
    .line 251
    const-string p1, "__fromGlobalChat"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 255
    move-result p1

    .line 256
    .line 257
    const-string v1, "fromRecentChat"

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 261
    move-result v1

    .line 262
    .line 263
    if-nez v1, :cond_2

    .line 264
    .line 265
    if-eqz p1, :cond_2

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 269
    move-result v1

    .line 270
    .line 271
    if-eqz v1, :cond_2

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    const-string v2, "communityNavBar"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    if-nez v1, :cond_2

    .line 284
    .line 285
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    .line 286
    .line 287
    if-eqz v1, :cond_2

    .line 288
    .line 289
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 290
    .line 291
    .line 292
    invoke-direct {v1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 293
    .line 294
    new-instance v3, Landroid/os/Bundle;

    .line 295
    .line 296
    .line 297
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 298
    .line 299
    const-string v4, "showBackButton"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    .line 316
    const v3, 0x1020002

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 320
    move-result-object v0

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 324
    .line 325
    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    .line 327
    move-result v0

    .line 328
    .line 329
    iput-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    .line 330
    .line 331
    if-eqz p1, :cond_3

    .line 332
    .line 333
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 337
    .line 338
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 342
    .line 343
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 350
    move-result-object p1

    .line 351
    .line 352
    .line 353
    const v0, 0x7f070512

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 357
    move-result p1

    .line 358
    .line 359
    iput p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayoutHeight:I

    .line 360
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120781

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v2, 0x7f08047b

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const v0, 0x7f1210ad

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v2, 0x7f080413

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f1210bb

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    const v0, 0x7f120438

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f12009d

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    .line 70
    .line 71
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0740

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->show()V

    .line 21
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0603eb

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210bb

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/share/ShareViewHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    const-string v1, "Chat Thread More Info"

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    const v1, 0x7f120438

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/chat/post/ThreadPost;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/narvii/chat/post/ThreadPost;-><init>(Lcom/narvii/model/ChatThread;)V

    .line 53
    .line 54
    new-instance v1, Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    const-class v4, Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "threadId"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    iget v3, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 73
    .line 74
    if-ne v3, v2, :cond_1

    .line 75
    .line 76
    const-string v3, "isGroupChat"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    .line 81
    const-string v3, "account"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 88
    .line 89
    const-string v4, "userId"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    const-string v3, "thread"

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    :cond_1
    const-string p1, "post"

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 118
    return v2

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 122
    move-result v0

    .line 123
    .line 124
    .line 125
    const v1, 0x7f120781

    .line 126
    .line 127
    if-ne v0, v1, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showThreadFlagDialog()V

    .line 131
    return v2

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 135
    move-result v0

    .line 136
    .line 137
    .line 138
    const v1, 0x7f12009d

    .line 139
    .line 140
    if-ne v0, v1, :cond_4

    .line 141
    .line 142
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 163
    return v2

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 167
    move-result v0

    .line 168
    .line 169
    .line 170
    const v1, 0x7f1210ad

    .line 171
    .line 172
    if-ne v0, v1, :cond_5

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 181
    .line 182
    .line 183
    invoke-static {p0, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 188
    .line 189
    .line 190
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 191
    move-result p1

    .line 192
    return p1
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/model/Media;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->deleteBackground()V

    .line 43
    :cond_2
    :goto_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    :goto_0
    const v1, 0x7f1210ad

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalNotJoined()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    const v2, 0x7f120781

    .line 34
    .line 35
    .line 36
    const v3, 0x7f12009d

    .line 37
    .line 38
    .line 39
    const v4, 0x7f120438

    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    goto :goto_4

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget v7, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 74
    const/4 v8, 0x2

    .line 75
    .line 76
    if-eq v7, v5, :cond_2

    .line 77
    .line 78
    if-ne v7, v8, :cond_3

    .line 79
    .line 80
    :cond_2
    iget-object v7, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 84
    move-result v7

    .line 85
    .line 86
    if-eqz v7, :cond_3

    .line 87
    .line 88
    iget v7, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 89
    .line 90
    if-eq v7, v8, :cond_3

    .line 91
    move v7, v5

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v7, v6

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowFlag()Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    move v2, v5

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move v2, v6

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    .line 120
    const-string v1, "account"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    move v0, v5

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move v0, v6

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    .line 152
    .line 153
    :goto_4
    const v0, 0x7f1210bb

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    .line 161
    move-result v1

    .line 162
    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    .line 171
    move-result v1

    .line 172
    .line 173
    if-nez v1, :cond_7

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_6

    .line 184
    goto :goto_5

    .line 185
    :cond_6
    move v5, v6

    .line 186
    .line 187
    .line 188
    :cond_7
    :goto_5
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    .line 190
    .line 191
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 192
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a07ff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0a0552

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 50
    .line 51
    if-nez p2, :cond_1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 56
    move-result-object p2

    .line 57
    move-object v1, p2

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 60
    :goto_1
    const/4 p2, 0x0

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget v0, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v0, p2

    .line 70
    .line 71
    :goto_2
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 72
    .line 73
    const/16 v3, 0x8

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    move v4, v3

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move v4, p2

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    move p2, v3

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    const v2, 0x7f070512

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 103
    move-result v0

    .line 104
    float-to-int v0, v0

    .line 105
    .line 106
    .line 107
    const v2, 0x7f0d0741

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 114
    move-result p2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 118
    move-result v0

    .line 119
    add-int/2addr p2, v0

    .line 120
    int-to-float p2, p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    const v2, 0x7f070459

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 131
    move-result v0

    .line 132
    add-float/2addr p2, v0

    .line 133
    float-to-int p2, p2

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 139
    .line 140
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 150
    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    .line 162
    const v0, 0x106000d

    .line 163
    goto :goto_5

    .line 164
    .line 165
    .line 166
    :cond_5
    const v0, 0x7f0604b1

    .line 167
    .line 168
    .line 169
    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    .line 171
    .line 172
    :cond_6
    const p2, 0x7f0a0e74

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    check-cast p1, Lcom/narvii/chat/detail/HeaderLayout;

    .line 179
    .line 180
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    .line 181
    .line 182
    new-instance p2, Lcom/narvii/chat/detail/ThreadDetailFragment$1;

    .line 183
    .line 184
    .line 185
    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$1;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/HeaderLayout;->setUserClickListener(Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->updateHeader()V

    .line 192
    return-void
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->notJoined()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public switchClicked(Z)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    const-string v1, "account"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->alertOption:I

    .line 29
    const/4 v3, 0x2

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    const/4 v2, 0x1

    .line 33
    move v9, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v9, v3

    .line 36
    .line 37
    :goto_0
    iget-boolean v2, v0, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 38
    .line 39
    new-instance v7, Lcom/narvii/util/dialog/ProgressDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-direct {v7, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 50
    .line 51
    const-string v4, "/chat/thread/"

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    if-ne v9, v3, :cond_3

    .line 56
    .line 57
    sget-object v3, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    sget-object v3, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-static {p0, v3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    const-string v5, "DoNotDisturb"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    iget-object v4, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "/member/"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "/alert"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    const-string v3, "alertOption"

    .line 126
    .line 127
    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 137
    move-result-object v1

    .line 138
    goto :goto_3

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    iget-object v4, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    const-string v4, "/unpin"

    .line 168
    goto :goto_2

    .line 169
    .line 170
    :cond_5
    const-string v4, "/pin"

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    :goto_3
    const-string v3, "api"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 194
    .line 195
    new-instance v11, Lcom/narvii/chat/detail/ThreadDetailFragment$11;

    .line 196
    .line 197
    const-class v6, Lcom/narvii/model/api/ApiResponse;

    .line 198
    move-object v4, v11

    .line 199
    move-object v5, p0

    .line 200
    move v8, p1

    .line 201
    move v10, v2

    .line 202
    .line 203
    .line 204
    invoke-direct/range {v4 .. v10}, Lcom/narvii/chat/detail/ThreadDetailFragment$11;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZIZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v1, v11}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 208
    .line 209
    if-nez v2, :cond_6

    .line 210
    .line 211
    const-string p1, "statistics"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 218
    .line 219
    const-string v1, "User Pins a Chat"

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    const-string v1, "Others"

    .line 226
    .line 227
    .line 228
    invoke-static {v0, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    const-string v1, "Chat Type"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    const-string v0, "More Info"

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    const-string v0, "User Pins a Chat Total"

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 247
    :cond_6
    return-void
.end method

.method public switchProperties(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    return-void
.end method

.method public switchProperties(IZ)V
    .locals 11

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "/chat/thread/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object v4, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {p0, v4}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    const-string v5, "ViewOnly"

    .line 5
    invoke-virtual {v4, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v0, "/view-only/disable"

    goto :goto_1

    :cond_2
    const-string v0, "/view-only/enable"

    .line 10
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    :goto_2
    move v10, v3

    move v3, p2

    goto/16 :goto_a

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isEnableProps()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    sget-object v4, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_3
    invoke-static {p0, v4}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    const-string v5, "EnableProps"

    .line 14
    invoke-virtual {v4, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string v0, "/tipping-perm-status/disable"

    goto :goto_4

    :cond_5
    const-string v0, "/tipping-perm-status/enable"

    .line 19
    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    const-string v5, "extensions"

    const-string v6, "fansOnly"

    const-string v7, "publishToGlobal"

    if-ne p1, v4, :cond_b

    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result v4

    .line 22
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isMeInfluencer()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v4, :cond_7

    move v8, v2

    goto :goto_5

    :cond_7
    move v8, v3

    :goto_5
    if-eqz p2, :cond_8

    if-eqz v8, :cond_8

    .line 23
    invoke-direct {p0, v2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showPtgAndFansOnlyConflictDialog(Z)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    .line 24
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_6

    :cond_9
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_6
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v9, "PublishToGlobal"

    .line 25
    invoke-virtual {p2, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    xor-int/lit8 v1, v4, 0x1

    .line 29
    invoke-virtual {v0, v7, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v8, :cond_a

    .line 30
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v6, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 33
    :cond_a
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 37
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    :goto_7
    move v3, v4

    move v10, v8

    goto/16 :goto_a

    :cond_b
    const/4 v4, 0x4

    if-ne p1, v4, :cond_10

    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v4

    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v4, :cond_c

    move v8, v2

    goto :goto_8

    :cond_c
    move v8, v3

    :goto_8
    if-eqz p2, :cond_d

    .line 41
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez v4, :cond_d

    .line 42
    invoke-direct {p0, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showPtgAndFansOnlyConflictDialog(Z)V

    return-void

    :cond_d
    if-eqz v4, :cond_e

    .line 43
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_9

    :cond_e
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_9
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v9, "FansOnly"

    .line 44
    invoke-virtual {p2, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    xor-int/lit8 v9, v4, 0x1

    .line 49
    invoke-virtual {v1, v6, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 50
    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v8, :cond_f

    .line 51
    invoke-virtual {v0, v7, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 52
    :cond_f
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 56
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    move v10, v3

    :goto_a
    if-nez v0, :cond_11

    return-void

    :cond_11
    xor-int/lit8 v9, v3, 0x1

    .line 58
    new-instance v7, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v7, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "api"

    .line 59
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 60
    invoke-virtual {v7}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 61
    new-instance v1, Lcom/narvii/chat/detail/ThreadDetailFragment$10;

    const-class v6, Lcom/narvii/model/api/ApiResponse;

    move-object v4, v1

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/narvii/chat/detail/ThreadDetailFragment$10;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;IZZ)V

    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public switchUserCanInviteClicked()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    const-string v1, "account"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v5, "/chat/thread/"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "/members-can-invite/"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    const-string v0, "disable"

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    const-string v0, "enable"

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    const-string v3, "api"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 105
    .line 106
    new-instance v4, Lcom/narvii/chat/detail/ThreadDetailFragment$12;

    .line 107
    .line 108
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, p0, v5, v2, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment$12;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 115
    return-void
.end method

.method public transOrganizer()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "rtc"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x5

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f12080b

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 55
    .line 56
    .line 57
    const v2, 0x7f1211ef

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 61
    .line 62
    .line 63
    const v2, 0x7f1201e2

    .line 64
    const/4 v3, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    .line 69
    new-instance v2, Lcom/narvii/chat/detail/ThreadDetailFragment$13;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, p0, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment$13;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/ChatThread;)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f12033f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 82
    return-void

    .line 83
    .line 84
    :cond_0
    const-class v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v2, "thread"

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_1
    return-void
.end method

.method public userOptions(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 18
    return-void

    .line 19
    .line 20
    :cond_2
    new-instance v1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/chat/detail/ThreadDetailFragment$5;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$5;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    .line 29
    .line 30
    const-string v3, "Chat Thread More Info"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 34
    return-void
.end method
