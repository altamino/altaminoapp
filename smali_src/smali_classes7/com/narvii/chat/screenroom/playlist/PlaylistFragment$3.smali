.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f12104c

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    const v1, -0x444445

    .line 22
    .line 23
    .line 24
    const v2, 0x7f120d57

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;)V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f1212a7

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 42
    return-void
.end method
