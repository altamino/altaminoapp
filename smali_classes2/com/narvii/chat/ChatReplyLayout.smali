.class public final Lcom/narvii/chat/ChatReplyLayout;
.super Landroid/widget/LinearLayout;
.source "ChatReplyLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatReplyLayout$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatReplyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatReplyLayout.kt\ncom/narvii/chat/ChatReplyLayout\n*L\n1#1,133:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final content$delegate:Lkotlin/Lazy;

.field private final delete$delegate:Lkotlin/Lazy;

.field private final deleteLayout$delegate:Lkotlin/Lazy;

.field private final divideLine$delegate:Lkotlin/Lazy;

.field private onChatReplyClickListener:Lcom/narvii/chat/ChatReplyLayout$OnClickListener;

.field private replayMessage:Lcom/narvii/model/ChatMessage;

.field private final title$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatReplyLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "divideLine"

    const-string v4, "getDivideLine()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatReplyLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "title"

    const-string v4, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatReplyLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "content"

    const-string v4, "getContent()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatReplyLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "delete"

    const-string v4, "getDelete()Lcom/narvii/widget/TintButton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/ChatReplyLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "deleteLayout"

    const-string v4, "getDeleteLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/ChatReplyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/ChatReplyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f090365

    .line 24
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatReplyLayout;->divideLine$delegate:Lkotlin/Lazy;

    const p2, 0x7f090b9a

    .line 25
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatReplyLayout;->title$delegate:Lkotlin/Lazy;

    const p2, 0x7f0902d0

    .line 26
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatReplyLayout;->content$delegate:Lkotlin/Lazy;

    const p2, 0x7f09033c

    .line 27
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatReplyLayout;->delete$delegate:Lkotlin/Lazy;

    const p2, 0x7f090340

    .line 28
    invoke-direct {p0, p2}, Lcom/narvii/chat/ChatReplyLayout;->bind(I)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatReplyLayout;->deleteLayout$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0481

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getDelete()Lcom/narvii/widget/TintButton;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/ChatReplyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 106
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/ChatReplyLayout$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/ChatReplyLayout$bind$1;-><init>(Lcom/narvii/chat/ChatReplyLayout;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getContent(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 5

    .line 72
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDelete(Lcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0229

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.chat_not_existed)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDisable(Lcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f01e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.chat_disabled_message2)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 78
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const-string v0, "m.content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 81
    :cond_2
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 82
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VoiceMessageUtils.getVoi\u2026mary(context, m.duration)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 85
    iget-object v0, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f1022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_7
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x64

    const-string v3, "]"

    const-string v4, "["

    if-ne v0, v2, :cond_8

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d9b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 90
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_9

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v0, 0x67

    if-eq p1, v0, :cond_b

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f114f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_9
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 90
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 95
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0223

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final isMessageDelete(Lcom/narvii/model/ChatMessage;)Z
    .locals 1

    .line 64
    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final isMessageDisable(Lcom/narvii/model/ChatMessage;)Z
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic setMessage$default(Lcom/narvii/chat/ChatReplyLayout;Lcom/narvii/model/ChatMessage;IZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;IZ)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChatReplyLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getContent()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->content$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDelete()Lcom/narvii/widget/TintButton;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->delete$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    return-object v0
.end method

.method public final getDeleteLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->deleteLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getDivideLine()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->divideLine$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getOnChatReplyClickListener()Lcom/narvii/chat/ChatReplyLayout$OnClickListener;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->onChatReplyClickListener:Lcom/narvii/chat/ChatReplyLayout$OnClickListener;

    return-object v0
.end method

.method public final getReplayMessage()Lcom/narvii/model/ChatMessage;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method public final getShapeDrawable(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 99
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 100
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->title$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/ChatReplyLayout;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09033c

    if-eq v0, v1, :cond_5

    .line 115
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "QuoteArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 116
    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->onChatReplyClickListener:Lcom/narvii/chat/ChatReplyLayout$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    invoke-interface {v0, p1, v1}, Lcom/narvii/chat/ChatReplyLayout$OnClickListener;->onItemClick(Landroid/view/View;Lcom/narvii/model/ChatMessage;)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDelete(Lcom/narvii/model/ChatMessage;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDisable(Lcom/narvii/model/ChatMessage;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 119
    const-class p1, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 120
    iget-object v1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    const-string v1, "threadId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "seeAll"

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 120
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 118
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatReplyLayout;->onChatReplyClickListener:Lcom/narvii/chat/ChatReplyLayout$OnClickListener;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    invoke-interface {v0, p1, v1}, Lcom/narvii/chat/ChatReplyLayout$OnClickListener;->onCancelClick(Landroid/view/View;Lcom/narvii/model/ChatMessage;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final setMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/ChatReplyLayout;->setMessage$default(Lcom/narvii/chat/ChatReplyLayout;Lcom/narvii/model/ChatMessage;IZILjava/lang/Object;)V

    return-void
.end method

.method public final setMessage(Lcom/narvii/model/ChatMessage;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/ChatReplyLayout;->setMessage$default(Lcom/narvii/chat/ChatReplyLayout;Lcom/narvii/model/ChatMessage;IZILjava/lang/Object;)V

    return-void
.end method

.method public final setMessage(Lcom/narvii/model/ChatMessage;IZ)V
    .locals 4

    .line 41
    iput-object p1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance p2, Lkotlin/Pair;

    const-wide v0, 0xcc4a4a4aL

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x99ffffffL

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lkotlin/Pair;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getDivideLine()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getContent()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/narvii/chat/ChatReplyLayout;->getShapeDrawable(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getDeleteLayout()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p2, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    const-string p3, ""

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p3

    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDelete(Lcom/narvii/model/ChatMessage;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->isMessageDisable(Lcom/narvii/model/ChatMessage;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/16 v0, 0x8

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/narvii/chat/ChatReplyLayout;->getContent()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatReplyLayout;->getContent(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnChatReplyClickListener(Lcom/narvii/chat/ChatReplyLayout$OnClickListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/ChatReplyLayout;->onChatReplyClickListener:Lcom/narvii/chat/ChatReplyLayout$OnClickListener;

    return-void
.end method

.method public final setReplayMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/chat/ChatReplyLayout;->replayMessage:Lcom/narvii/model/ChatMessage;

    return-void
.end method
