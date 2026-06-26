.class public Lcom/narvii/chat/input/ChatInputOptionMenu;
.super Landroid/widget/LinearLayout;
.source "ChatInputOptionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;,
        Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu;->MENU_ALL:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu;->MENU_ALL:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu;->MENU_ALL:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu;->MENU_ALL:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/ChatInputOptionMenu;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private report()V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 231
    iget v5, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const v5, 0x7f0f06fd

    .line 232
    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    aput v5, v3, v4

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const v6, 0x7f0f06c4

    .line 235
    invoke-virtual {v2, v6, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v7, v5, 0x1

    .line 236
    aput v6, v3, v5

    const v5, 0x7f0f06dc

    .line 237
    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 238
    aput v5, v3, v7

    .line 239
    new-instance v4, Lcom/narvii/chat/input/ChatInputOptionMenu$1;

    invoke-direct {v4, p0, v3, v1, v0}, Lcom/narvii/chat/input/ChatInputOptionMenu$1;-><init>(Lcom/narvii/chat/input/ChatInputOptionMenu;[ILcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method


# virtual methods
.method public bindToggleView(Landroid/view/View;)V
    .locals 0

    .line 92
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

    .line 116
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    .line 121
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    .line 123
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 124
    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    :cond_2
    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    :cond_4
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v3
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 199
    instance-of v0, p1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$2;->$SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem:[I

    check-cast p1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Report"

    .line 216
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 217
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->report()V

    goto :goto_0

    :cond_2
    const-string p1, "Speaker"

    .line 210
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 211
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    if-eqz p1, :cond_4

    .line 212
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;->toggleSpeaker()V

    goto :goto_0

    :cond_3
    const-string p1, "Permission"

    .line 204
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 205
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    if-eqz p1, :cond_4

    .line 206
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;->doSettings()V

    .line 220
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->hide()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0901e8

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    .line 78
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    const-string v1, "callScreen"

    .line 79
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/call/CallScreenService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    const-string v1, "screenRoom"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->nvcontext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->accountService:Lcom/narvii/account/AccountService;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 282
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 285
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->toggleView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    new-array p3, p1, [I

    .line 288
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    const/4 p4, 0x0

    .line 290
    aget p2, p2, p4

    aget p3, p3, p4

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->toggleView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p1

    add-int/2addr p2, p3

    .line 292
    iget-object p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {p3}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result p3

    div-int/2addr p3, p1

    sub-int p3, p2, p3

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    goto :goto_0

    .line 295
    :cond_0
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {p4}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    if-le p4, p5, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {p4}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    .line 298
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {p4}, Landroid/widget/GridLayout;->getTop()I

    move-result p5

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getBottom()I

    move-result v1

    invoke-virtual {p4, p3, p5, v0, v1}, Landroid/widget/GridLayout;->layout(IIII)V

    const p3, 0x7f0900c0

    .line 300
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 301
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    div-int/2addr p4, p1

    sub-int/2addr p2, p4

    .line 302
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public setOnOptionMenuClickListener(Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->optionMenuClickListener:Lcom/narvii/chat/input/ChatInputOptionMenu$OnOptionMenuClickListener;

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "chat input right view thread is null"

    .line 97
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputOptionMenu;->getMenuTypeList()Ljava/util/List;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isSpeakerMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 105
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 107
    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v4}, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 109
    :cond_3
    sget-object v4, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
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

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 144
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 159
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 164
    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    if-le v4, v3, :cond_2

    iget-object v4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    const v4, 0x7f0b00be

    .line 166
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v2, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 167
    iget-object v5, p0, Lcom/narvii/chat/input/ChatInputOptionMenu;->gridView:Landroid/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 170
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const v6, 0x7f090562

    .line 171
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->access$000(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f090b9a

    .line 172
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->access$100(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f0601d4

    if-eqz v8, :cond_5

    .line 174
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 175
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v6, v8}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 176
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v8, :cond_4

    const v9, 0x7f0601d2

    :cond_4
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 178
    :cond_5
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 183
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method
