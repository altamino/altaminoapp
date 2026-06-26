.class public Lcom/narvii/chat/detail/ThreadDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "ThreadDetailFragment.java"

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

    .line 134
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.header"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 135
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.content"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CONTENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 136
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.copy"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COPY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 137
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.topics"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->TOPICS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 138
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.members"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 139
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.mute"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MUTE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 140
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.pin"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 141
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.announcement"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ANNOUNCEMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 142
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.avpermission"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->AV_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 143
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.srpermission"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->SCREENROOM_PERMISSION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 144
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.changebg"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->CHANGE_BACKGROUND:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 145
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.memberscaninvite"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MEMBERS_CAN_INVITE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 146
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.organizertrans"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ORGANIZER_TRANS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 147
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.actions"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ACTIONS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 148
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "bubble.style"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->BUBBLE_STYLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 149
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.viewonly"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->VIEW_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 150
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.cohost"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->COHOST:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 151
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.enableprops"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->ENABLE_PROPS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 152
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.ptg"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->PUBLISH_TO_GLOBAL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 153
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.fans_only"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->FANS_ONLY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 154
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.margin"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 155
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "thread.divide"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadDetailFragment;->DIVIDE:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/detail/ThreadDetailFragment;ZZ)Z
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->checkCommunityAvailability(ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/detail/ThreadDetailFragment;)Landroid/view/View;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/detail/ThreadDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->inviteView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showThreadFlagDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->removeUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showFlagReportDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoClicking:Z

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoClicking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isMeInfluencer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/model/Community;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/detail/ThreadDetailFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/detail/ThreadDetailFragment;)Z
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowFlag()Z

    move-result p0

    return p0
.end method

.method private checkCommunityAvailability(ZZ)Z
    .locals 8

    .line 433
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v3, v0, Lcom/narvii/model/Community;->id:I

    xor-int/lit8 v5, p1, 0x1

    new-instance v7, Lcom/narvii/chat/detail/ThreadDetailFragment$3;

    invoke-direct {v7, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$3;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Z)V

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isMeInfluencer()Z
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeUser(Lcom/narvii/model/User;)V
    .locals 3

    .line 1520
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1522
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 1524
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1528
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private shouldShowCopyLink()Z
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 372
    iget v3, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 373
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private shouldShowFlag()Z
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 365
    iget v3, v0, Lcom/narvii/model/ChatThread;->status:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isHost()Z

    move-result v3

    if-nez v3, :cond_2

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private showFlagReportDialog()V
    .locals 2

    .line 1452
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method private showPtgAndFansOnlyConflictDialog(Z)V
    .locals 3

    .line 1912
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v1, 0x7f0f10b5

    goto :goto_0

    :cond_0
    const v1, 0x7f0f10b4

    .line 1913
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0193

    .line 1914
    new-instance v2, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 1918
    new-instance v2, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$onaVqTl0rEr8GTbMAJ2lchQoNX0;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/chat/detail/-$$Lambda$ThreadDetailFragment$onaVqTl0rEr8GTbMAJ2lchQoNX0;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;ZLcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    .line 1926
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1927
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showThreadFlagDialog()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1423
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment;->checkCommunityAvailability(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1426
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f06c8

    .line 1427
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f06c9

    .line 1428
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 1429
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$4;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1448
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private updateHeader()V
    .locals 6

    .line 488
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 489
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v1, v0}, Lcom/narvii/chat/detail/HeaderLayout;->setThread(Lcom/narvii/model/ChatThread;)V

    .line 491
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    iget v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayoutHeight:I

    invoke-virtual {v1, v2}, Lcom/narvii/chat/detail/HeaderLayout;->setHeight1(I)V

    :cond_0
    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/widget/NVListView;

    const v2, 0x106000d

    const v3, 0x7f060223

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x106000d

    goto :goto_0

    :cond_1
    const v5, 0x7f060223

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz v1, :cond_4

    .line 498
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f060223

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_4
    return-void
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

    .line 1673
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 1677
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 1680
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 1681
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1684
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1685
    iget-object v5, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 1686
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    const/4 v5, 0x2

    .line 1687
    iput v5, v4, Lcom/narvii/model/User;->membershipStatus:I

    .line 1688
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1692
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1693
    new-instance v4, Lcom/narvii/chat/detail/ThreadDetailFragment$9;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment$9;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/util/List;Ljava/util/List;Lcom/narvii/model/ChatThread;)V

    iput-object v4, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 1732
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1735
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member/invite"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "uids"

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 1736
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 1737
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public changeBackground()V
    .locals 6

    .line 2030
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 2034
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 2037
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v3, 0x64

    const v4, 0x7f0f10b3

    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2041
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;ILjava/util/List;)V

    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 3

    .line 515
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    const-string v0, "configArea"

    .line 516
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 519
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    if-eqz v0, :cond_1

    .line 521
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatProperty(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chatProperty"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 524
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->getLogEvent()Lcom/narvii/logging/LogEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 525
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_2
    const-string v0, "chatType"

    .line 528
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->containExtraKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rtc"

    .line 529
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/RtcService;

    .line 530
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 532
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->getChatType(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_1

    :cond_3
    const-string v1, "textChat"

    .line 535
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_4
    :goto_1
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 297
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 298
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$2;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b068c

    aput v4, v2, v3

    .line 308
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 309
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 311
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public deleteMember(Lcom/narvii/model/User;)V
    .locals 6

    .line 1500
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 1504
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1505
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1506
    new-instance v2, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v2, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1507
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    new-instance v5, Lcom/narvii/chat/detail/ThreadDetailFragment$6;

    invoke-direct {v5, p0, v1, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$6;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/User;)V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public fromGlobalChat()Z
    .locals 1

    const-string v0, "__fromGlobalChat"

    .line 484
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fromGlobalNotJoined()Z
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatRoomDetailPage"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public inviteMembers()V
    .locals 12

    .line 1538
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 1543
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    const-string v2, "threadId"

    const-string v3, "maxMember"

    const-string v4, "showSearchBar"

    const-string v5, "exists"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_4

    iget v1, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    if-ne v1, v7, :cond_4

    .line 1545
    const-class v1, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 1546
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1547
    iget-object v9, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object v9, v9, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 1548
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/narvii/model/User;

    .line 1549
    iget v11, v10, Lcom/narvii/model/User;->membershipStatus:I

    if-eq v11, v6, :cond_2

    if-ne v11, v7, :cond_1

    .line 1551
    :cond_2
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1557
    :cond_3
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x64

    .line 1559
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 1562
    :cond_4
    iget v1, v0, Lcom/narvii/model/ChatThread;->type:I

    if-eq v1, v7, :cond_5

    if-ne v1, v6, :cond_d

    .line 1564
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    iget-object v8, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object v8, v8, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v8, :cond_8

    .line 1566
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/User;

    .line 1567
    iget v10, v9, Lcom/narvii/model/User;->membershipStatus:I

    if-eq v10, v6, :cond_7

    if-ne v10, v7, :cond_6

    .line 1569
    :cond_7
    invoke-virtual {v9}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1574
    :cond_8
    iget v8, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 1575
    iget-object v9, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object v9, v9, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz v9, :cond_9

    .line 1577
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    .line 1578
    :cond_9
    iget-object v9, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v9, :cond_a

    .line 1580
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 1579
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1582
    :cond_a
    :goto_2
    iget v9, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    if-lt v8, v9, :cond_b

    .line 1583
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f023b

    new-array v3, v7, [Ljava/lang/Object;

    .line 1584
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 1585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1584
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    const/4 v2, 0x0

    .line 1586
    invoke-virtual {v1, v0, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1588
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_3

    .line 1590
    :cond_b
    const-class v8, Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {v8}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 1591
    invoke-virtual {v8, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1592
    iget-object v4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object v4, v4, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-nez v4, :cond_c

    .line 1594
    iget-object v4, v0, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 1596
    :cond_c
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    iget v4, v0, Lcom/narvii/model/ChatThread;->membersQuota:I

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userids"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    invoke-virtual {p0, v8, v6}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public isCoHost()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method public isHost()Z
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$showPtgAndFansOnlyConflictDialog$0$ThreadDetailFragment(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1915
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1916
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showPtgAndFansOnlyConflictDialog$1$ThreadDetailFragment(ZLcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1920
    invoke-virtual {p0, p1, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1922
    invoke-virtual {p0, p1, p3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    .line 1924
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method public notJoined()Z
    .locals 2

    const-string v0, "config"

    .line 508
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 509
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    const-string/jumbo v0, "users"

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1609
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1610
    const-class v4, Lcom/narvii/model/User;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1611
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1612
    invoke-virtual {p0, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->addMembers(Ljava/util/List;)V

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    const-string v1, "account"

    .line 1617
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1618
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1620
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    const-class v4, Lcom/narvii/model/User;

    invoke-static {v0, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1623
    iget-object v4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v4}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    if-eqz v4, :cond_7

    .line 1624
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 1625
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1626
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 1628
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/User;

    .line 1629
    iget-object v8, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1630
    iget-object v6, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    iget-object v6, v7, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 1632
    iget v8, v7, Lcom/narvii/model/User;->membershipStatus:I

    if-nez v8, :cond_1

    .line 1633
    iput v2, v7, Lcom/narvii/model/User;->membershipStatus:I

    goto :goto_0

    .line 1637
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 1638
    iget-object v4, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1639
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1643
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1644
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1645
    new-instance p2, Lcom/narvii/chat/detail/ThreadDetailFragment$7;

    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$7;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    invoke-virtual {p1, v6, p2}, Lcom/narvii/chat/util/ChatRequestHelper;->sendInviteMemberToExistedChatRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void

    .line 1656
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "chatInvite"

    .line 1657
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_6

    .line 1658
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    new-array v1, v1, [Ljava/lang/String;

    .line 1659
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;)V

    .line 1661
    :cond_6
    new-instance v1, Lcom/narvii/chat/detail/ThreadDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$8;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    iput-object v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    .line 1669
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    .line 477
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 478
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 2106
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2107
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 186
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "config"

    .line 190
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string v1, "affiliations"

    .line 191
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/AffiliationsService;

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v1, "account"

    .line 192
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 193
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 194
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const-string v1, "key_open_invite_list"

    .line 195
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->autoOpenInviteList:Z

    if-nez p1, :cond_0

    .line 198
    new-instance v1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {v1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 199
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Source"

    const-string v4, "1-1 > Group Chat"

    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "chatInvite"

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 205
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "photo"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "chatBackground"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->photoDir:Ljava/io/File;

    const-string v1, "background_picker"

    const-string v2, "mediaPicker"

    if-nez p1, :cond_1

    .line 207
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 208
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "folder"

    .line 209
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v3, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 213
    new-instance p1, Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-direct {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v2, 0x7f09010a

    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1, v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 217
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/detail/BackgroundPickerFragment;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    :goto_0
    const-string p1, "__community"

    .line 220
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    const-string p1, "__fromGlobalChat"

    .line 221
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "fromRecentChat"

    .line 222
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "communityNavBar"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->community:Lcom/narvii/model/Community;

    if-eqz v1, :cond_2

    .line 224
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-direct {v1}, Lcom/narvii/amino/CommunityNavBarFragment;-><init>()V

    .line 225
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "showBackButton"

    .line 226
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->notJoined:Z

    if-eqz p1, :cond_3

    .line 233
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 237
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 239
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayoutHeight:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const v0, 0x7f0f06d5

    const/4 v1, 0x0

    .line 317
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080369

    .line 318
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    const v0, 0x7f0f0fa2

    .line 324
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080309

    .line 325
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 326
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0fb0

    .line 327
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f03cd

    .line 328
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0f0094

    .line 329
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 330
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 331
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b068a

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 0

    .line 2089
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    if-eqz p1, :cond_0

    .line 2090
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 2091
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->show()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 2097
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 2098
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 2099
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 291
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060181

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 387
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fb0

    if-ne v0, v1, :cond_0

    .line 388
    new-instance v0, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Chat Thread More Info"

    .line 389
    iput-object v1, v0, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto/16 :goto_0

    .line 391
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f03cd

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 392
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 393
    new-instance v0, Lcom/narvii/chat/post/ThreadPost;

    invoke-direct {v0, p1}, Lcom/narvii/chat/post/ThreadPost;-><init>(Lcom/narvii/model/ChatThread;)V

    .line 394
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v4, "threadId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget v3, p1, Lcom/narvii/model/ChatThread;->type:I

    if-ne v3, v2, :cond_1

    const-string v3, "isGroupChat"

    .line 400
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "account"

    .line 401
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 402
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "thread"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "post"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 408
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f06d5

    if-ne v0, v1, :cond_3

    .line 409
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showThreadFlagDialog()V

    return v2

    .line 411
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0094

    if-ne v0, v1, :cond_4

    .line 412
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 413
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v2

    .line 417
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_5

    .line 418
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-static {p0, v0}, Lcom/narvii/share/ShareDialog;->getShareDialogForThread(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    .line 420
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

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

    .line 2077
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    if-eqz p2, :cond_2

    .line 2078
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setChatThread(Lcom/narvii/model/ChatThread;)V

    if-eqz p1, :cond_1

    .line 2079
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2082
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V

    goto :goto_1

    .line 2080
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->backgroundPickerFragment:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->deleteBackground()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .line 341
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    const v1, 0x7f0f0fa2

    .line 342
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalNotJoined()Z

    move-result v1

    const v2, 0x7f0f06d5

    const v3, 0x7f0f0094

    const v4, 0x7f0f03cd

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 345
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 349
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_3

    iget v7, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v8, 0x2

    if-eq v7, v5, :cond_2

    if-ne v7, v8, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v7, v0}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/narvii/model/ChatThread;->condition:I

    if-eq v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->fromGlobalChat()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowFlag()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v1, "account"

    .line 351
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 352
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 353
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 354
    :goto_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    const v0, 0x7f0f0fb0

    .line 358
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->shouldShowCopyLink()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_5
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 249
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090679

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    const p2, 0x7f090418

    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 253
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/narvii/model/ChatThread;

    :goto_1
    const/4 p2, 0x0

    if-eqz v1, :cond_2

    .line 255
    iget v0, v1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 256
    :goto_2
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 p2, 0x8

    :goto_4
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    const v0, 0x7f0b068b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 259
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 260
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07023c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 262
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    if-eqz v1, :cond_6

    .line 264
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerOverlay:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->singleChat()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x106000d

    goto :goto_5

    :cond_5
    const v0, 0x7f060223

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_6
    const p2, 0x7f090b6f

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/detail/HeaderLayout;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    .line 267
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->headerLayout:Lcom/narvii/chat/detail/HeaderLayout;

    new-instance p2, Lcom/narvii/chat/detail/ThreadDetailFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$1;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/detail/HeaderLayout;->setUserClickListener(Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;)V

    .line 280
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->updateHeader()V

    return-void
.end method

.method protected shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z
    .locals 2

    .line 378
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 380
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->notJoined()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldShowNotAvailable(Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public switchClicked(Z)V
    .locals 12

    .line 1931
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "account"

    .line 1934
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1935
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1938
    :cond_1
    iget v2, v0, Lcom/narvii/model/ChatThread;->alertOption:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x2

    .line 1939
    :goto_0
    iget-boolean v2, v0, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 1941
    new-instance v8, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1942
    invoke-virtual {v8}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v5, "/chat/thread/"

    if-eqz p1, :cond_5

    if-ne v10, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 1947
    sget-object v3, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    :goto_2
    invoke-static {p0, v3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    const-string v4, "DoNotDisturb"

    .line 1948
    invoke-virtual {v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1949
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/member/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/alert"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1951
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "alertOption"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    goto :goto_4

    .line 1953
    :cond_5
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const-string v4, "/unpin"

    goto :goto_3

    :cond_6
    const-string v4, "/pin"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :goto_4
    const-string v3, "api"

    .line 1956
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 1957
    new-instance v4, Lcom/narvii/chat/detail/ThreadDetailFragment$11;

    const-class v7, Lcom/narvii/model/api/ApiResponse;

    move-object v5, v4

    move-object v6, p0

    move v9, p1

    move v11, v2

    invoke-direct/range {v5 .. v11}, Lcom/narvii/chat/detail/ThreadDetailFragment$11;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZIZ)V

    invoke-virtual {v3, v1, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public switchProperties(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1744
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->switchProperties(IZ)V

    return-void
.end method

.method public switchProperties(IZ)V
    .locals 12

    .line 1749
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "/chat/thread/"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_3

    .line 1757
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isViewOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1758
    sget-object v1, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v5, "ViewOnly"

    .line 1759
    invoke-virtual {v1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1761
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1762
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1763
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v0, "/view-only/disable"

    goto :goto_1

    :cond_2
    const-string v0, "/view-only/enable"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1765
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    goto/16 :goto_9

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 1767
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isEnableProps()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1768
    sget-object v1, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_2
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v5, "EnableProps"

    .line 1769
    invoke-virtual {v1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 1770
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1771
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1772
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1773
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string v0, "/tipping-perm-status/disable"

    goto :goto_3

    :cond_5
    const-string v0, "/tipping-perm-status/enable"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1774
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    goto/16 :goto_9

    :cond_6
    const/4 v5, 0x3

    const-string v6, "extensions"

    const-string v7, "fansOnly"

    const-string v8, "publishToGlobal"

    if-ne p1, v5, :cond_b

    .line 1777
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result v1

    .line 1778
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadDetailFragment;->isMeInfluencer()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v1, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz p2, :cond_8

    if-eqz v5, :cond_8

    .line 1780
    invoke-direct {p0, v3}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showPtgAndFansOnlyConflictDialog(Z)V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 1783
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_5
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v9, "PublishToGlobal"

    .line 1784
    invoke-virtual {p2, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 1785
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1787
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    xor-int/lit8 v2, v1, 0x1

    .line 1788
    invoke-virtual {v0, v8, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v5, :cond_a

    .line 1790
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 1791
    invoke-virtual {v2, v7, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1792
    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1794
    :cond_a
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1795
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1796
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1797
    invoke-virtual {v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1798
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1799
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    :goto_6
    move v10, v5

    move v11, v1

    move-object v1, p2

    move p2, v11

    goto/16 :goto_a

    :cond_b
    const/4 v5, 0x4

    if-ne p1, v5, :cond_10

    .line 1801
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v1

    .line 1802
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v1, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    if-eqz p2, :cond_d

    .line 1803
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isPublishToGlobal()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez v1, :cond_d

    .line 1804
    invoke-direct {p0, v4}, Lcom/narvii/chat/detail/ThreadDetailFragment;->showPtgAndFansOnlyConflictDialog(Z)V

    return-void

    :cond_d
    if-eqz v1, :cond_e

    .line 1807
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOff:Lcom/narvii/logging/ActSemantic;

    goto :goto_8

    :cond_e
    sget-object p2, Lcom/narvii/logging/ActSemantic;->turnOn:Lcom/narvii/logging/ActSemantic;

    :goto_8
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v9, "FansOnly"

    .line 1808
    invoke-virtual {p2, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 1809
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1811
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 1812
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    xor-int/lit8 v9, v1, 0x1

    .line 1813
    invoke-virtual {v2, v7, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1814
    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v5, :cond_f

    .line 1816
    invoke-virtual {v0, v8, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1818
    :cond_f
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1819
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1820
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 1821
    invoke-virtual {v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1822
    invoke-virtual {p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 1823
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-nez v1, :cond_11

    return-void

    :cond_11
    xor-int/lit8 v9, p2, 0x1

    .line 1830
    new-instance v7, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v7, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "api"

    .line 1831
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 1832
    invoke-virtual {v7}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 1833
    new-instance v0, Lcom/narvii/chat/detail/ThreadDetailFragment$10;

    const-class v6, Lcom/narvii/model/api/ApiResponse;

    move-object v4, v0

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/narvii/chat/detail/ThreadDetailFragment$10;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;IZZ)V

    invoke-virtual {p2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public switchUserCanInviteClicked()V
    .locals 6

    .line 1993
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "account"

    .line 1996
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 1997
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 2000
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->canMemberInvite()Z

    move-result v1

    .line 2002
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2003
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 2005
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/chat/thread/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/members-can-invite/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v0, "disable"

    goto :goto_0

    :cond_2
    const-string v0, "enable"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v3, "api"

    .line 2006
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 2007
    new-instance v4, Lcom/narvii/chat/detail/ThreadDetailFragment$12;

    const-class v5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v4, p0, v5, v2, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment$12;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    invoke-virtual {v3, v0, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public transOrganizer()V
    .locals 4

    const-string v0, "rtc"

    .line 2045
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 2046
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 2047
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2048
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2051
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f075e

    .line 2053
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v2, 0x7f0f10e5

    .line 2054
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f0193

    const/4 v3, 0x0

    .line 2055
    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f02ee

    .line 2056
    new-instance v3, Lcom/narvii/chat/detail/ThreadDetailFragment$13;

    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/detail/ThreadDetailFragment$13;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2064
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 2069
    :cond_0
    const-class v0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2070
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 2115
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2116
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public userOptions(Lcom/narvii/model/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1461
    :cond_2
    new-instance v1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1462
    new-instance v2, Lcom/narvii/chat/detail/ThreadDetailFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$5;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Lcom/narvii/model/User;)V

    const-string v3, "Chat Thread More Info"

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return-void
.end method
