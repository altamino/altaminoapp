.class Lcom/narvii/share/ShareDarkRoomFragment$2;
.super Ljava/lang/Object;
.source "ShareDarkRoomFragment.java"

# interfaces
.implements Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/share/ShareDarkRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareDarkRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareDarkRoomFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment$2;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Lcom/narvii/share/SharePayload;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$2;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    iget-object v0, v0, Lcom/narvii/share/ShareDarkRoomFragment;->sharePayload:Lcom/narvii/share/SharePayload;

    return-object v0
.end method

.method public onFinishShare(Lcom/narvii/share/SharePayload;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPreShare(Lcom/narvii/share/SharePayload;Ljava/lang/Object;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment$2;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    invoke-virtual {p1}, Lcom/narvii/share/ShareDarkRoomFragment;->preCheck()V

    return-void
.end method
