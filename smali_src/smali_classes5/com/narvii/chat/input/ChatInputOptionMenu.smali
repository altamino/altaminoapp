.class public Lcom/narvii/chat/input/ChatInputOptionMenu;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;,
        Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;
    }
.end annotation


# static fields
.field public static final MENU_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private gridView:Landroid/widget/GridLayout;

.field private nvcontext:Lcom/narvii/app/NVContext;

.field private optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

.field private rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private thread:Lcom/narvii/model/ChatThread;

.field private threadId:Ljava/lang/String;

.field private toggleView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu;->MENU_ALL:Ljava/util/List;

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/input/ChatInputOptionMenu;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private report()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v3, 0x3

    .line 23
    .line 24
    new-array v3, v3, [I

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v5, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 30
    const/4 v6, 0x5

    .line 31
    .line 32
    if-ne v5, v6, :cond_0

    .line 33
    .line 34
    .line 35
    const v5, 0x7f1207a6

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 39
    .line 40
    aput v5, v3, v4

    .line 41
    const/4 v5, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v5, v4

    .line 44
    .line 45
    .line 46
    :goto_0
    const v6, 0x7f120770

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v6, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 50
    .line 51
    aput v6, v3, v5

    .line 52
    .line 53
    new-instance v4, Lcom/narvii/chat/input/ChatInputOptionMenu$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, p0, v3, v1, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu$1;-><init>(Lcom/narvii/chat/input/ChatInputOptionMenu;[ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 63
    return-void
.end method


# virtual methods
.method public bindToggleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->toggleView:Landroid/view/View;

    return-void
.end method

.method public getMenuTypeList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getThread()Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    :cond_2
    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 63
    .line 64
    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    :cond_4
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_5
    return-object v3
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$2;->$SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem:[I

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result p1

    .line 18
    .line 19
    aget p1, v0, p1

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    const/4 v0, 0x2

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    const/4 v0, 0x3

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    const-string p1, "Report"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->report()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    const-string p1, "Speaker"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;->toggleSpeaker()V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    const-string p1, "Permission"

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;->doSettings()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    .line 79
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a029f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/GridLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v1, "callScreen"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    const-string v1, "rtc"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    const-string v1, "screenRoom"

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    const-string v1, "account"

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->accountService:Lcom/narvii/account/AccountService;

    .line 73
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x2

    .line 5
    .line 6
    new-array p2, p1, [I

    .line 7
    .line 8
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->toggleView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12
    .line 13
    new-array p3, p1, [I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    const/4 p4, 0x0

    .line 18
    .line 19
    aget p2, p2, p4

    .line 20
    .line 21
    aget p3, p3, p4

    .line 22
    sub-int/2addr p2, p3

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->toggleView:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 28
    move-result p3

    .line 29
    div-int/2addr p3, p1

    .line 30
    add-int/2addr p2, p3

    .line 31
    .line 32
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    move-result p3

    .line 37
    div-int/2addr p3, p1

    .line 38
    .line 39
    sub-int p3, p2, p3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 43
    move-result p4

    .line 44
    .line 45
    if-ge p3, p4, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    move-result p3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 56
    move-result p4

    .line 57
    add-int/2addr p4, p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    move-result p5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 65
    move-result v0

    .line 66
    sub-int/2addr p5, v0

    .line 67
    .line 68
    if-le p4, p5, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 72
    move-result p3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 76
    move-result p4

    .line 77
    sub-int/2addr p3, p4

    .line 78
    .line 79
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    move-result p4

    .line 84
    sub-int/2addr p3, p4

    .line 85
    .line 86
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 90
    move-result p5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    move-result v0

    .line 97
    add-int/2addr v0, p3

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 103
    move-result v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 107
    .line 108
    .line 109
    const p3, 0x7f0a0144

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 117
    move-result p4

    .line 118
    div-int/2addr p4, p1

    .line 119
    sub-int/2addr p2, p4

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 123
    move-result p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    move-result p4

    .line 128
    add-int/2addr p4, p2

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 132
    move-result p5

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 136
    return-void
.end method

.method public setOnOptionMenuClickListener(Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "chat input right view thread is null"

    .line 1
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getMenuTypeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isSpeakerMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v4}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 7
    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v4}, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 8
    :cond_3
    sget-object v4, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/narvii/chat/input/ChatInputOptionMenu;->show(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public show(Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 12
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 13
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 15
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 16
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    const/4 v3, 0x4

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move v3, v0

    .line 20
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 21
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v3, :cond_2

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    const v4, 0x7f0d00d4

    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 22
    invoke-virtual {v2, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 23
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const v6, 0x7f0a06d5

    .line 25
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->a(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f0a0e9e

    .line 26
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->b(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 27
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f060442

    if-eqz v8, :cond_5

    .line 28
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 29
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v6, v8}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 30
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v8, :cond_4

    const v9, 0x7f060440

    :cond_4
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 32
    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 35
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method
