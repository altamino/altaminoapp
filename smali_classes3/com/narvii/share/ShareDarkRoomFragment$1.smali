.class Lcom/narvii/share/ShareDarkRoomFragment$1;
.super Ljava/lang/Object;
.source "ShareDarkRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/share/ShareDarkRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic this$0:Lcom/narvii/share/ShareDarkRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareDarkRoomFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    iget-object v0, v0, Lcom/narvii/share/ShareDarkRoomFragment;->sharePayload:Lcom/narvii/share/SharePayload;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    invoke-static {v0}, Lcom/narvii/share/ShareDarkRoomFragment;->access$000(Lcom/narvii/share/ShareDarkRoomFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomFragment;->getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/ShareDarkRoomFragment;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 156
    iget v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->c:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0xc8

    .line 157
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    iget-object v1, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    iget-object v2, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    iget-object v0, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    return-void
.end method
