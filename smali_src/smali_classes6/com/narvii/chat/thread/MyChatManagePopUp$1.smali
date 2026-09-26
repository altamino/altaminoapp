.class Lcom/narvii/chat/thread/MyChatManagePopUp$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp$1;->this$0:Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatManagePopUp;->onClickInbound()V

    .line 13
    return-void
.end method
