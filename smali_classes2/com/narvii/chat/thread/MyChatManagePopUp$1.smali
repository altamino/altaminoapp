.class Lcom/narvii/chat/thread/MyChatManagePopUp$1;
.super Ljava/lang/Object;
.source "MyChatManagePopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatManagePopUp;-><init>(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatManagePopUp;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    iget-object p1, p1, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 43
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatManagePopUp;->onClickInbound()V

    return-void
.end method
