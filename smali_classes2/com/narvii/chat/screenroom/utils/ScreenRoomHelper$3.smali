.class Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;
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

.field final synthetic val$posiviteCallback:Lcom/narvii/util/Callback;

.field final synthetic val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;->this$0:Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    iput-object p3, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;->val$posiviteCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;->val$strangerNoteDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 128
    iget-object p1, p0, Lcom/narvii/chat/screenroom/utils/ScreenRoomHelper$3;->val$posiviteCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 129
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
