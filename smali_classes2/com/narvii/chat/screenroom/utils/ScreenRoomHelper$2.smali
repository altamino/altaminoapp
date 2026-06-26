.class Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;
.super Ljava/lang/Object;
.source "ScreenRoomHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;->showPromoteToPresenterDialog(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

.field final synthetic val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$2;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
