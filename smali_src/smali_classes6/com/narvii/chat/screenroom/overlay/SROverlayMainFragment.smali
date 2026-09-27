.class public Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# static fields
.field public static final CHAT_MESSAGE_CONTENT_LENGTH_LIMIT:I = 0x5a

.field private static final VIEWIMAGE:I = 0x3


# instance fields
.field private chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

.field private chatListFragment:Lcom/narvii/chat/ChatListFragment;

.field chatListMarginEnd:I

.field private chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private ignoreTouchEvent:Z

.field private isKeyboardVisible:Z

.field keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field runnable:Ljava/lang/Runnable;

.field viewImageListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->viewImageListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    .line 21
    return-void
.end method

.method private getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "threadId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static bridge synthetic n(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/video/overlay/AvChatMessageListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->ignoreTouchEvent:Z

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->isKeyboardVisible:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->ignoreTouchEvent:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->isKeyboardVisible:Z

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    instance-of v0, p1, Lcom/narvii/chat/ChatFragment;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "chatList"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/chat/ChatListFragment;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListFragment:Lcom/narvii/chat/ChatListFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "chatInput"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListFragment:Lcom/narvii/chat/ChatListFragment;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    :cond_1
    const-string p1, "sr"

    .line 64
    .line 65
    const-string v0, "can not find chat list or chat input"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment;->addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    .line 76
    .line 77
    :cond_3
    const-string p1, "chat"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/core/ChatService;->addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d06f1

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

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 20
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 1
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param


    iget-object v0, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_sr_go

    iget-boolean v0, v0, Lcom/narvii/model/ChatMessage;->isEdited:Z

    if-eqz v0, :cond_sr_go

    return-void

    :cond_sr_go
    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->addNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 8
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "new"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/model/ChatMessage;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->addNewMessage(Lcom/narvii/model/ChatMessage;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onPanelHide()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
.end method

.method public onPanelShow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a02b6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->viewImageListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->setItemClickListener(Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 27
    move-result p2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    const v2, 0x7f07055a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v1

    .line 45
    .line 46
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    const v2, 0x7f0704cc

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    const/high16 v3, 0x43040000    # 132.0f

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 71
    move-result v2

    .line 72
    add-int/2addr v1, v2

    .line 73
    .line 74
    iput v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    .line 75
    sub-int/2addr p2, v1

    .line 76
    .line 77
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    .line 79
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v0}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 98
    .line 99
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 100
    .line 101
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    return-void
.end method
