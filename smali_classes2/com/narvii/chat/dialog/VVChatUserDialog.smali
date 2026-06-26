.class public final Lcom/narvii/chat/dialog/VVChatUserDialog;
.super Lcom/narvii/onlinestatus/UserDialog;
.source "VVChatUserDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;,
        Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatUserDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatUserDialog.kt\ncom/narvii/chat/dialog/VVChatUserDialog\n*L\n1#1,459:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final account$delegate:Lkotlin/Lazy;

.field private channelType:I

.field private final chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private final config$delegate:Lkotlin/Lazy;

.field private curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field private curUserIsGuest:Z

.field private final flagView$delegate:Lkotlin/Lazy;

.field private final leaveCurChat$delegate:Lkotlin/Lazy;

.field private final leaveCurChatContainer$delegate:Lkotlin/Lazy;

.field private final listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

.field private muteVideoWhenBlockUser:Z

.field private needVideoFrameWhenFlag:Z

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private final onHoldContainer$delegate:Lkotlin/Lazy;

.field private final rtc$delegate:Lkotlin/Lazy;

.field private final runnable:Ljava/lang/Runnable;

.field private final speakerActionView$delegate:Lkotlin/Lazy;

.field private final startChatView$delegate:Lkotlin/Lazy;

.field private threadId:Ljava/lang/String;

.field private vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

.field private final vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "account"

    const-string v4, "getAccount()Lcom/narvii/account/AccountService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "rtc"

    const-string v4, "getRtc()Lcom/narvii/chat/rtc/RtcService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "config"

    const-string v4, "getConfig()Lcom/narvii/config/ConfigService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "leaveCurChatContainer"

    const-string v4, "getLeaveCurChatContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "leaveCurChat"

    const-string v4, "getLeaveCurChat()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "speakerActionView"

    const-string v4, "getSpeakerActionView()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onHoldContainer"

    const-string v4, "getOnHoldContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "flagView"

    const-string v4, "getFlagView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/dialog/VVChatUserDialog;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "startChatView"

    const-string v4, "getStartChatView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 65
    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 66
    iput-object p2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
    .locals 3

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 37
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    .line 44
    iput-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    .line 47
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 48
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 52
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$account$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$account$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->account$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->rtc$delegate:Lkotlin/Lazy;

    .line 54
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$config$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$config$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->config$delegate:Lkotlin/Lazy;

    const v0, 0x7f090651

    .line 56
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChatContainer$delegate:Lkotlin/Lazy;

    const v0, 0x7f090650

    .line 57
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChat$delegate:Lkotlin/Lazy;

    const v0, 0x7f090a70

    .line 58
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->speakerActionView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0907ac

    .line 59
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->onHoldContainer$delegate:Lkotlin/Lazy;

    const v0, 0x7f090478

    .line 60
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->flagView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0907bf

    .line 61
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->startChatView$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$runnable$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$runnable$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$listener$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    iput-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-void
.end method

.method public static final synthetic access$getChannelType$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    return p0
.end method

.method public static final synthetic access$getChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method public static final synthetic access$getClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-object p0
.end method

.method public static final synthetic access$getCurUserIsGuest$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsGuest:Z

    return p0
.end method

.method public static final synthetic access$getMuteVideoWhenBlockUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    return p0
.end method

.method public static final synthetic access$getNeedVideoFrameWhenFlag$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    return p0
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getThreadId$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/model/User;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method public static final synthetic access$getVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;)Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-object p0
.end method

.method public static final synthetic access$isThreadFansOnly(Lcom/narvii/chat/dialog/VVChatUserDialog;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isThreadFansOnly()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$leaveChat(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveChat()V

    return-void
.end method

.method public static final synthetic access$sendRemoveAsSpeakerRequest(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveAsSpeakerRequest()V

    return-void
.end method

.method public static final synthetic access$sendRemoveUserRequest(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest(Z)V

    return-void
.end method

.method public static final synthetic access$setChannelType$p(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    return-void
.end method

.method public static final synthetic access$setChatThread$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public static final synthetic access$setClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-void
.end method

.method public static final synthetic access$setCurUserIsGuest$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsGuest:Z

    return-void
.end method

.method public static final synthetic access$setMuteVideoWhenBlockUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    return-void
.end method

.method public static final synthetic access$setNeedVideoFrameWhenFlag$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    return-void
.end method

.method public static final synthetic access$setThreadId$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->threadId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUser$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public static final synthetic access$setVvProfileClickListener$p(Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method

.method public static final synthetic access$showLeaveChatConfirmDialog(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog()V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 407
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/dialog/VVChatUserDialog$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$bind$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final curUserIsCoHost()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final curUserIsHost()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final curUserIsHostOrCoHost()Z
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final curUserIsSpeaker()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSpeaker(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    return v0
.end method

.method private final curUserIsVideoPlayer()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isVideoPlayer(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isScreenRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getFlagView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->flagView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getLeaveCurChat()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChat$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getLeaveCurChatContainer()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->leaveCurChatContainer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getOnHoldContainer()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->onHoldContainer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getSpeakerActionView()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->speakerActionView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getStartChatView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->startChatView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUserId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->getUser(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final hasAccessRemove()Z
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHostOrCoHost()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final hostVisible()Z
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final inviteAsSpeaker()V
    .locals 3

    .line 285
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 286
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$inviteAsSpeaker$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$inviteAsSpeaker$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->inviteAsSpeaker(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private final isCoHost()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isCurator()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isGroupChat()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isHost()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isMyself()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isMyself(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final isOpenChat()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isPublicChat()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isScreenRoom()Z
    .locals 2

    .line 167
    iget v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSingleChat()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isSpeaker()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isSpeaker(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method private final isThreadFansOnly()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final leaveChat()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveRequest()V

    return-void
.end method

.method private final quitAsSpeaker()V
    .locals 7

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->vvchatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    iget v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v3, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter$default(Lcom/narvii/chat/video/utils/VVChatHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;ILjava/lang/Object;)V

    return-void
.end method

.method private final removeAsSpeaker()V
    .locals 1

    .line 294
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$removeAsSpeaker$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$removeAsSpeaker$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private final removeFromChat()V
    .locals 1

    .line 304
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendRemoveUserRequest(Z)V

    goto :goto_1

    .line 305
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/chat/dialog/VVChatUserDialog$removeFromChat$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$removeFromChat$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-direct {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveUserConfirmDialog(Lcom/narvii/util/Callback;)V

    :goto_1
    return-void
.end method

.method private final sendLeaveChatRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 3

    .line 354
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 355
    new-instance v1, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$sendLeaveChatRequest$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendLeaveThreadRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private final sendLeaveRequest()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->sendLeaveChatRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final sendRemoveAsSpeakerRequest()V
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getRtc()Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->removeAsSpeaker(Ljava/lang/String;)V

    return-void
.end method

.method private final sendRemoveUserRequest(Z)V
    .locals 4

    .line 338
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 339
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v2}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$sendRemoveUserRequest$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$sendRemoveUserRequest$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->sendDeleteUserRequest(Ljava/lang/String;ZZLcom/narvii/util/Callback;)V

    return-void
.end method

.method private final showInviteAsSpeaker()Z
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsSpeaker()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final showLeave()Z
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsGuest:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isGuest(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isOpenChat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hasAccessRemove()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final showLeaveChatConfirmDialog()V
    .locals 8

    .line 314
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v1

    const/high16 v2, -0x10000

    const-wide v3, 0xffbbbbbbL

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSingleChat()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f0193

    long-to-int v4, v3

    .line 318
    invoke-virtual {v0, v1, v5, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f0348

    .line 319
    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$1;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f034f

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    move-result v1

    const v6, 0x7f0f119f

    const v7, 0x7f0f0c29

    if-eqz v1, :cond_1

    long-to-int v1, v3

    .line 323
    invoke-virtual {v0, v7, v5, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 324
    new-instance v1, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, v6, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0ada

    goto :goto_0

    :cond_1
    long-to-int v1, v3

    .line 328
    invoke-virtual {v0, v7, v5, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 329
    new-instance v1, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$showLeaveChatConfirmDialog$$inlined$apply$lambda$3;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {v0, v6, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f0ad2

    .line 333
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 334
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private final showOnHold()Z
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hostVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final showQuitAsSpeaker()Z
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final showQuitAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0f0e63

    if-eqz v1, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const v3, 0x7f0f0e62

    .line 395
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0c29

    const-wide v3, 0xffbbbbbbL

    long-to-int v4, v3

    .line 396
    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 397
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$showQuitAsSpeakerConfirmDialog$$inlined$apply$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$showQuitAsSpeakerConfirmDialog$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 401
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private final showRemoveAsSpeaker()Z
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isSingleChat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->hostVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final showRemoveAsSpeakerConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0f0eba

    if-eqz v1, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCoHost()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/narvii/chat/util/ChatHelper;->isSpeakerHasOtherOriganizer(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const v3, 0x7f0f0eb9

    .line 376
    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0c29

    const-wide v3, 0xffbbbbbbL

    long-to-int v4, v3

    .line 377
    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 378
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveAsSpeakerConfirmDialog$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/dialog/VVChatUserDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 382
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private final showRemoveUserConfirmDialog(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 348
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsHost()Z

    move-result v1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->curUserIsVideoPlayer()Z

    move-result v2

    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveUserConfirmDialog$1;

    invoke-direct {v3, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$showRemoveUserConfirmDialog$1;-><init>(Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->showRemoveFromChatConfirmDialog(ZZLcom/narvii/util/Callback;)V

    return-void
.end method

.method private final showSpeakerView()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 257
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->account$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->config$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method public final getListener()Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->listener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-object v0
.end method

.method public final getRtc()Lcom/narvii/chat/rtc/RtcService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->rtc$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/dialog/VVChatUserDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    return-object v0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final isInvite(Lcom/narvii/model/User;)Z
    .locals 2

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->isInvitedAsSpeaker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06e9

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 202
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const v1, 0x7f090650

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 208
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "LeaveChat"

    .line 209
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 210
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isPublicChat()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isGroupChat()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isHost()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 211
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f10e6

    .line 212
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v1, 0x7f0f10e3

    .line 213
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 214
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 215
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setDismissByClickOutside()V

    const v1, 0x7f0f10de

    .line 216
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;

    invoke-direct {v2, p1, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    invoke-virtual {p1, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0363

    .line 228
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$2;

    invoke-direct {v2, p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$onClick$$inlined$apply$lambda$2;-><init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V

    const/high16 v3, -0x10000

    invoke-virtual {p1, v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v1, 0x7f0f0193

    .line 229
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 230
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 232
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeaveChatConfirmDialog()V

    goto :goto_1

    :cond_5
    const-string p1, "RemoveFromChat"

    .line 235
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 236
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeFromChat()V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->dismiss()V

    goto :goto_4

    :cond_6
    :goto_2
    const v0, 0x7f090a70

    if-nez p1, :cond_7

    goto :goto_4

    .line 240
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_b

    .line 241
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "QuitAsSpeaker"

    .line 242
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 243
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->quitAsSpeaker()V

    goto :goto_3

    .line 244
    :cond_8
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "InviteAsSpeaker"

    .line 245
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 246
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->inviteAsSpeaker()V

    goto :goto_3

    .line 247
    :cond_9
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "RemoveAsSpeaker"

    .line 248
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 249
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->removeAsSpeaker()V

    .line 251
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->dismiss()V

    :cond_b
    :goto_4
    return-void
.end method

.method public onFlagClicked(Lcom/narvii/app/NVContext;)V
    .locals 10

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_1

    .line 264
    new-instance v1, Lcom/narvii/chat/ChannelFlagHelper;

    invoke-direct {v1, p1}, Lcom/narvii/chat/ChannelFlagHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 265
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getConfig()Lcom/narvii/config/ConfigService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    .line 266
    iget-object v3, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 267
    iget v4, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->channelType:I

    .line 268
    iget-object v5, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->threadId:Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->curChannelUser:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    move v6, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 270
    :goto_0
    iget-boolean v7, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->needVideoFrameWhenFlag:Z

    const/4 v8, 0x1

    .line 272
    iget-boolean v9, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->muteVideoWhenBlockUser:Z

    .line 265
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/chat/ChannelFlagHelper;->flagUserInChannel(ILcom/narvii/model/User;ILjava/lang/String;IZZZ)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    return-void
.end method

.method protected updateViews()V
    .locals 6

    .line 100
    invoke-super {p0}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    .line 102
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isScreenRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Screening Room"

    goto :goto_0

    :cond_0
    const-string v0, "VV Chat"

    :goto_0
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getOnHoldContainer()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showOnHold()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 105
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getFlagView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 106
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getStartChatView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChatContainer()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showLeave()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 108
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isMyself()Z

    move-result v0

    const v1, -0xb5b5b6

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0f0adc

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 110
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0f0ec0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getLeaveCurChat()Landroid/widget/TextView;

    move-result-object v0

    const v4, -0x15edee

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :goto_2
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showSpeakerView()Z

    move-result v4

    invoke-static {v0, v4, v2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;ZZ)V

    .line 117
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showQuitAsSpeaker()Z

    move-result v0

    const v4, 0x7f080758

    if-eqz v0, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0f0e61

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showRemoveAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0f0eb8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 127
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->showInviteAsSpeaker()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    const-string/jumbo v5, "user"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->isInvite(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0f07ba

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 134
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f07a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const-wide v3, 0xffffffffL

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080757

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    invoke-direct {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog;->getSpeakerActionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    :goto_3
    return-void
.end method
