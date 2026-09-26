.class Lcom/narvii/share/ShareDarkRoomFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/share/ShareDarkRoomFragment;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Lcom/narvii/share/ShareDarkRoomFragment;->n(Lcom/narvii/share/ShareDarkRoomFragment;)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomFragment;->getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iput-object v1, v0, Lcom/narvii/share/ShareDarkRoomFragment;->sharePayload:Lcom/narvii/share/SharePayload;

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->c:I

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x1

    .line 25
    .line 26
    iput v1, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->c:I

    .line 27
    const/4 v1, 0x4

    .line 28
    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    const-wide/16 v0, 0xc8

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment$1;->this$0:Lcom/narvii/share/ShareDarkRoomFragment;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    .line 46
    return-void
.end method
