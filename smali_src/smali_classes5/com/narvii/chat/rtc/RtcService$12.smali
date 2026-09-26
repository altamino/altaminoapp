.class Lcom/narvii/chat/rtc/RtcService$12;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$ndcId:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$12;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$ndcId:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->y(Lcom/narvii/chat/rtc/RtcService;ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$12;->val$repDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 19
    :cond_0
    return-void
.end method
