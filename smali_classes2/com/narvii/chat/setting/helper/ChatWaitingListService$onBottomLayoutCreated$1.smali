.class final Lcom/narvii/chat/setting/helper/ChatWaitingListService$onBottomLayoutCreated$1;
.super Ljava/lang/Object;
.source "ChatWaitingListService.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/helper/ChatWaitingListService;->onBottomLayoutCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/helper/ChatWaitingListService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService$onBottomLayoutCreated$1;->this$0:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/narvii/chat/setting/helper/ChatWaitingListService$onBottomLayoutCreated$1;->this$0:Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p1}, Lcom/narvii/scene/service/BaseBottomSheetBehaviorService;->dismiss()V

    return-void
.end method
