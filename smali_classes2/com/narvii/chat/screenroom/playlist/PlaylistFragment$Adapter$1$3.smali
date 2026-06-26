.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

.field final synthetic val$doneButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;Landroid/widget/TextView;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->val$doneButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 918
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 919
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->val$doneButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 921
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->this$2:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;->val$doneButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->disableView(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method
