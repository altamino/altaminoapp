.class public Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;
.super Lcom/narvii/app/NVFragment;
.source "SROverlayMainFragment.java"

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

    .line 45
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    .line 95
    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->viewImageListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->isKeyboardVisible:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->isKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->ignoreTouchEvent:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->ignoreTouchEvent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/video/overlay/AvChatMessageListView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    return-object p0
.end method

.method private getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "threadId"

    .line 228
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 77
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 78
    instance-of v0, p1, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatList"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatListFragment;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListFragment:Lcom/narvii/chat/ChatListFragment;

    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "chatInput"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListFragment:Lcom/narvii/chat/ChatListFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "sr"

    const-string v0, "can not find chat list or chat input"

    .line 85
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatInputFragment:Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p1, p0}, Lcom/narvii/chat/input/ChatInputFragment;->addPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    :cond_3
    const-string p1, "chat"

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 92
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/core/ChatService;->addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0639

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 205
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->addNewMessage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 233
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    if-eqz v0, :cond_0

    .line 235
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->addNewMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public onPanelHide()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onPanelShow()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

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

    .line 142
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0901ff

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 144
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->viewImageListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    invoke-virtual {p2, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->setItemClickListener(Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    .line 147
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43040000    # 132.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    .line 150
    iget v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V

    invoke-static {p2, v0}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 160
    iget-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatRecycleView:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    new-instance v0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
