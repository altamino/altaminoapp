.class final Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatHelper.kt\ncom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1\n*L\n1#1,617:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;

    iget-object p1, p1, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper$requestToBePresenter$2$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
