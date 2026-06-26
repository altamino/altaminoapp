.class Lcom/narvii/chat/rtc/RtcService$13;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$callback:Lcom/narvii/video/model/ChannelActionCallback;

.field final synthetic val$ndcId:I

.field final synthetic val$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$13;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$threadId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    iput-object p5, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1098
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$13;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$threadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->access$1500(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 1099
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$13;->val$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
