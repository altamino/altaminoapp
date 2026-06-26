.class final Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VVChatUserDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/dialog/VVChatUserDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/chat/rtc/RtcService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/dialog/VVChatUserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/chat/rtc/RtcService;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;->this$0:Lcom/narvii/chat/dialog/VVChatUserDialog;

    const-string v1, "rtc"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVDialog;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/narvii/chat/dialog/VVChatUserDialog$rtc$2;->invoke()Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    return-object v0
.end method
