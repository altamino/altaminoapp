.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->s(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
