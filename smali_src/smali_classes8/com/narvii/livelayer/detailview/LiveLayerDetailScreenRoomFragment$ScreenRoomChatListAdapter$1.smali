.class Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;

.field final synthetic val$playing:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->val$playing:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->val$playing:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method
