.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

.field final synthetic val$doneButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->val$doneButton:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->val$doneButton:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->enableView(Landroid/widget/TextView;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$3;->val$doneButton:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->disableView(Landroid/widget/TextView;)V

    .line 26
    :goto_0
    return-void
.end method
